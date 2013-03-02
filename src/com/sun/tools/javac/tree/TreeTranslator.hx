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
/** A subclass of Tree.Visitor, this class defines
*  a general tree translator pattern. Translation proceeds recursively in
*  left-to-right order down a tree, constructing translated nodes by
*  overwriting existing ones. There is one visitor method in this class
*  for every possible kind of tree node.  To obtain a specific
*  translator, it suffices to override those visitor methods which
*  do some interesting work. The translator class itself takes care of all
*  navigational aspects.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class TreeTranslator extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor
{
	/** Visitor result field: a tree
	*/
	private var result : com.sun.tools.javac.tree.JCTree;
	
	/** Visitor method: Translate a single node.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(tree : T) : T;
	
	/** Visitor method: translate a list of nodes.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>) : com.sun.tools.javac.util.List<T>;
	
	/**  Visitor method: translate a list of variable definitions.
	*/
	@:overload public function translateVarDefs(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>;
	
	/**  Visitor method: translate a list of type parameters.
	*/
	@:overload public function translateTypeParams(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>;
	
	/**  Visitor method: translate a list of case parts of switch statements.
	*/
	@:overload public function translateCases(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCase>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCase>;
	
	/**  Visitor method: translate a list of catch clauses in try statements.
	*/
	@:overload public function translateCatchers(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>;
	
	/**  Visitor method: translate a list of catch clauses in try statements.
	*/
	@:overload public function translateAnnotations(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>;
	
	/* ***************************************************************************
	* Visitor methods
	****************************************************************************/
	@:overload override public function visitTopLevel(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : Void;
	
	@:overload override public function visitImport(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCImport) : Void;
	
	@:overload override public function visitClassDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	@:overload override public function visitMethodDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload override public function visitVarDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	@:overload override public function visitSkip(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSkip) : Void;
	
	@:overload override public function visitBlock(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload override public function visitDoLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCDoWhileLoop) : Void;
	
	@:overload override public function visitWhileLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWhileLoop) : Void;
	
	@:overload override public function visitForLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCForLoop) : Void;
	
	@:overload override public function visitForeachLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCEnhancedForLoop) : Void;
	
	@:overload override public function visitLabelled(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLabeledStatement) : Void;
	
	@:overload override public function visitSwitch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch) : Void;
	
	@:overload override public function visitCase(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCase) : Void;
	
	@:overload override public function visitSynchronized(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSynchronized) : Void;
	
	@:overload override public function visitTry(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTry) : Void;
	
	@:overload override public function visitCatch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCatch) : Void;
	
	@:overload override public function visitConditional(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional) : Void;
	
	@:overload override public function visitIf(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIf) : Void;
	
	@:overload override public function visitExec(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement) : Void;
	
	@:overload override public function visitBreak(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBreak) : Void;
	
	@:overload override public function visitContinue(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCContinue) : Void;
	
	@:overload override public function visitReturn(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn) : Void;
	
	@:overload override public function visitThrow(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCThrow) : Void;
	
	@:overload override public function visitAssert(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssert) : Void;
	
	@:overload override public function visitApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation) : Void;
	
	@:overload override public function visitNewClass(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	@:overload override public function visitNewArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray) : Void;
	
	@:overload override public function visitParens(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCParens) : Void;
	
	@:overload override public function visitAssign(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign) : Void;
	
	@:overload override public function visitAssignop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp) : Void;
	
	@:overload override public function visitUnary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary) : Void;
	
	@:overload override public function visitBinary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary) : Void;
	
	@:overload override public function visitTypeCast(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast) : Void;
	
	@:overload override public function visitTypeTest(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCInstanceOf) : Void;
	
	@:overload override public function visitIndexed(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess) : Void;
	
	@:overload override public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload override public function visitIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	@:overload override public function visitLiteral(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral) : Void;
	
	@:overload override public function visitTypeIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCPrimitiveTypeTree) : Void;
	
	@:overload override public function visitTypeArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayTypeTree) : Void;
	
	@:overload override public function visitTypeApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply) : Void;
	
	@:overload override public function visitTypeUnion(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeUnion) : Void;
	
	@:overload override public function visitTypeParameter(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter) : Void;
	
	@:overload override public function visitWildcard(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard) : Void;
	
	@:overload override public function visitTypeBoundKind(tree : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind) : Void;
	
	@:overload override public function visitErroneous(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous) : Void;
	
	@:overload override public function visitLetExpr(tree : com.sun.tools.javac.tree.JCTree.JCTree_LetExpr) : Void;
	
	@:overload override public function visitModifiers(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers) : Void;
	
	@:overload override public function visitAnnotation(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation) : Void;
	
	@:overload override public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	
}
