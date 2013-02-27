package com.sun.tools.javac.tree;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
*  a general tree scanner pattern. Translation proceeds recursively in
*  left-to-right order down a tree. There is one visitor method in this class
*  for every possible kind of tree node.  To obtain a specific
*  scanner, it suffices to override those visitor methods which
*  do some interesting work. The scanner class itself takes care of all
*  navigational aspects.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class TreeScanner extends Visitor
{
	/** Visitor method: Scan a single node.
	*/
	@:overload public function scan(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	/** Visitor method: scan a list of nodes.
	*/
	@:overload public function scan(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : Void;
	
	/* ***************************************************************************
	* Visitor methods
	****************************************************************************/
	@:overload public function visitTopLevel(tree : JCCompilationUnit) : Void;
	
	@:overload public function visitImport(tree : JCImport) : Void;
	
	@:overload public function visitClassDef(tree : JCClassDecl) : Void;
	
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
	
	@:overload public function visitCase(tree : JCCase) : Void;
	
	@:overload public function visitSynchronized(tree : JCSynchronized) : Void;
	
	@:overload public function visitTry(tree : JCTry) : Void;
	
	@:overload public function visitCatch(tree : JCCatch) : Void;
	
	@:overload public function visitConditional(tree : JCConditional) : Void;
	
	@:overload public function visitIf(tree : JCIf) : Void;
	
	@:overload public function visitExec(tree : JCExpressionStatement) : Void;
	
	@:overload public function visitBreak(tree : JCBreak) : Void;
	
	@:overload public function visitContinue(tree : JCContinue) : Void;
	
	@:overload public function visitReturn(tree : JCReturn) : Void;
	
	@:overload public function visitThrow(tree : JCThrow) : Void;
	
	@:overload public function visitAssert(tree : JCAssert) : Void;
	
	@:overload public function visitApply(tree : JCMethodInvocation) : Void;
	
	@:overload public function visitNewClass(tree : JCNewClass) : Void;
	
	@:overload public function visitNewArray(tree : JCNewArray) : Void;
	
	@:overload public function visitParens(tree : JCParens) : Void;
	
	@:overload public function visitAssign(tree : JCAssign) : Void;
	
	@:overload public function visitAssignop(tree : JCAssignOp) : Void;
	
	@:overload public function visitUnary(tree : JCUnary) : Void;
	
	@:overload public function visitBinary(tree : JCBinary) : Void;
	
	@:overload public function visitTypeCast(tree : JCTypeCast) : Void;
	
	@:overload public function visitTypeTest(tree : JCInstanceOf) : Void;
	
	@:overload public function visitIndexed(tree : JCArrayAccess) : Void;
	
	@:overload public function visitSelect(tree : JCFieldAccess) : Void;
	
	@:overload public function visitIdent(tree : JCIdent) : Void;
	
	@:overload public function visitLiteral(tree : JCLiteral) : Void;
	
	@:overload public function visitTypeIdent(tree : JCPrimitiveTypeTree) : Void;
	
	@:overload public function visitTypeArray(tree : JCArrayTypeTree) : Void;
	
	@:overload public function visitTypeApply(tree : JCTypeApply) : Void;
	
	@:overload public function visitTypeUnion(tree : JCTypeUnion) : Void;
	
	@:overload public function visitTypeParameter(tree : JCTypeParameter) : Void;
	
	@:overload public function visitWildcard(tree : JCWildcard) : Void;
	
	@:overload public function visitTypeBoundKind(that : TypeBoundKind) : Void;
	
	@:overload public function visitModifiers(tree : JCModifiers) : Void;
	
	@:overload public function visitAnnotation(tree : JCAnnotation) : Void;
	
	@:overload public function visitErroneous(tree : JCErroneous) : Void;
	
	@:overload public function visitLetExpr(tree : LetExpr) : Void;
	
	@:overload public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	
}
