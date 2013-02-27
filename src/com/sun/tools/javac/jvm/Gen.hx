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
	private static var genKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<Gen>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : Gen;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** The opcode that loads a zero constant of a given type code.
	*  @param tc   The given type code (@see ByteCode).
	*/
	@:overload public static function zero(tc : Int) : Int;
	
	/** The opcode that loads a one constant of a given type code.
	*  @param tc   The given type code (@see ByteCode).
	*/
	@:overload public static function one(tc : Int) : Int;
	
	/** Visitor method: generate code for a definition, catching and reporting
	*  any completion failures.
	*  @param tree    The definition to be visited.
	*  @param env     The environment current at the definition.
	*/
	@:overload public function genDef(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<Gen_GenContext>) : Void;
	
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
	@:overload public function genStat(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<Gen_GenContext>, crtFlags : Int) : Void;
	
	/** Derived visitor method: generate code for a statement.
	*/
	@:overload public function genStat(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<Gen_GenContext>) : Void;
	
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
	@:overload public function genStats(trees : com.sun.tools.javac.util.List<JCStatement>, env : com.sun.tools.javac.comp.Env<Gen_GenContext>, crtFlags : Int) : Void;
	
	/** Derived visitor method: generate code for a list of statements.
	*/
	@:overload public function genStats(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>, env : com.sun.tools.javac.comp.Env<Gen_GenContext>) : Void;
	
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
	@:overload public function genCond(tree : com.sun.tools.javac.tree.JCTree, crtFlags : Int) : CondItem;
	
	/** Derived visitor method: generate code for a boolean
	*  expression in a control-flow context.
	*  @param _tree         The expression to be visited.
	*  @param markBranches The flag to indicate that the condition is
	*                      a flow controller so produced conditions
	*                      should contain a proper tree to generate
	*                      CharacterRangeTable branches for them.
	*/
	@:overload public function genCond(_tree : com.sun.tools.javac.tree.JCTree, markBranches : Bool) : CondItem;
	
	/** Visitor method: generate code for an expression, catching and reporting
	*  any completion failures.
	*  @param tree    The expression to be visited.
	*  @param pt      The expression's expected type (proto-type).
	*/
	@:overload public function genExpr(tree : com.sun.tools.javac.tree.JCTree, pt : com.sun.tools.javac.code.Type) : Item;
	
	/** Derived visitor method: generate code for a list of method arguments.
	*  @param trees    The argument expressions to be visited.
	*  @param pts      The expression's expected types (i.e. the formal parameter
	*                  types of the invoked method).
	*/
	@:overload public function genArgs(trees : com.sun.tools.javac.util.List<JCExpression>, pts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Void;
	
	@:overload public function visitMethodDef(tree : JCMethodDecl) : Void;
	
	@:overload public function visitVarDef(tree : JCVariableDecl) : Void;
	
	@:overload public function visitSkip(tree : JCSkip) : Void;
	
	@:overload public function visitBlock(tree : JCBlock) : Void;
	
	@:overload public function visitDoLoop(tree : JCDoWhileLoop) : Void;
	
	@:overload public function visitWhileLoop(tree : JCWhileLoop) : Void;
	
	@:overload public function visitForLoop(tree : JCForLoop) : Void;
	
	@:overload public function visitForeachLoop(tree : JCEnhancedForLoop) : Void;
	
	@:overload public function visitLabelled(tree : JCLabeledStatement) : Void;
	
	@:overload public function visitSwitch(tree : JCSwitch) : Void;
	
	@:overload public function visitSynchronized(tree : JCSynchronized) : Void;
	
	@:overload public function visitTry(tree : JCTry) : Void;
	
	@:overload public function visitIf(tree : JCIf) : Void;
	
	@:overload public function visitExec(tree : JCExpressionStatement) : Void;
	
	@:overload public function visitBreak(tree : JCBreak) : Void;
	
	@:overload public function visitContinue(tree : JCContinue) : Void;
	
	@:overload public function visitReturn(tree : JCReturn) : Void;
	
	@:overload public function visitThrow(tree : JCThrow) : Void;
	
	/* ************************************************************************
	* Visitor methods for expressions
	*************************************************************************/
	@:overload public function visitApply(tree : JCMethodInvocation) : Void;
	
	@:overload public function visitConditional(tree : JCConditional) : Void;
	
	@:overload public function visitNewClass(tree : JCNewClass) : Void;
	
	@:overload public function visitNewArray(tree : JCNewArray) : Void;
	
	@:overload public function visitParens(tree : JCParens) : Void;
	
	@:overload public function visitAssign(tree : JCAssign) : Void;
	
	@:overload public function visitAssignop(tree : JCAssignOp) : Void;
	
	@:overload public function visitUnary(tree : JCUnary) : Void;
	
	@:overload public function visitBinary(tree : JCBinary) : Void;
	
	@:overload public function visitTypeCast(tree : JCTypeCast) : Void;
	
	@:overload public function visitWildcard(tree : JCWildcard) : Void;
	
	@:overload public function visitTypeTest(tree : JCInstanceOf) : Void;
	
	@:overload public function visitIndexed(tree : JCArrayAccess) : Void;
	
	@:overload public function visitIdent(tree : JCIdent) : Void;
	
	@:overload public function visitSelect(tree : JCFieldAccess) : Void;
	
	@:overload public function visitLiteral(tree : JCLiteral) : Void;
	
	@:overload public function visitLetExpr(tree : LetExpr) : Void;
	
	/** Generate code for a class definition.
	*  @param env   The attribution environment that belongs to the
	*               outermost class containing this class definition.
	*               We need this for resolving some additional symbols.
	*  @param cdef  The tree representing the class definition.
	*  @return      True if code is generated with no errors.
	*/
	@:overload public function genClass(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, cdef : JCClassDecl) : Bool;
	
	
}
/** Thrown when the byte code size exceeds limit.
*/
@:native('com$sun$tools$javac$jvm$Gen$CodeSizeOverflow') extern class Gen_CodeSizeOverflow extends java.lang.RuntimeException
{
	@:overload public function new() : Void;
	
	
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
