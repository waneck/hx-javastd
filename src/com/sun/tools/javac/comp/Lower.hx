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
/** This pass translates away some syntactic sugar: inner classes,
*  class literals, assertions, foreach loops, etc.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Lower extends com.sun.tools.javac.tree.TreeTranslator
{
	private static var lowerKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.comp.Lower>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.comp.Lower;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Visitor method: Translate a single node.
	*  Attach the source position from the old tree to its replacement tree.
	*/
	@:overload override public function translate<T : com.sun.tools.javac.tree.JCTree>(tree : T) : T;
	
	/** Visitor method: Translate a single node, boxing or unboxing if needed.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(tree : T, type : com.sun.tools.javac.code.Type) : T;
	
	/** Visitor method: Translate tree.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(tree : T, enclOp : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : T;
	
	/** Visitor method: Translate list of trees.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>, enclOp : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.util.List<T>;
	
	/** Visitor method: Translate list of trees.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>, type : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.List<T>;
	
	@:overload override public function visitTopLevel(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : Void;
	
	@:overload override public function visitClassDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	@:overload override public function visitMethodDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload override public function visitTypeCast(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast) : Void;
	
	@:overload override public function visitNewClass(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	/** Visitor method for conditional expressions.
	*/
	@:overload override public function visitConditional(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional) : Void;
	
	/** Visitor method for if statements.
	*/
	@:overload override public function visitIf(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIf) : Void;
	
	/** Visitor method for assert statements. Translate them away.
	*/
	@:overload override public function visitAssert(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssert) : Void;
	
	@:overload override public function visitApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation) : Void;
	
	/** Visitor method for parenthesized expressions.
	*  If the subexpression has changed, omit the parens.
	*/
	@:overload override public function visitParens(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCParens) : Void;
	
	@:overload override public function visitIndexed(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess) : Void;
	
	@:overload override public function visitAssign(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign) : Void;
	
	@:overload override public function visitAssignop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp) : Void;
	
	@:overload override public function visitUnary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary) : Void;
	
	@:overload override public function visitBinary(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary) : Void;
	
	@:overload override public function visitIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	/** Translate away the foreach loop.  */
	@:overload override public function visitForeachLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCEnhancedForLoop) : Void;
	
	@:overload override public function visitVarDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	@:overload override public function visitBlock(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload override public function visitDoLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCDoWhileLoop) : Void;
	
	@:overload override public function visitWhileLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCWhileLoop) : Void;
	
	@:overload override public function visitForLoop(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCForLoop) : Void;
	
	@:overload override public function visitReturn(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn) : Void;
	
	@:overload override public function visitSwitch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch) : Void;
	
	@:overload public function visitEnumSwitch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitStringSwitch(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch) : com.sun.tools.javac.tree.JCTree;
	
	@:overload override public function visitNewArray(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray) : Void;
	
	@:overload override public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload override public function visitLetExpr(tree : com.sun.tools.javac.tree.JCTree.JCTree_LetExpr) : Void;
	
	@:overload override public function visitAnnotation(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation) : Void;
	
	@:overload override public function visitTry(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCTry) : Void;
	
	/** Translate a toplevel class and return a list consisting of
	*  the translated class and translated versions of all inner classes.
	*  @param env   The attribution environment current at the class definition.
	*               We need this for resolving some additional symbols.
	*  @param cdef  The tree representing the class definition.
	*/
	@:overload public function translateTopLevelClass(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, cdef : com.sun.tools.javac.tree.JCTree, make : com.sun.tools.javac.tree.TreeMaker) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	
}
/** A navigator class for assembling a mapping from local class symbols
*  to class definition trees.
*  There is only one case; all other cases simply traverse down the tree.
*/
@:native('com$sun$tools$javac$comp$Lower$ClassMap') @:internal extern class Lower_ClassMap extends com.sun.tools.javac.tree.TreeScanner
{
	/** All encountered class defs are entered into classdefs table.
	*/
	@:overload override public function visitClassDef(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	
}
/** A navigator class for collecting the free variables accessed
*  from a local class.
*  There is only one case; all other cases simply traverse down the tree.
*/
@:native('com$sun$tools$javac$comp$Lower$FreeVarCollector') @:internal extern class Lower_FreeVarCollector extends com.sun.tools.javac.tree.TreeScanner
{
	/** If tree refers to a variable in owner of local class, add it to
	*  free variables list.
	*/
	@:overload override public function visitIdent(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	/** If tree refers to a class instance creation expression
	*  add all free variables of the freshly created class.
	*/
	@:overload override public function visitNewClass(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	/** If tree refers to a qualified this or super expression
	*  for anything but the current class, add the outer this
	*  stack as a free variable.
	*/
	@:overload override public function visitSelect(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	/** If tree refers to a superclass constructor call,
	*  add all free variables of the superclass.
	*/
	@:overload override public function visitApply(tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation) : Void;
	
	
}
/** This map gives a translation table to be used for enum
*  switches.
*
*  <p>For each enum that appears as the type of a switch
*  expression, we maintain an EnumMapping to assist in the
*  translation, as exemplified by the following example:
*
*  <p>we translate
*  <pre>
*          switch(colorExpression) {
*          case red: stmt1;
*          case green: stmt2;
*          }
*  </pre>
*  into
*  <pre>
*          switch(Outer$0.$EnumMap$Color[colorExpression.ordinal()]) {
*          case 1: stmt1;
*          case 2: stmt2
*          }
*  </pre>
*  with the auxiliary table initialized as follows:
*  <pre>
*          class Outer$0 {
*              synthetic final int[] $EnumMap$Color = new int[Color.values().length];
*              static {
*                  try { $EnumMap$Color[red.ordinal()] = 1; } catch (NoSuchFieldError ex) {}
*                  try { $EnumMap$Color[green.ordinal()] = 2; } catch (NoSuchFieldError ex) {}
*              }
*          }
*  </pre>
*  class EnumMapping provides mapping data and support methods for this translation.
*/
@:native('com$sun$tools$javac$comp$Lower$EnumMapping') @:internal extern class Lower_EnumMapping
{
	
}
/**************************************************************************
* Building blocks for let expressions
*************************************************************************/
@:native('com$sun$tools$javac$comp$Lower$TreeBuilder') @:internal extern interface Lower_TreeBuilder
{
	@:overload public function build(arg : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree;
	
	
}
