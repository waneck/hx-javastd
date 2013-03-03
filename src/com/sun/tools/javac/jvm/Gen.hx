package com.sun.tools.javac.jvm;
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
/** This pass maps flat Java (i.e. without inner classes) to bytecodes.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Gen extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor
{
	@:protected @:static @:final private static var genKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.jvm.Gen>;
	
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.jvm.Gen;
	
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** The opcode that loads a zero constant of a given type code.
	*  @param tc   The given type code (@see ByteCode).
	*/
	@:overload @:public @:static public static function zero(tc : Int) : Int;
	
	/** The opcode that loads a one constant of a given type code.
	*  @param tc   The given type code (@see ByteCode).
	*/
	@:overload @:public @:static public static function one(tc : Int) : Int;
	
	/** Visitor method: generate code for a definition, catching and reporting
	*  any completion failures.
	*  @param tree    The definition to be visited.
	*  @param env     The environment current at the definition.
	*/
	@:overload @:public public function genDef(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.jvm.Gen.Gen_GenContext>) : Void;
	
	/** Derived visitor method: check whether CharacterRangeTable
	*  should be emitted, if so, put a new entry into CRTable
	*  and call method to generate bytecode.
	*  If not, just call method to generate bytecode.
	*  @see    #genStat(Tree, Env)
	*
	*  @param  tree     The tree to be visited.
	*  @param  env      The environment to use.
	*  @param  crtFlags The CharacterRangeTable flags
	*                   indicating type of the entry.
	*/
	@:overload @:public public function genStat(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.jvm.Gen.Gen_GenContext>, crtFlags : Int) : Void;
	
	/** Derived visitor method: generate code for a statement.
	*/
	@:overload @:public public function genStat(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.jvm.Gen.Gen_GenContext>) : Void;
	
	/** Derived visitor method: check whether CharacterRangeTable
	*  should be emitted, if so, put a new entry into CRTable
	*  and call method to generate bytecode.
	*  If not, just call method to generate bytecode.
	*  @see    #genStats(List, Env)
	*
	*  @param  trees    The list of trees to be visited.
	*  @param  env      The environment to use.
	*  @param  crtFlags The CharacterRangeTable flags
	*                   indicating type of the entry.
	*/
	@:overload @:public public function genStats(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.jvm.Gen.Gen_GenContext>, crtFlags : Int) : Void;
	
	/** Derived visitor method: generate code for a list of statements.
	*/
	@:overload @:public public function genStats(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.jvm.Gen.Gen_GenContext>) : Void;
	
	/** Derived visitor method: check whether CharacterRangeTable
	*  should be emitted, if so, put a new entry into CRTable
	*  and call method to generate bytecode.
	*  If not, just call method to generate bytecode.
	*  @see    #genCond(Tree,boolean)
	*
	*  @param  tree     The tree to be visited.
	*  @param  crtFlags The CharacterRangeTable flags
	*                   indicating type of the entry.
	*/
	@:overload @:public public function genCond(tree : com.sun.tools.javac.tree.JCTree, crtFlags : Int) : CondItem;
	
	/** Derived visitor method: generate code for a boolean
	*  expression in a control-flow context.
	*  @param _tree         The expression to be visited.
	*  @param markBranches The flag to indicate that the condition is
	*                      a flow controller so produced conditions
	*                      should contain a proper tree to generate
	*                      CharacterRangeTable branches for them.
	*/
	@:overload @:public public function genCond(_tree : com.sun.tools.javac.tree.JCTree, markBranches : Bool) : CondItem;
	
	/** Visitor method: generate code for an expression, catching and reporting
	*  any completion failures.
	*  @param tree    The expression to be visited.
	*  @param pt      The expression's expected type (proto-type).
	*/
	@:overload @:public public function genExpr(tree : com.sun.tools.javac.tree.JCTree, pt : com.sun.tools.javac.code.Type) : Item;
	
	/** Derived visitor method: generate code for a list of method arguments.
	*  @param trees    The argument expressions to be visited.
	*  @param pts      The expression's expected types (i.e. the formal parameter
	*                  types of the invoked method).
	*/
	@:overload @:public public function genArgs(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, pts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Void;
	
	@:overload @:public override public function visitMethodDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload @:public override public function visitVarDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	@:overload @:public override public function visitSkip(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSkip) : Void;
	
	@:overload @:public override public function visitBlock(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload @:public override public function visitDoLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCDoWhileLoop) : Void;
	
	@:overload @:public override public function visitWhileLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWhileLoop) : Void;
	
	@:overload @:public override public function visitForLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCForLoop) : Void;
	
	@:overload @:public override public function visitForeachLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCEnhancedForLoop) : Void;
	
	@:overload @:public override public function visitLabelled(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLabeledStatement) : Void;
	
	@:overload @:public override public function visitSwitch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch) : Void;
	
	@:overload @:public override public function visitSynchronized(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSynchronized) : Void;
	
	@:overload @:public override public function visitTry(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTry) : Void;
	
	@:overload @:public override public function visitIf(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIf) : Void;
	
	@:overload @:public override public function visitExec(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement) : Void;
	
	@:overload @:public override public function visitBreak(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBreak) : Void;
	
	@:overload @:public override public function visitContinue(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCContinue) : Void;
	
	@:overload @:public override public function visitReturn(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn) : Void;
	
	@:overload @:public override public function visitThrow(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCThrow) : Void;
	
	/* ************************************************************************
	* Visitor methods for expressions
	*************************************************************************/
	@:overload @:public override public function visitApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation) : Void;
	
	@:overload @:public override public function visitConditional(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional) : Void;
	
	@:overload @:public override public function visitNewClass(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	@:overload @:public override public function visitNewArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray) : Void;
	
	@:overload @:public override public function visitParens(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCParens) : Void;
	
	@:overload @:public override public function visitAssign(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign) : Void;
	
	@:overload @:public override public function visitAssignop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp) : Void;
	
	@:overload @:public override public function visitUnary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary) : Void;
	
	@:overload @:public override public function visitBinary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary) : Void;
	
	@:overload @:public override public function visitTypeCast(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast) : Void;
	
	@:overload @:public override public function visitWildcard(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard) : Void;
	
	@:overload @:public override public function visitTypeTest(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCInstanceOf) : Void;
	
	@:overload @:public override public function visitIndexed(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess) : Void;
	
	@:overload @:public override public function visitIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	@:overload @:public override public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload @:public override public function visitLiteral(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral) : Void;
	
	@:overload @:public override public function visitLetExpr(tree : com.sun.tools.javac.tree.JCTree.JCTree_LetExpr) : Void;
	
	/** Generate code for a class definition.
	*  @param env   The attribution environment that belongs to the
	*               outermost class containing this class definition.
	*               We need this for resolving some additional symbols.
	*  @param cdef  The tree representing the class definition.
	*  @return      True if code is generated with no errors.
	*/
	@:overload @:public public function genClass(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, cdef : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Bool;
	
	
}
/** Thrown when the byte code size exceeds limit.
*/
@:native('com$sun$tools$javac$jvm$Gen$CodeSizeOverflow') extern class Gen_CodeSizeOverflow extends java.lang.RuntimeException
{
	@:overload @:public public function new() : Void;
	
	
}
/** An abstract class for finalizer generation.
*/
@:native('com$sun$tools$javac$jvm$Gen$GenFinalizer') @:internal extern class Gen_GenFinalizer
{
	
}
/** code generation contexts,
*  to be used as type parameter for environments.
*/
@:native('com$sun$tools$javac$jvm$Gen$GenContext') @:internal extern class Gen_GenContext
{
	
}
