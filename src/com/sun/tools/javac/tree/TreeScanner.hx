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
	@:overload @:public public function scan(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	/** Visitor method: scan a list of nodes.
	*/
	@:overload @:public public function scan(trees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : Void;
	
	/* ***************************************************************************
	* Visitor methods
	****************************************************************************/
	@:overload @:public public function visitTopLevel(tree : JCCompilationUnit) : Void;
	
	@:overload @:public public function visitImport(tree : JCImport) : Void;
	
	@:overload @:public public function visitClassDef(tree : JCClassDecl) : Void;
	
	@:overload @:public public function visitMethodDef(tree : JCMethodDecl) : Void;
	
	@:overload @:public public function visitVarDef(tree : JCVariableDecl) : Void;
	
	@:overload @:public public function visitSkip(tree : JCSkip) : Void;
	
	@:overload @:public public function visitBlock(tree : JCBlock) : Void;
	
	@:overload @:public public function visitDoLoop(tree : JCDoWhileLoop) : Void;
	
	@:overload @:public public function visitWhileLoop(tree : JCWhileLoop) : Void;
	
	@:overload @:public public function visitForLoop(tree : JCForLoop) : Void;
	
	@:overload @:public public function visitForeachLoop(tree : JCEnhancedForLoop) : Void;
	
	@:overload @:public public function visitLabelled(tree : JCLabeledStatement) : Void;
	
	@:overload @:public public function visitSwitch(tree : JCSwitch) : Void;
	
	@:overload @:public public function visitCase(tree : JCCase) : Void;
	
	@:overload @:public public function visitSynchronized(tree : JCSynchronized) : Void;
	
	@:overload @:public public function visitTry(tree : JCTry) : Void;
	
	@:overload @:public public function visitCatch(tree : JCCatch) : Void;
	
	@:overload @:public public function visitConditional(tree : JCConditional) : Void;
	
	@:overload @:public public function visitIf(tree : JCIf) : Void;
	
	@:overload @:public public function visitExec(tree : JCExpressionStatement) : Void;
	
	@:overload @:public public function visitBreak(tree : JCBreak) : Void;
	
	@:overload @:public public function visitContinue(tree : JCContinue) : Void;
	
	@:overload @:public public function visitReturn(tree : JCReturn) : Void;
	
	@:overload @:public public function visitThrow(tree : JCThrow) : Void;
	
	@:overload @:public public function visitAssert(tree : JCAssert) : Void;
	
	@:overload @:public public function visitApply(tree : JCMethodInvocation) : Void;
	
	@:overload @:public public function visitNewClass(tree : JCNewClass) : Void;
	
	@:overload @:public public function visitNewArray(tree : JCNewArray) : Void;
	
	@:overload @:public public function visitParens(tree : JCParens) : Void;
	
	@:overload @:public public function visitAssign(tree : JCAssign) : Void;
	
	@:overload @:public public function visitAssignop(tree : JCAssignOp) : Void;
	
	@:overload @:public public function visitUnary(tree : JCUnary) : Void;
	
	@:overload @:public public function visitBinary(tree : JCBinary) : Void;
	
	@:overload @:public public function visitTypeCast(tree : JCTypeCast) : Void;
	
	@:overload @:public public function visitTypeTest(tree : JCInstanceOf) : Void;
	
	@:overload @:public public function visitIndexed(tree : JCArrayAccess) : Void;
	
	@:overload @:public public function visitSelect(tree : JCFieldAccess) : Void;
	
	@:overload @:public public function visitIdent(tree : JCIdent) : Void;
	
	@:overload @:public public function visitLiteral(tree : JCLiteral) : Void;
	
	@:overload @:public public function visitTypeIdent(tree : JCPrimitiveTypeTree) : Void;
	
	@:overload @:public public function visitTypeArray(tree : JCArrayTypeTree) : Void;
	
	@:overload @:public public function visitTypeApply(tree : JCTypeApply) : Void;
	
	@:overload @:public public function visitTypeUnion(tree : JCTypeUnion) : Void;
	
	@:overload @:public public function visitTypeParameter(tree : JCTypeParameter) : Void;
	
	@:overload @:public public function visitWildcard(tree : JCWildcard) : Void;
	
	@:overload @:public public function visitTypeBoundKind(that : TypeBoundKind) : Void;
	
	@:overload @:public public function visitModifiers(tree : JCModifiers) : Void;
	
	@:overload @:public public function visitAnnotation(tree : JCAnnotation) : Void;
	
	@:overload @:public public function visitErroneous(tree : JCErroneous) : Void;
	
	@:overload @:public public function visitLetExpr(tree : LetExpr) : Void;
	
	@:overload @:public public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	
}
