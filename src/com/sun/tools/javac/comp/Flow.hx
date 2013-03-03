package com.sun.tools.javac.comp;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
////todo: one might eliminate uninits.andSets when monotonic
/** This pass implements dataflow analysis for Java programs.
*  Liveness analysis checks that every statement is reachable.
*  Exception analysis ensures that every checked exception that is
*  thrown is declared or caught.  Definite assignment analysis
*  ensures that each variable is assigned when used.  Definite
*  unassignment analysis ensures that no final variable is assigned
*  more than once.
*
*  <p>The JLS has a number of problems in the
*  specification of these flow analysis problems. This implementation
*  attempts to address those issues.
*
*  <p>First, there is no accommodation for a finally clause that cannot
*  complete normally. For liveness analysis, an intervening finally
*  clause can cause a break, continue, or return not to reach its
*  target.  For exception analysis, an intervening finally clause can
*  cause any exception to be "caught".  For DA/DU analysis, the finally
*  clause can prevent a transfer of control from propagating DA/DU
*  state to the target.  In addition, code in the finally clause can
*  affect the DA/DU status of variables.
*
*  <p>For try statements, we introduce the idea of a variable being
*  definitely unassigned "everywhere" in a block.  A variable V is
*  "unassigned everywhere" in a block iff it is unassigned at the
*  beginning of the block and there is no reachable assignment to V
*  in the block.  An assignment V=e is reachable iff V is not DA
*  after e.  Then we can say that V is DU at the beginning of the
*  catch block iff V is DU everywhere in the try block.  Similarly, V
*  is DU at the beginning of the finally block iff V is DU everywhere
*  in the try block and in every catch block.  Specifically, the
*  following bullet is added to 16.2.2
*  <pre>
*      V is <em>unassigned everywhere</em> in a block if it is
*      unassigned before the block and there is no reachable
*      assignment to V within the block.
*  </pre>
*  <p>In 16.2.15, the third bullet (and all of its sub-bullets) for all
*  try blocks is changed to
*  <pre>
*      V is definitely unassigned before a catch block iff V is
*      definitely unassigned everywhere in the try block.
*  </pre>
*  <p>The last bullet (and all of its sub-bullets) for try blocks that
*  have a finally block is changed to
*  <pre>
*      V is definitely unassigned before the finally block iff
*      V is definitely unassigned everywhere in the try block
*      and everywhere in each catch block of the try statement.
*  </pre>
*  <p>In addition,
*  <pre>
*      V is definitely assigned at the end of a constructor iff
*      V is definitely assigned after the block that is the body
*      of the constructor and V is definitely assigned at every
*      return that can return from the constructor.
*  </pre>
*  <p>In addition, each continue statement with the loop as its target
*  is treated as a jump to the end of the loop body, and "intervening"
*  finally clauses are treated as follows: V is DA "due to the
*  continue" iff V is DA before the continue statement or V is DA at
*  the end of any intervening finally block.  V is DU "due to the
*  continue" iff any intervening finally cannot complete normally or V
*  is DU at the end of every intervening finally block.  This "due to
*  the continue" concept is then used in the spec for the loops.
*
*  <p>Similarly, break statements must consider intervening finally
*  blocks.  For liveness analysis, a break statement for which any
*  intervening finally cannot complete normally is not considered to
*  cause the target statement to be able to complete normally. Then
*  we say V is DA "due to the break" iff V is DA before the break or
*  V is DA at the end of any intervening finally block.  V is DU "due
*  to the break" iff any intervening finally cannot complete normally
*  or V is DU at the break and at the end of every intervening
*  finally block.  (I suspect this latter condition can be
*  simplified.)  This "due to the break" is then used in the spec for
*  all statements that can be "broken".
*
*  <p>The return statement is treated similarly.  V is DA "due to a
*  return statement" iff V is DA before the return statement or V is
*  DA at the end of any intervening finally block.  Note that we
*  don't have to worry about the return expression because this
*  concept is only used for construcrors.
*
*  <p>There is no spec in the JLS for when a variable is definitely
*  assigned at the end of a constructor, which is needed for final
*  fields (8.3.1.2).  We implement the rule that V is DA at the end
*  of the constructor iff it is DA and the end of the body of the
*  constructor and V is DA "due to" every return of the constructor.
*
*  <p>Intervening finally blocks similarly affect exception analysis.  An
*  intervening finally that cannot complete normally allows us to ignore
*  an otherwise uncaught exception.
*
*  <p>To implement the semantics of intervening finally clauses, all
*  nonlocal transfers (break, continue, return, throw, method call that
*  can throw a checked exception, and a constructor invocation that can
*  thrown a checked exception) are recorded in a queue, and removed
*  from the queue when we complete processing the target of the
*  nonlocal transfer.  This allows us to modify the queue in accordance
*  with the above rules when we encounter a finally clause.  The only
*  exception to this [no pun intended] is that checked exceptions that
*  are known to be caught or declared to be caught in the enclosing
*  method are not recorded in the queue, but instead are recorded in a
*  global variable "Set<Type> thrown" that records the type of all
*  exceptions that can be thrown.
*
*  <p>Other minor issues the treatment of members of other classes
*  (always considered DA except that within an anonymous class
*  constructor, where DA status from the enclosing scope is
*  preserved), treatment of the case expression (V is DA before the
*  case expression iff V is DA after the switch expression),
*  treatment of variables declared in a switch block (the implied
*  DA/DU status after the switch expression is DU and not DA for
*  variables defined in a switch block), the treatment of boolean ?:
*  expressions (The JLS rules only handle b and c non-boolean; the
*  new rule is that if b and c are boolean valued, then V is
*  (un)assigned after a?b:c when true/false iff V is (un)assigned
*  after b when true/false and V is (un)assigned after c when
*  true/false).
*
*  <p>There is the remaining question of what syntactic forms constitute a
*  reference to a variable.  It is conventional to allow this.x on the
*  left-hand-side to initialize a final instance field named x, yet
*  this.x isn't considered a "use" when appearing on a right-hand-side
*  in most implementations.  Should parentheses affect what is
*  considered a variable reference?  The simplest rule would be to
*  allow unqualified forms only, parentheses optional, and phase out
*  support for assigning to a final field via this.x.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Flow extends com.sun.tools.javac.tree.TreeScanner
{
	@:protected @:static @:final private static var flowKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.comp.Flow>;
	
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.comp.Flow;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/* ------------ Visitor methods for various sorts of trees -------------*/
	@:overload @:public override public function visitClassDef(tree : JCClassDecl) : Void;
	
	@:overload @:public override public function visitMethodDef(tree : JCMethodDecl) : Void;
	
	@:overload @:public override public function visitVarDef(tree : JCVariableDecl) : Void;
	
	@:overload @:public override public function visitBlock(tree : JCBlock) : Void;
	
	@:overload @:public override public function visitDoLoop(tree : JCDoWhileLoop) : Void;
	
	@:overload @:public override public function visitWhileLoop(tree : JCWhileLoop) : Void;
	
	@:overload @:public override public function visitForLoop(tree : JCForLoop) : Void;
	
	@:overload @:public override public function visitForeachLoop(tree : JCEnhancedForLoop) : Void;
	
	@:overload @:public override public function visitLabelled(tree : JCLabeledStatement) : Void;
	
	@:overload @:public override public function visitSwitch(tree : JCSwitch) : Void;
	
	@:overload @:public override public function visitTry(tree : JCTry) : Void;
	
	@:overload @:public override public function visitConditional(tree : JCConditional) : Void;
	
	@:overload @:public override public function visitIf(tree : JCIf) : Void;
	
	@:overload @:public override public function visitBreak(tree : JCBreak) : Void;
	
	@:overload @:public override public function visitContinue(tree : JCContinue) : Void;
	
	@:overload @:public override public function visitReturn(tree : JCReturn) : Void;
	
	@:overload @:public override public function visitThrow(tree : JCThrow) : Void;
	
	@:overload @:public override public function visitApply(tree : JCMethodInvocation) : Void;
	
	@:overload @:public override public function visitNewClass(tree : JCNewClass) : Void;
	
	@:overload @:public override public function visitNewArray(tree : JCNewArray) : Void;
	
	@:overload @:public override public function visitAssert(tree : JCAssert) : Void;
	
	@:overload @:public override public function visitAssign(tree : JCAssign) : Void;
	
	@:overload @:public override public function visitAssignop(tree : JCAssignOp) : Void;
	
	@:overload @:public override public function visitUnary(tree : JCUnary) : Void;
	
	@:overload @:public override public function visitBinary(tree : JCBinary) : Void;
	
	@:overload @:public override public function visitIdent(tree : JCIdent) : Void;
	
	@:overload @:public override public function visitTypeCast(tree : JCTypeCast) : Void;
	
	@:overload @:public override public function visitTopLevel(tree : JCCompilationUnit) : Void;
	
	/** Perform definite assignment/unassignment analysis on a tree.
	*/
	@:overload @:public public function analyzeTree(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, make : com.sun.tools.javac.tree.TreeMaker) : Void;
	
	
}
/** A pending exit.  These are the statements return, break, and
*  continue.  In addition, exception-throwing expressions or
*  statements are put here when not known to be caught.  This
*  will typically result in an error unless it is within a
*  try-finally whose finally block cannot complete normally.
*/
@:native('com$sun$tools$javac$comp$Flow$PendingExit') @:internal extern class Flow_PendingExit
{
	
}
