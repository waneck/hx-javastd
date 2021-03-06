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
/** Factory class for trees.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class TreeMaker implements com.sun.tools.javac.tree.JCTree.JCTree_Factory
{
	/** The context key for the tree factory. */
	@:protected @:static @:final private static var treeMakerKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.tree.TreeMaker>;
	
	/** Get the TreeMaker instance. */
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.tree.TreeMaker;
	
	/** The position at which subsequent trees will be created.
	*/
	@:public public var pos : Int;
	
	/** The toplevel tree to which created trees belong.
	*/
	@:public public var toplevel : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit;
	
	/** Create a tree maker with null toplevel and NOPOS as initial position.
	*/
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Create a new tree maker for a given toplevel.
	*/
	@:overload @:public public function forToplevel(toplevel : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : com.sun.tools.javac.tree.TreeMaker;
	
	/** Reassign current position.
	*/
	@:overload @:public public function at(pos : Int) : com.sun.tools.javac.tree.TreeMaker;
	
	/** Reassign current position.
	*/
	@:overload @:public public function at(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition) : com.sun.tools.javac.tree.TreeMaker;
	
	/**
	* Create given tree node at current position.
	* @param defs a list of ClassDef, Import, and Skip
	*/
	@:overload @:public public function TopLevel(packageAnnotations : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>, pid : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit;
	
	@:overload @:public public function Import(qualid : com.sun.tools.javac.tree.JCTree, importStatic : Bool) : com.sun.tools.javac.tree.JCTree.JCTree_JCImport;
	
	@:overload @:public public function ClassDef(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>, extending : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, implementing : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl;
	
	@:overload @:public public function MethodDef(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, restype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>, params : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>, thrown : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock, defaultValue : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl;
	
	@:overload @:public public function VarDef(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, vartype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, init : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl;
	
	@:overload @:public public function Skip() : com.sun.tools.javac.tree.JCTree.JCTree_JCSkip;
	
	@:overload @:public public function Block(flags : haxe.Int64, stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>) : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload @:public public function DoLoop(body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement, cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCDoWhileLoop;
	
	@:overload @:public public function WhileLoop(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCWhileLoop;
	
	@:overload @:public public function ForLoop(init : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>, cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, step : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCForLoop;
	
	@:overload @:public public function ForeachLoop(_var : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCEnhancedForLoop;
	
	@:overload @:public public function Labelled(label : com.sun.tools.javac.util.Name, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCLabeledStatement;
	
	@:overload @:public public function Switch(selector : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, cases : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCase>) : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch;
	
	@:overload @:public public function Case(pat : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>) : com.sun.tools.javac.tree.JCTree.JCTree_JCCase;
	
	@:overload @:public public function Synchronized(lock : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCSynchronized;
	
	@:overload @:public public function Try(body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock, catchers : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>, finalizer : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCTry;
	
	@:overload @:public public function Try(resources : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock, catchers : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>, finalizer : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCTry;
	
	@:overload @:public public function Catch(param : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCCatch;
	
	@:overload @:public public function Conditional(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, thenpart : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, elsepart : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional;
	
	@:overload @:public public function If(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, thenpart : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement, elsepart : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCIf;
	
	@:overload @:public public function Exec(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement;
	
	@:overload @:public public function Break(label : com.sun.tools.javac.util.Name) : com.sun.tools.javac.tree.JCTree.JCTree_JCBreak;
	
	@:overload @:public public function Continue(label : com.sun.tools.javac.util.Name) : com.sun.tools.javac.tree.JCTree.JCTree_JCContinue;
	
	@:overload @:public public function Return(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn;
	
	@:overload @:public public function Throw(expr : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_JCThrow;
	
	@:overload @:public public function Assert(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, detail : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCAssert;
	
	@:overload @:public public function Apply(typeargs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, fn : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation;
	
	@:overload @:public public function NewClass(encl : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, typeargs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, clazz : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, def : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass;
	
	@:overload @:public public function NewArray(elemtype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, dims : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, elems : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray;
	
	@:overload @:public public function Parens(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCParens;
	
	@:overload @:public public function Assign(lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign;
	
	@:overload @:public public function Assignop(opcode : Int, lhs : com.sun.tools.javac.tree.JCTree, rhs : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp;
	
	@:overload @:public public function Unary(opcode : Int, arg : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary;
	
	@:overload @:public public function Binary(opcode : Int, lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary;
	
	@:overload @:public public function TypeCast(clazz : com.sun.tools.javac.tree.JCTree, expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast;
	
	@:overload @:public public function TypeTest(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, clazz : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_JCInstanceOf;
	
	@:overload @:public public function Indexed(indexed : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, index : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess;
	
	@:overload @:public public function Select(selected : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, selector : com.sun.tools.javac.util.Name) : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess;
	
	@:overload @:public public function Ident(name : com.sun.tools.javac.util.Name) : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent;
	
	@:overload @:public public function Literal(tag : Int, value : Dynamic) : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral;
	
	@:overload @:public public function TypeIdent(typetag : Int) : com.sun.tools.javac.tree.JCTree.JCTree_JCPrimitiveTypeTree;
	
	@:overload @:public public function TypeArray(elemtype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayTypeTree;
	
	@:overload @:public public function TypeApply(clazz : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, arguments : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply;
	
	@:overload @:public public function TypeUnion(components : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeUnion;
	
	@:overload @:public public function TypeParameter(name : com.sun.tools.javac.util.Name, bounds : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter;
	
	@:overload @:public public function Wildcard(kind : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind, type : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard;
	
	@:overload @:public public function TypeBoundKind(kind : com.sun.tools.javac.code.BoundKind) : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind;
	
	@:overload @:public public function Annotation(annotationType : com.sun.tools.javac.tree.JCTree, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation;
	
	@:overload @:public public function Modifiers(flags : haxe.Int64, annotations : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>) : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:overload @:public public function Modifiers(flags : haxe.Int64) : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:overload @:public public function Erroneous() : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous;
	
	@:overload @:public public function Erroneous(errs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous;
	
	@:overload @:public public function LetExpr(defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>, expr : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_LetExpr;
	
	/* ***************************************************************************
	* Derived building blocks.
	****************************************************************************/
	@:overload @:public public function AnonymousClassDef(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl;
	
	@:overload @:public public function LetExpr(def : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, expr : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_LetExpr;
	
	/** Create an identifier from a symbol.
	*/
	@:overload @:public public function Ident(sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent;
	
	/** Create a selection node from a qualifier tree and a symbol.
	*  @param base   The qualifier tree.
	*/
	@:overload @:public public function Select(base : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/** Create a qualified identifier from a symbol, adding enough qualifications
	*  to make the reference unique.
	*/
	@:overload @:public public function QualIdent(sym : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/** Create an identifier that refers to the variable declared in given variable
	*  declaration.
	*/
	@:overload @:public public function Ident(param : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/** Create a list of identifiers referring to the variables declared
	*  in given list of variable declarations.
	*/
	@:overload @:public public function Idents(params : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	/** Create a tree representing `this', given its type.
	*/
	@:overload @:public public function This(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/** Create a tree representing a class literal.
	*/
	@:overload @:public public function ClassLiteral(clazz : ClassSymbol) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/** Create a tree representing a class literal.
	*/
	@:overload @:public public function ClassLiteral(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/** Create a tree representing `super', given its type and owner.
	*/
	@:overload @:public public function Super(t : com.sun.tools.javac.code.Type, owner : TypeSymbol) : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent;
	
	/**
	* Create a method invocation from a method tree and a list of
	* argument trees.
	*/
	@:overload @:public public function App(meth : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation;
	
	/**
	* Create a no-arg method invocation from a method tree
	*/
	@:overload @:public public function App(meth : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation;
	
	/** Create a method invocation from a method tree and a list of argument trees.
	*/
	@:overload @:public public function Create(ctor : com.sun.tools.javac.code.Symbol, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/** Create a tree representing given type.
	*/
	@:overload @:public public function Type(t : com.sun.tools.javac.code.Type) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/** Create a list of trees representing given list of types.
	*/
	@:overload @:public public function Types(ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	/** Create a variable definition from a variable symbol and an initializer
	*  expression.
	*/
	@:overload @:public public function VarDef(v : VarSymbol, init : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl;
	
	/** Create annotation trees from annotations.
	*/
	@:overload @:public public function Annotations(attributes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Attribute.Attribute_Compound>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>;
	
	@:overload @:public public function Literal(value : Dynamic) : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral;
	
	/** Create an annotation tree from an attribute.
	*/
	@:overload @:public public function Annotation(a : com.sun.tools.javac.code.Attribute) : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation;
	
	/** Create a method definition from a method symbol and a method body.
	*/
	@:overload @:public public function MethodDef(m : MethodSymbol, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl;
	
	/** Create a method definition from a method symbol, method type
	*  and a method body.
	*/
	@:overload @:public public function MethodDef(m : MethodSymbol, mtype : com.sun.tools.javac.code.Type, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl;
	
	/** Create a type parameter tree from its name and type.
	*/
	@:overload @:public public function TypeParam(name : com.sun.tools.javac.util.Name, tvar : TypeVar) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter;
	
	/** Create a list of type parameter trees from a list of type variables.
	*/
	@:overload @:public public function TypeParams(typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>;
	
	/** Create a value parameter tree from its name, type, and owner.
	*/
	@:overload @:public public function Param(name : com.sun.tools.javac.util.Name, argtype : com.sun.tools.javac.code.Type, owner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl;
	
	/** Create a a list of value parameter trees x0, ..., xn from a list of
	*  their types and an their owner.
	*/
	@:overload @:public public function Params(argtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, owner : com.sun.tools.javac.code.Symbol) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>;
	
	/** Wrap a method invocation in an expression statement or return statement,
	*  depending on whether the method invocation expression's type is void.
	*/
	@:overload @:public public function Call(apply : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	/** Construct an assignment from a variable symbol and a right hand side.
	*/
	@:overload @:public public function Assignment(v : com.sun.tools.javac.code.Symbol, rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	/** Construct an index expression from a variable and an expression.
	*/
	@:overload @:public public function Indexed(v : com.sun.tools.javac.code.Symbol, index : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess;
	
	/** Make an attributed type cast expression.
	*/
	@:overload @:public public function TypeCast(type : com.sun.tools.javac.code.Type, expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast;
	
	/** The name of synthetic parameter number `i'.
	*/
	@:overload @:public public function paramName(i : Int) : com.sun.tools.javac.util.Name;
	
	/** The name of synthetic type parameter number `i'.
	*/
	@:overload @:public public function typaramName(i : Int) : com.sun.tools.javac.util.Name;
	
	
}
@:native('com$sun$tools$javac$tree$TreeMaker$AnnotationBuilder') @:internal extern class TreeMaker_AnnotationBuilder implements com.sun.tools.javac.code.Attribute.Attribute_Visitor
{
	@:overload @:public public function visitConstant(v : com.sun.tools.javac.code.Attribute.Attribute_Constant) : Void;
	
	@:overload @:public public function visitClass(clazz : com.sun.tools.javac.code.Attribute.Attribute_Class) : Void;
	
	@:overload @:public public function visitEnum(e : com.sun.tools.javac.code.Attribute.Attribute_Enum) : Void;
	
	@:overload @:public public function visitError(e : com.sun.tools.javac.code.Attribute.Attribute_Error) : Void;
	
	@:overload @:public public function visitCompound(compound : com.sun.tools.javac.code.Attribute.Attribute_Compound) : Void;
	
	@:overload @:public public function visitCompoundInternal(compound : com.sun.tools.javac.code.Attribute.Attribute_Compound) : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation;
	
	@:overload @:public public function visitArray(array : com.sun.tools.javac.code.Attribute.Attribute_Array) : Void;
	
	
}
