package com.sun.tools.javac.tree;
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
/** Prints out a tree as an indented Java source program.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Pretty extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor
{
	@:overload public function new(out : java.io.Writer, sourceOutput : Bool) : Void;
	
	/** Indentation width (can be reassigned from outside).
	*/
	public var width : Int;
	
	/** Print string, replacing all non-ascii character with unicode escapes.
	*/
	@:overload public function print(s : Dynamic) : Void;
	
	/** Print new line.
	*/
	@:overload public function println() : Void;
	
	/** Visitor method: print expression tree.
	*  @param prec  The current precedence level.
	*/
	@:overload public function printExpr(tree : com.sun.tools.javac.tree.JCTree, prec : Int) : Void;
	
	/** Derived visitor method: print expression tree at minimum precedence level
	*  for expression.
	*/
	@:overload public function printExpr(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	/** Derived visitor method: print statement tree.
	*/
	@:overload public function printStat(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	/** Derived visitor method: print list of expression trees, separated by given string.
	*  @param sep the separator string
	*/
	@:overload public function printExprs<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>, sep : String) : Void;
	
	/** Derived visitor method: print list of expression trees, separated by commas.
	*/
	@:overload public function printExprs<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>) : Void;
	
	/** Derived visitor method: print list of statements, each on a separate line.
	*/
	@:overload public function printStats(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : Void;
	
	/** Print a set of modifiers.
	*/
	@:overload public function printFlags(flags : haxe.Int64) : Void;
	
	@:overload public function printAnnotations(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>) : Void;
	
	/** Print documentation comment, if it exists
	*  @param tree    The tree for which a documentation comment should be printed.
	*/
	@:overload public function printDocComment(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	/** If type parameter list is non-empty, print it enclosed in "<...>" brackets.
	*/
	@:overload public function printTypeParameters(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>) : Void;
	
	/** Print a block.
	*/
	@:overload public function printBlock(stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : Void;
	
	/** Print a block.
	*/
	@:overload public function printEnumBody(stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : Void;
	
	/** Print unit consisting of package clause and import statements in toplevel,
	*  followed by class definition. if class definition == null,
	*  print all definitions in toplevel.
	*  @param tree     The toplevel tree
	*  @param cdef     The class definition, which is assumed to be part of the
	*                  toplevel tree.
	*/
	@:overload public function printUnit(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit, cdef : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	/**************************************************************************
	* Visitor methods
	*************************************************************************/
	@:overload public function visitTopLevel(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : Void;
	
	@:overload public function visitImport(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCImport) : Void;
	
	@:overload public function visitClassDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	@:overload public function visitMethodDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload public function visitVarDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	@:overload public function visitSkip(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSkip) : Void;
	
	@:overload public function visitBlock(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload public function visitDoLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCDoWhileLoop) : Void;
	
	@:overload public function visitWhileLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWhileLoop) : Void;
	
	@:overload public function visitForLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCForLoop) : Void;
	
	@:overload public function visitForeachLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCEnhancedForLoop) : Void;
	
	@:overload public function visitLabelled(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLabeledStatement) : Void;
	
	@:overload public function visitSwitch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch) : Void;
	
	@:overload public function visitCase(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCase) : Void;
	
	@:overload public function visitSynchronized(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSynchronized) : Void;
	
	@:overload public function visitTry(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTry) : Void;
	
	@:overload public function visitCatch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCatch) : Void;
	
	@:overload public function visitConditional(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional) : Void;
	
	@:overload public function visitIf(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIf) : Void;
	
	@:overload public function visitExec(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement) : Void;
	
	@:overload public function visitBreak(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBreak) : Void;
	
	@:overload public function visitContinue(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCContinue) : Void;
	
	@:overload public function visitReturn(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn) : Void;
	
	@:overload public function visitThrow(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCThrow) : Void;
	
	@:overload public function visitAssert(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssert) : Void;
	
	@:overload public function visitApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation) : Void;
	
	@:overload public function visitNewClass(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	@:overload public function visitNewArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray) : Void;
	
	@:overload public function visitParens(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCParens) : Void;
	
	@:overload public function visitAssign(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign) : Void;
	
	@:overload public function operatorName(tag : Int) : String;
	
	@:overload public function visitAssignop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp) : Void;
	
	@:overload public function visitUnary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary) : Void;
	
	@:overload public function visitBinary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary) : Void;
	
	@:overload public function visitTypeCast(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast) : Void;
	
	@:overload public function visitTypeTest(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCInstanceOf) : Void;
	
	@:overload public function visitIndexed(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess) : Void;
	
	@:overload public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload public function visitIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	@:overload public function visitLiteral(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral) : Void;
	
	@:overload public function visitTypeIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCPrimitiveTypeTree) : Void;
	
	@:overload public function visitTypeArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayTypeTree) : Void;
	
	@:overload public function visitTypeApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply) : Void;
	
	@:overload public function visitTypeUnion(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeUnion) : Void;
	
	@:overload public function visitTypeParameter(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter) : Void;
	
	@:overload public function visitWildcard(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard) : Void;
	
	@:overload public function visitTypeBoundKind(tree : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind) : Void;
	
	@:overload public function visitErroneous(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous) : Void;
	
	@:overload public function visitLetExpr(tree : com.sun.tools.javac.tree.JCTree.JCTree_LetExpr) : Void;
	
	@:overload public function visitModifiers(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers) : Void;
	
	@:overload public function visitAnnotation(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation) : Void;
	
	@:overload public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	
}
/** Exception to propogate IOException through visitXXX methods */
@:native('com$sun$tools$javac$tree$Pretty$UncheckedIOException') @:internal extern class Pretty_UncheckedIOException extends java.lang.Error
{
	
}
