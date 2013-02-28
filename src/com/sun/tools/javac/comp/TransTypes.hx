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
/** This pass translates Generic Java to conventional Java.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class TransTypes extends com.sun.tools.javac.tree.TreeTranslator
{
	/** The context key for the TransTypes phase. */
	private static var transTypesKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<TransTypes>;
	
	/** Get the instance for this context. */
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : TransTypes;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Visitor method: perform a type translation on tree.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(tree : T, pt : com.sun.tools.javac.code.Type) : T;
	
	/** Visitor method: perform a type translation on list of trees.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>, pt : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.List<T>;
	
	@:overload public function visitClassDef(tree : JCClassDecl) : Void;
	
	@:overload public function visitMethodDef(tree : JCMethodDecl) : Void;
	
	@:overload public function visitVarDef(tree : JCVariableDecl) : Void;
	
	@:overload public function visitDoLoop(tree : JCDoWhileLoop) : Void;
	
	@:overload public function visitWhileLoop(tree : JCWhileLoop) : Void;
	
	@:overload public function visitForLoop(tree : JCForLoop) : Void;
	
	@:overload public function visitForeachLoop(tree : JCEnhancedForLoop) : Void;
	
	@:overload public function visitSwitch(tree : JCSwitch) : Void;
	
	@:overload public function visitCase(tree : JCCase) : Void;
	
	@:overload public function visitSynchronized(tree : JCSynchronized) : Void;
	
	@:overload public function visitTry(tree : JCTry) : Void;
	
	@:overload public function visitConditional(tree : JCConditional) : Void;
	
	@:overload public function visitIf(tree : JCIf) : Void;
	
	@:overload public function visitExec(tree : JCExpressionStatement) : Void;
	
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
	
	@:overload public function visitAnnotation(tree : JCAnnotation) : Void;
	
	@:overload public function visitIdent(tree : JCIdent) : Void;
	
	@:overload public function visitSelect(tree : JCFieldAccess) : Void;
	
	@:overload public function visitTypeArray(tree : JCArrayTypeTree) : Void;
	
	/** Visitor method for parameterized types.
	*/
	@:overload public function visitTypeApply(tree : JCTypeApply) : Void;
	
	/** Translate a toplevel class definition.
	*  @param cdef    The definition to be translated.
	*/
	@:overload public function translateTopLevelClass(cdef : com.sun.tools.javac.tree.JCTree, make : com.sun.tools.javac.tree.TreeMaker) : com.sun.tools.javac.tree.JCTree;
	
	
}
@:native('com$sun$tools$javac$comp$TransTypes$NeedsOverridBridgeFilter') @:internal extern class TransTypes_NeedsOverridBridgeFilter implements com.sun.tools.javac.util.Filter<com.sun.tools.javac.code.Symbol>
{
	@:overload public function accepts(s : com.sun.tools.javac.code.Symbol) : Bool;
	
	
}
