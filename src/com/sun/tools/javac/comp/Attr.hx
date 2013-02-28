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
/** This is the main context-dependent analysis phase in GJC. It
*  encompasses name resolution, type checking and constant folding as
*  subtasks. Some subtasks involve auxiliary classes.
*  @see Check
*  @see Resolve
*  @see ConstFold
*  @see Infer
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Attr extends com.sun.tools.javac.tree.JCTree.JCTree_Visitor
{
	private static var attrKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<Attr>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : Attr;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Attribute a parsed identifier.
	* @param tree Parsed identifier name
	* @param topLevel The toplevel to use
	*/
	@:overload public function attribIdent(tree : com.sun.tools.javac.tree.JCTree, topLevel : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : com.sun.tools.javac.code.Symbol;
	
	@:overload public function coerce(etype : com.sun.tools.javac.code.Type, ttype : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function attribType(node : com.sun.tools.javac.tree.JCTree, sym : TypeSymbol) : com.sun.tools.javac.code.Type;
	
	@:overload public function attribExprToTree(expr : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	@:overload public function attribStatToTree(stmt : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, tree : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>;
	
	/** Derived visitor method: attribute an expression tree.
	*/
	@:overload public function attribExpr(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, pt : com.sun.tools.javac.code.Type) : com.sun.tools.javac.code.Type;
	
	@:overload public function attribExpr(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, pt : com.sun.tools.javac.code.Type, key : String) : com.sun.tools.javac.code.Type;
	
	/** Derived visitor method: attribute a statement or definition tree.
	*/
	@:overload public function attribStat(tree : com.sun.tools.javac.tree.JCTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : com.sun.tools.javac.code.Type;
	
	/**
	* Attribute a "lazy constant value".
	*  @param env         The env for the const value
	*  @param initializer The initializer for the const value
	*  @param type        The expected type, or null
	*  @see VarSymbol#setlazyConstValue
	*/
	@:overload public function attribLazyConstantValue(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, initializer : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, type : com.sun.tools.javac.code.Type) : Dynamic;
	
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
	
	@:overload public function visitSynchronized(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSynchronized) : Void;
	
	@:overload public function visitTry(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTry) : Void;
	
	@:overload public function visitConditional(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional) : Void;
	
	@:overload public function visitIf(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIf) : Void;
	
	@:overload public function visitExec(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement) : Void;
	
	@:overload public function visitBreak(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBreak) : Void;
	
	@:overload public function visitContinue(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCContinue) : Void;
	
	@:overload public function visitReturn(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn) : Void;
	
	@:overload public function visitThrow(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCThrow) : Void;
	
	@:overload public function visitAssert(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssert) : Void;
	
	/** Visitor method for method invocations.
	*  NOTE: The method part of an application will have in its type field
	*        the return type of the method, not the method's type itself!
	*/
	@:overload public function visitApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation) : Void;
	
	@:overload public function visitNewClass(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	/** Make an attributed null check tree.
	*/
	@:overload public function makeNullCheck(arg : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload public function visitNewArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray) : Void;
	
	@:overload public function visitParens(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCParens) : Void;
	
	@:overload public function visitAssign(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign) : Void;
	
	@:overload public function visitAssignop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp) : Void;
	
	@:overload public function visitUnary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary) : Void;
	
	@:overload public function visitBinary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary) : Void;
	
	@:overload public function visitTypeCast(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast) : Void;
	
	@:overload public function visitTypeTest(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCInstanceOf) : Void;
	
	@:overload public function visitIndexed(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess) : Void;
	
	@:overload public function visitIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	@:overload public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	/**
	* Check that method arguments conform to its instantation.
	**/
	@:overload public function checkMethod(site : com.sun.tools.javac.code.Type, sym : com.sun.tools.javac.code.Symbol, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, argtrees : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, argtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, typeargtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, useVarargs : Bool) : com.sun.tools.javac.code.Type;
	
	@:overload public function visitLiteral(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral) : Void;
	
	@:overload public function visitTypeIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCPrimitiveTypeTree) : Void;
	
	@:overload public function visitTypeArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayTypeTree) : Void;
	
	/** Visitor method for parameterized types.
	*  Bound checking is left until later, since types are attributed
	*  before supertype structure is completely known
	*/
	@:overload public function visitTypeApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply) : Void;
	
	@:overload public function visitTypeUnion(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeUnion) : Void;
	
	@:overload public function visitTypeParameter(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter) : Void;
	
	@:overload public function visitWildcard(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard) : Void;
	
	@:overload public function visitAnnotation(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation) : Void;
	
	@:overload public function visitErroneous(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous) : Void;
	
	/** Default visitor method for all other trees.
	*/
	@:overload public function visitTree(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	/**
	* Attribute an env for either a top level tree or class declaration.
	*/
	@:overload public function attrib(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Void;
	
	/**
	* Attribute a top level tree. These trees are encountered when the
	* package declaration has annotations.
	*/
	@:overload public function attribTopLevel(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Void;
	
	/** Main method: attribute class definition associated with given class symbol.
	*  reporting completion failures at the given position.
	*  @param pos The source position at which completion errors are to be
	*             reported.
	*  @param c   The class symbol whose definition will be attributed.
	*/
	@:overload public function attribClass(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, c : ClassSymbol) : Void;
	
	@:overload public function visitImport(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCImport) : Void;
	
	/**
	* Handle missing types/symbols in an AST. This routine is useful when
	* the compiler has encountered some errors (which might have ended up
	* terminating attribution abruptly); if the compiler is used in fail-over
	* mode (e.g. by an IDE) and the AST contains semantic errors, this routine
	* prevents NPE to be progagated during subsequent compilation steps.
	*/
	@:overload public function postAttr(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : Void;
	
	
}
@:native('com$sun$tools$javac$comp$Attr$IdentAttributer') @:internal extern class Attr_IdentAttributer extends com.sun.source.util.SimpleTreeVisitor<com.sun.tools.javac.code.Symbol, com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>>
{
	@:overload public function visitMemberSelect(node : com.sun.source.tree.MemberSelectTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : com.sun.tools.javac.code.Symbol;
	
	@:overload public function visitIdentifier(node : com.sun.source.tree.IdentifierTree, env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>) : com.sun.tools.javac.code.Symbol;
	
	
}
@:native('com$sun$tools$javac$comp$Attr$BreakAttr') @:internal extern class Attr_BreakAttr extends java.lang.RuntimeException
{
	
}
@:native('com$sun$tools$javac$comp$Attr$PostAttrAnalyzer') @:internal extern class Attr_PostAttrAnalyzer extends com.sun.tools.javac.tree.TreeScanner
{
	@:overload override public function scan(tree : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload public function visitIdent(that : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	@:overload public function visitSelect(that : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload public function visitClassDef(that : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	@:overload public function visitMethodDef(that : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload public function visitVarDef(that : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	@:overload public function visitNewClass(that : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	@:overload public function visitAssignop(that : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp) : Void;
	
	@:overload public function visitBinary(that : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary) : Void;
	
	@:overload public function visitUnary(that : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary) : Void;
	
	
}
