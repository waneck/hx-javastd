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
	private static var lowerKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<Lower>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : Lower;
	
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
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(tree : T, enclOp : JCExpression) : T;
	
	/** Visitor method: Translate list of trees.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>, enclOp : JCExpression) : com.sun.tools.javac.util.List<T>;
	
	/** Visitor method: Translate list of trees.
	*/
	@:overload public function translate<T : com.sun.tools.javac.tree.JCTree>(trees : com.sun.tools.javac.util.List<T>, type : com.sun.tools.javac.code.Type) : com.sun.tools.javac.util.List<T>;
	
	@:overload public function visitTopLevel(tree : JCCompilationUnit) : Void;
	
	@:overload public function visitClassDef(tree : JCClassDecl) : Void;
	
	@:overload public function visitMethodDef(tree : JCMethodDecl) : Void;
	
	@:overload public function visitTypeCast(tree : JCTypeCast) : Void;
	
	@:overload public function visitNewClass(tree : JCNewClass) : Void;
	
	/** Visitor method for conditional expressions.
	*/
	@:overload public function visitConditional(tree : JCConditional) : Void;
	
	/** Visitor method for if statements.
	*/
	@:overload public function visitIf(tree : JCIf) : Void;
	
	/** Visitor method for assert statements. Translate them away.
	*/
	@:overload public function visitAssert(tree : JCAssert) : Void;
	
	@:overload public function visitApply(tree : JCMethodInvocation) : Void;
	
	/** Visitor method for parenthesized expressions.
	*  If the subexpression has changed, omit the parens.
	*/
	@:overload public function visitParens(tree : JCParens) : Void;
	
	@:overload public function visitIndexed(tree : JCArrayAccess) : Void;
	
	@:overload public function visitAssign(tree : JCAssign) : Void;
	
	@:overload public function visitAssignop(tree : JCAssignOp) : Void;
	
	@:overload public function visitUnary(tree : JCUnary) : Void;
	
	@:overload public function visitBinary(tree : JCBinary) : Void;
	
	@:overload public function visitIdent(tree : JCIdent) : Void;
	
	/** Translate away the foreach loop.  */
	@:overload public function visitForeachLoop(tree : JCEnhancedForLoop) : Void;
	
	@:overload public function visitVarDef(tree : JCVariableDecl) : Void;
	
	@:overload public function visitBlock(tree : JCBlock) : Void;
	
	@:overload public function visitDoLoop(tree : JCDoWhileLoop) : Void;
	
	@:overload public function visitWhileLoop(tree : JCWhileLoop) : Void;
	
	@:overload public function visitForLoop(tree : JCForLoop) : Void;
	
	@:overload public function visitReturn(tree : JCReturn) : Void;
	
	@:overload public function visitSwitch(tree : JCSwitch) : Void;
	
	@:overload public function visitEnumSwitch(tree : JCSwitch) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitStringSwitch(tree : JCSwitch) : com.sun.tools.javac.tree.JCTree;
	
	@:overload public function visitNewArray(tree : JCNewArray) : Void;
	
	@:overload public function visitSelect(tree : JCFieldAccess) : Void;
	
	@:overload public function visitLetExpr(tree : LetExpr) : Void;
	
	@:overload public function visitAnnotation(tree : JCAnnotation) : Void;
	
	@:overload public function visitTry(tree : JCTry) : Void;
	
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
	@:overload override public function visitClassDef(tree : JCClassDecl) : Void;
	
	
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
	@:overload override public function visitIdent(tree : JCIdent) : Void;
	
	/** If tree refers to a class instance creation expression
	*  add all free variables of the freshly created class.
	*/
	@:overload override public function visitNewClass(tree : JCNewClass) : Void;
	
	/** If tree refers to a qualified this or super expression
	*  for anything but the current class, add the outer this
	*  stack as a free variable.
	*/
	@:overload override public function visitSelect(tree : JCFieldAccess) : Void;
	
	/** If tree refers to a superclass constructor call,
	*  add all free variables of the superclass.
	*/
	@:overload override public function visitApply(tree : JCMethodInvocation) : Void;
	
	
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
