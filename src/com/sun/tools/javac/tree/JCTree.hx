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
/**
* Root class for abstract syntax tree nodes. It provides definitions
* for specific tree nodes as subclasses nested inside.
*
* <p>Each subclass is highly standardized.  It generally contains
* only tree fields for the syntactic subcomponents of the node.  Some
* classes that represent identifier uses or definitions also define a
* Symbol field that denotes the represented identifier.  Classes for
* non-local jumps also carry the jump target as a field.  The root
* class Tree itself defines fields for the tree's type and position.
* No other fields are kept in a tree node; instead parameters are
* passed to methods accessing the node.
*
* <p>Except for the methods defined by com.sun.source, the only
* method defined in subclasses is `visit' which applies a given
* visitor to the tree. The actual tree processing is done by visitor
* classes in other packages. The abstract class Visitor, as well as
* an Factory interface for trees, are defined as inner classes in
* Tree.
*
* <p>To avoid ambiguities with the Tree API in com.sun.source all sub
* classes should, by convention, start with JC (javac).
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*
* @see TreeMaker
* @see TreeInfo
* @see TreeTranslator
* @see Pretty
*/
extern class JCTree implements com.sun.source.tree.Tree implements java.lang.Cloneable implements com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition
{
	/** Toplevel nodes, of type TopLevel, representing entire source files.
	*/
	@:public @:static @:final public static var TOPLEVEL(default, null) : Int;
	
	/** Import clauses, of type Import.
	*/
	@:public @:static @:final public static var IMPORT(default, null) : Int;
	
	/** Class definitions, of type ClassDef.
	*/
	@:public @:static @:final public static var CLASSDEF(default, null) : Int;
	
	/** Method definitions, of type MethodDef.
	*/
	@:public @:static @:final public static var METHODDEF(default, null) : Int;
	
	/** Variable definitions, of type VarDef.
	*/
	@:public @:static @:final public static var VARDEF(default, null) : Int;
	
	/** The no-op statement ";", of type Skip
	*/
	@:public @:static @:final public static var SKIP(default, null) : Int;
	
	/** Blocks, of type Block.
	*/
	@:public @:static @:final public static var BLOCK(default, null) : Int;
	
	/** Do-while loops, of type DoLoop.
	*/
	@:public @:static @:final public static var DOLOOP(default, null) : Int;
	
	/** While-loops, of type WhileLoop.
	*/
	@:public @:static @:final public static var WHILELOOP(default, null) : Int;
	
	/** For-loops, of type ForLoop.
	*/
	@:public @:static @:final public static var FORLOOP(default, null) : Int;
	
	/** Foreach-loops, of type ForeachLoop.
	*/
	@:public @:static @:final public static var FOREACHLOOP(default, null) : Int;
	
	/** Labelled statements, of type Labelled.
	*/
	@:public @:static @:final public static var LABELLED(default, null) : Int;
	
	/** Switch statements, of type Switch.
	*/
	@:public @:static @:final public static var SWITCH(default, null) : Int;
	
	/** Case parts in switch statements, of type Case.
	*/
	@:public @:static @:final public static var CASE(default, null) : Int;
	
	/** Synchronized statements, of type Synchonized.
	*/
	@:public @:static @:final public static var SYNCHRONIZED(default, null) : Int;
	
	/** Try statements, of type Try.
	*/
	@:public @:static @:final public static var TRY(default, null) : Int;
	
	/** Catch clauses in try statements, of type Catch.
	*/
	@:public @:static @:final public static var CATCH(default, null) : Int;
	
	/** Conditional expressions, of type Conditional.
	*/
	@:public @:static @:final public static var CONDEXPR(default, null) : Int;
	
	/** Conditional statements, of type If.
	*/
	@:public @:static @:final public static var IF(default, null) : Int;
	
	/** Expression statements, of type Exec.
	*/
	@:public @:static @:final public static var EXEC(default, null) : Int;
	
	/** Break statements, of type Break.
	*/
	@:public @:static @:final public static var BREAK(default, null) : Int;
	
	/** Continue statements, of type Continue.
	*/
	@:public @:static @:final public static var CONTINUE(default, null) : Int;
	
	/** Return statements, of type Return.
	*/
	@:public @:static @:final public static var RETURN(default, null) : Int;
	
	/** Throw statements, of type Throw.
	*/
	@:public @:static @:final public static var THROW(default, null) : Int;
	
	/** Assert statements, of type Assert.
	*/
	@:public @:static @:final public static var ASSERT(default, null) : Int;
	
	/** Method invocation expressions, of type Apply.
	*/
	@:public @:static @:final public static var APPLY(default, null) : Int;
	
	/** Class instance creation expressions, of type NewClass.
	*/
	@:public @:static @:final public static var NEWCLASS(default, null) : Int;
	
	/** Array creation expressions, of type NewArray.
	*/
	@:public @:static @:final public static var NEWARRAY(default, null) : Int;
	
	/** Parenthesized subexpressions, of type Parens.
	*/
	@:public @:static @:final public static var PARENS(default, null) : Int;
	
	/** Assignment expressions, of type Assign.
	*/
	@:public @:static @:final public static var ASSIGN(default, null) : Int;
	
	/** Type cast expressions, of type TypeCast.
	*/
	@:public @:static @:final public static var TYPECAST(default, null) : Int;
	
	/** Type test expressions, of type TypeTest.
	*/
	@:public @:static @:final public static var TYPETEST(default, null) : Int;
	
	/** Indexed array expressions, of type Indexed.
	*/
	@:public @:static @:final public static var INDEXED(default, null) : Int;
	
	/** Selections, of type Select.
	*/
	@:public @:static @:final public static var SELECT(default, null) : Int;
	
	/** Simple identifiers, of type Ident.
	*/
	@:public @:static @:final public static var IDENT(default, null) : Int;
	
	/** Literals, of type Literal.
	*/
	@:public @:static @:final public static var LITERAL(default, null) : Int;
	
	/** Basic type identifiers, of type TypeIdent.
	*/
	@:public @:static @:final public static var TYPEIDENT(default, null) : Int;
	
	/** Array types, of type TypeArray.
	*/
	@:public @:static @:final public static var TYPEARRAY(default, null) : Int;
	
	/** Parameterized types, of type TypeApply.
	*/
	@:public @:static @:final public static var TYPEAPPLY(default, null) : Int;
	
	/** Union types, of type TypeUnion
	*/
	@:public @:static @:final public static var TYPEUNION(default, null) : Int;
	
	/** Formal type parameters, of type TypeParameter.
	*/
	@:public @:static @:final public static var TYPEPARAMETER(default, null) : Int;
	
	/** Type argument.
	*/
	@:public @:static @:final public static var WILDCARD(default, null) : Int;
	
	/** Bound kind: extends, super, exact, or unbound
	*/
	@:public @:static @:final public static var TYPEBOUNDKIND(default, null) : Int;
	
	/** metadata: Annotation.
	*/
	@:public @:static @:final public static var ANNOTATION(default, null) : Int;
	
	/** metadata: Modifiers
	*/
	@:public @:static @:final public static var MODIFIERS(default, null) : Int;
	
	@:public @:static @:final public static var ANNOTATED_TYPE(default, null) : Int;
	
	/** Error trees, of type Erroneous.
	*/
	@:public @:static @:final public static var ERRONEOUS(default, null) : Int;
	
	/** Unary operators, of type Unary.
	*/
	@:public @:static @:final public static var POS(default, null) : Int;
	
	@:public @:static @:final public static var NEG(default, null) : Int;
	
	@:public @:static @:final public static var NOT(default, null) : Int;
	
	@:public @:static @:final public static var COMPL(default, null) : Int;
	
	@:public @:static @:final public static var PREINC(default, null) : Int;
	
	@:public @:static @:final public static var PREDEC(default, null) : Int;
	
	@:public @:static @:final public static var POSTINC(default, null) : Int;
	
	@:public @:static @:final public static var POSTDEC(default, null) : Int;
	
	/** unary operator for null reference checks, only used internally.
	*/
	@:public @:static @:final public static var NULLCHK(default, null) : Int;
	
	/** Binary operators, of type Binary.
	*/
	@:public @:static @:final public static var OR(default, null) : Int;
	
	@:public @:static @:final public static var AND(default, null) : Int;
	
	@:public @:static @:final public static var BITOR(default, null) : Int;
	
	@:public @:static @:final public static var BITXOR(default, null) : Int;
	
	@:public @:static @:final public static var BITAND(default, null) : Int;
	
	@:public @:static @:final public static var EQ(default, null) : Int;
	
	@:public @:static @:final public static var NE(default, null) : Int;
	
	@:public @:static @:final public static var LT(default, null) : Int;
	
	@:public @:static @:final public static var GT(default, null) : Int;
	
	@:public @:static @:final public static var LE(default, null) : Int;
	
	@:public @:static @:final public static var GE(default, null) : Int;
	
	@:public @:static @:final public static var SL(default, null) : Int;
	
	@:public @:static @:final public static var SR(default, null) : Int;
	
	@:public @:static @:final public static var USR(default, null) : Int;
	
	@:public @:static @:final public static var PLUS(default, null) : Int;
	
	@:public @:static @:final public static var MINUS(default, null) : Int;
	
	@:public @:static @:final public static var MUL(default, null) : Int;
	
	@:public @:static @:final public static var DIV(default, null) : Int;
	
	@:public @:static @:final public static var MOD(default, null) : Int;
	
	/** Assignment operators, of type Assignop.
	*/
	@:public @:static @:final public static var BITOR_ASG(default, null) : Int;
	
	@:public @:static @:final public static var BITXOR_ASG(default, null) : Int;
	
	@:public @:static @:final public static var BITAND_ASG(default, null) : Int;
	
	@:public @:static @:final public static var SL_ASG(default, null) : Int;
	
	@:public @:static @:final public static var SR_ASG(default, null) : Int;
	
	@:public @:static @:final public static var USR_ASG(default, null) : Int;
	
	@:public @:static @:final public static var PLUS_ASG(default, null) : Int;
	
	@:public @:static @:final public static var MINUS_ASG(default, null) : Int;
	
	@:public @:static @:final public static var MUL_ASG(default, null) : Int;
	
	@:public @:static @:final public static var DIV_ASG(default, null) : Int;
	
	@:public @:static @:final public static var MOD_ASG(default, null) : Int;
	
	/** A synthetic let expression, of type LetExpr.
	*/
	@:public @:static @:final public static var LETEXPR(default, null) : Int;
	
	/** The offset between assignment operators and normal operators.
	*/
	@:public @:static @:final public static var ASGOffset(default, null) : Int;
	
	/* The type of this node.
	*/
	@:public public var type : com.sun.tools.javac.code.Type;
	
	/* The tag of this node -- one of the constants declared above.
	*/
	@:overload @:public @:abstract public function getTag() : Int;
	
	/** Convert a tree to a pretty-printed string. */
	@:overload @:public public function toString() : String;
	
	/** Set position field and return this tree.
	*/
	@:overload @:public public function setPos(pos : Int) : com.sun.tools.javac.tree.JCTree;
	
	/** Set type field and return this tree.
	*/
	@:overload @:public public function setType(type : com.sun.tools.javac.code.Type) : com.sun.tools.javac.tree.JCTree;
	
	/** Visit this tree with a given visitor.
	*/
	@:overload @:public @:abstract public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public @:abstract public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	/** Return a shallow copy of this tree.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/** Get a default position for this tree node.
	*/
	@:overload @:public public function pos() : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition;
	
	@:overload @:public public function getTree() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getStartPosition() : Int;
	
	@:overload @:public public function getPreferredPosition() : Int;
	
	@:overload @:public public function getEndPosition(endPosTable : java.util.Map<com.sun.tools.javac.tree.JCTree, Null<Int>>) : Int;
	
	/**
	* Gets the kind of this tree.
	*
	* @return the kind of this tree.
	*/
	@:overload @:public public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	
}
/**
* Everything in one source file is kept in a TopLevel structure.
* @param pid              The tree representing the package clause.
* @param sourcefile       The source file name.
* @param defs             All definitions in this file (ClassDef, Import, and Skip)
* @param packge           The package it belongs to.
* @param namedImportScope A scope for all named imports.
* @param starImportScope  A scope for all import-on-demands.
* @param lineMap          Line starting positions, defined only
*                         if option -g is set.
* @param docComments      A hashtable that stores all documentation comments
*                         indexed by the tree nodes they refer to.
*                         defined only if option -s is set.
* @param endPositions     A hashtable that stores ending positions of source
*                         ranges indexed by the tree nodes they belong to.
*                         Defined only if option -Xjcov is set.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCCompilationUnit') extern class JCTree_JCCompilationUnit extends com.sun.tools.javac.tree.JCTree implements com.sun.source.tree.CompilationUnitTree
{
	@:public public var packageAnnotations : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>;
	
	@:public public var pid : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	@:public public var sourcefile : javax.tools.JavaFileObject;
	
	@:public public var packge : PackageSymbol;
	
	@:public public var namedImportScope : ImportScope;
	
	@:public public var starImportScope : StarImportScope;
	
	@:public public var flags : haxe.Int64;
	
	@:public public var lineMap : com.sun.tools.javac.util.Position.Position_LineMap;
	
	@:public public var docComments : java.util.Map<com.sun.tools.javac.tree.JCTree, String>;
	
	@:public public var endPositions : java.util.Map<com.sun.tools.javac.tree.JCTree, Null<Int>>;
	
	@:overload @:protected private function new(packageAnnotations : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>, pid : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>, sourcefile : javax.tools.JavaFileObject, packge : PackageSymbol, namedImportScope : ImportScope, starImportScope : StarImportScope) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getPackageAnnotations() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>;
	
	@:overload @:public public function getImports() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCImport>;
	
	@:overload @:public public function getPackageName() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getSourceFile() : javax.tools.JavaFileObject;
	
	@:overload @:public public function getLineMap() : com.sun.tools.javac.util.Position.Position_LineMap;
	
	@:overload @:public public function getTypeDecls() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* An import clause.
* @param qualid    The imported class(es).
*/
@:native('com$sun$tools$javac$tree$JCTree$JCImport') extern class JCTree_JCImport extends com.sun.tools.javac.tree.JCTree implements com.sun.source.tree.ImportTree
{
	@:public public var staticImport : Bool;
	
	@:public public var qualid : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:protected private function new(qualid : com.sun.tools.javac.tree.JCTree, importStatic : Bool) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public public function isStatic() : Bool;
	
	@:overload @:public public function getQualifiedIdentifier() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCStatement') extern class JCTree_JCStatement extends com.sun.tools.javac.tree.JCTree implements com.sun.source.tree.StatementTree
{
	@:overload @:public override public function setType(type : com.sun.tools.javac.code.Type) : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:public override public function setPos(pos : Int) : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	/**
	* Gets the kind of this tree.
	*
	* @return the kind of this tree.
	*/
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	/**
	* Accept method used to implement the visitor pattern.  The
	* visitor pattern is used to implement operations on trees.
	*
	* @param <R> result type of this operation.
	* @param <D> type of additonal data.
	*/
	@:overload @:public override public function accept<R, D>(visitor : com.sun.source.tree.TreeVisitor<R, D>, data : D) : R;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCExpression') extern class JCTree_JCExpression extends com.sun.tools.javac.tree.JCTree implements com.sun.source.tree.ExpressionTree
{
	@:overload @:public override public function setType(type : com.sun.tools.javac.code.Type) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function setPos(pos : Int) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	/**
	* Gets the kind of this tree.
	*
	* @return the kind of this tree.
	*/
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	/**
	* Accept method used to implement the visitor pattern.  The
	* visitor pattern is used to implement operations on trees.
	*
	* @param <R> result type of this operation.
	* @param <D> type of additonal data.
	*/
	@:overload @:public override public function accept<R, D>(visitor : com.sun.source.tree.TreeVisitor<R, D>, data : D) : R;
	
	
}
/**
* A class definition.
* @param modifiers the modifiers
* @param name the name of the class
* @param typarams formal class parameters
* @param extending the classes this class extends
* @param implementing the interfaces implemented by this class
* @param defs all variables and methods defined in this class
* @param sym the symbol
*/
@:native('com$sun$tools$javac$tree$JCTree$JCClassDecl') extern class JCTree_JCClassDecl extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.ClassTree
{
	@:public public var mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:public public var name : com.sun.tools.javac.util.Name;
	
	@:public public var typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>;
	
	@:public public var extending : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var implementing : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:public public var defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	@:public public var sym : ClassSymbol;
	
	@:overload @:protected private function new(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>, extending : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, implementing : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>, sym : ClassSymbol) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getModifiers() : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:overload @:public public function getSimpleName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function getTypeParameters() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>;
	
	@:overload @:public public function getExtendsClause() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getImplementsClause() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public public function getMembers() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A method definition.
* @param modifiers method modifiers
* @param name method name
* @param restype type of method return value
* @param typarams type parameters
* @param params value parameters
* @param thrown exceptions thrown by this method
* @param stats statements in the method
* @param sym method symbol
*/
@:native('com$sun$tools$javac$tree$JCTree$JCMethodDecl') extern class JCTree_JCMethodDecl extends com.sun.tools.javac.tree.JCTree implements com.sun.source.tree.MethodTree
{
	@:public public var mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:public public var name : com.sun.tools.javac.util.Name;
	
	@:public public var restype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>;
	
	@:public public var params : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>;
	
	@:public public var thrown : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:public public var defaultValue : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var sym : MethodSymbol;
	
	@:overload @:protected private function new(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, restype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>, params : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>, thrown : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock, defaultValue : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, sym : MethodSymbol) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getModifiers() : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:overload @:public public function getName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function getReturnType() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getTypeParameters() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>;
	
	@:overload @:public public function getParameters() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>;
	
	@:overload @:public public function getThrows() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public public function getBody() : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload @:public public function getDefaultValue() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A variable definition.
* @param modifiers variable modifiers
* @param name variable name
* @param vartype type of the variable
* @param init variables initial value
* @param sym symbol
*/
@:native('com$sun$tools$javac$tree$JCTree$JCVariableDecl') extern class JCTree_JCVariableDecl extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.VariableTree
{
	@:public public var mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:public public var name : com.sun.tools.javac.util.Name;
	
	@:public public var vartype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var init : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var sym : VarSymbol;
	
	@:overload @:protected private function new(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, vartype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, init : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, sym : VarSymbol) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getModifiers() : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:overload @:public public function getName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function getType() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getInitializer() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A no-op statement ";".
*/
@:native('com$sun$tools$javac$tree$JCTree$JCSkip') extern class JCTree_JCSkip extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.EmptyStatementTree
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A statement block.
* @param stats statements
* @param flags flags
*/
@:native('com$sun$tools$javac$tree$JCTree$JCBlock') extern class JCTree_JCBlock extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.BlockTree
{
	@:public public var flags : haxe.Int64;
	
	@:public public var stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>;
	
	/** Position of closing brace, optional. */
	@:public public var endpos : Int;
	
	@:overload @:protected private function new(flags : haxe.Int64, stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getStatements() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>;
	
	@:overload @:public public function isStatic() : Bool;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A do loop
*/
@:native('com$sun$tools$javac$tree$JCTree$JCDoWhileLoop') extern class JCTree_JCDoWhileLoop extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.DoWhileLoopTree
{
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:public public var cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement, cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getCondition() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getStatement() : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A while loop
*/
@:native('com$sun$tools$javac$tree$JCTree$JCWhileLoop') extern class JCTree_JCWhileLoop extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.WhileLoopTree
{
	@:public public var cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:protected private function new(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getCondition() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getStatement() : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A for loop.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCForLoop') extern class JCTree_JCForLoop extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.ForLoopTree
{
	@:public public var init : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>;
	
	@:public public var cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var step : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement>;
	
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:protected private function new(init : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>, cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, update : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getCondition() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getStatement() : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:public public function getInitializer() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>;
	
	@:overload @:public public function getUpdate() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* The enhanced for loop.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCEnhancedForLoop') extern class JCTree_JCEnhancedForLoop extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.EnhancedForLoopTree
{
	//@:public public var _var : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl;
	
	@:public public var expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:protected private function new(_var : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getVariable() : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getStatement() : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A labelled expression or statement.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCLabeledStatement') extern class JCTree_JCLabeledStatement extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.LabeledStatementTree
{
	@:public public var label : com.sun.tools.javac.util.Name;
	
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:protected private function new(label : com.sun.tools.javac.util.Name, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getLabel() : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function getStatement() : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A "switch ( ) { }" construction.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCSwitch') extern class JCTree_JCSwitch extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.SwitchTree
{
	@:public public var selector : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var cases : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCase>;
	
	@:overload @:protected private function new(selector : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, cases : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCase>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getCases() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCase>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A "case  :" of a switch.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCCase') extern class JCTree_JCCase extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.CaseTree
{
	@:public public var pat : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>;
	
	@:overload @:protected private function new(pat : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getStatements() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A synchronized block.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCSynchronized') extern class JCTree_JCSynchronized extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.SynchronizedTree
{
	@:public public var lock : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload @:protected private function new(lock : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getBlock() : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A "try { } catch ( ) { } finally { }" block.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTry') extern class JCTree_JCTry extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.TryTree
{
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:public public var catchers : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>;
	
	@:public public var finalizer : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:public public var resources : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	@:overload @:protected private function new(resources : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock, catchers : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>, finalizer : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getBlock() : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload @:public public function getCatches() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>;
	
	@:overload @:public public function getFinallyBlock() : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public public function getResources() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A catch block.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCCatch') extern class JCTree_JCCatch extends com.sun.tools.javac.tree.JCTree implements com.sun.source.tree.CatchTree
{
	@:public public var param : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl;
	
	@:public public var body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload @:protected private function new(param : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getParameter() : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl;
	
	@:overload @:public public function getBlock() : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A ( ) ? ( ) : ( ) conditional expression
*/
@:native('com$sun$tools$javac$tree$JCTree$JCConditional') extern class JCTree_JCConditional extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.ConditionalExpressionTree
{
	@:public public var cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var truepart : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var falsepart : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, truepart : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, falsepart : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getCondition() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getTrueExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getFalseExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* An "if ( ) { } else { }" block
*/
@:native('com$sun$tools$javac$tree$JCTree$JCIf') extern class JCTree_JCIf extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.IfTree
{
	@:public public var cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var thenpart : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:public public var elsepart : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:protected private function new(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, thenpart : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement, elsepart : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getCondition() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getThenStatement() : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:public public function getElseStatement() : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* an expression statement
* @param expr expression structure
*/
@:native('com$sun$tools$javac$tree$JCTree$JCExpressionStatement') extern class JCTree_JCExpressionStatement extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.ExpressionStatementTree
{
	@:public public var expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A break from a loop or switch.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCBreak') extern class JCTree_JCBreak extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.BreakTree
{
	@:public public var label : com.sun.tools.javac.util.Name;
	
	@:public public var target : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:protected private function new(label : com.sun.tools.javac.util.Name, target : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getLabel() : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A continue of a loop.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCContinue') extern class JCTree_JCContinue extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.ContinueTree
{
	@:public public var label : com.sun.tools.javac.util.Name;
	
	@:public public var target : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:protected private function new(label : com.sun.tools.javac.util.Name, target : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getLabel() : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A return statement.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCReturn') extern class JCTree_JCReturn extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.ReturnTree
{
	@:public public var expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A throw statement.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCThrow') extern class JCTree_JCThrow extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.ThrowTree
{
	@:public public var expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(expr : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* An assert statement.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCAssert') extern class JCTree_JCAssert extends com.sun.tools.javac.tree.JCTree.JCTree_JCStatement implements com.sun.source.tree.AssertTree
{
	@:public public var cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var detail : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, detail : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getCondition() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getDetail() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A method invocation
*/
@:native('com$sun$tools$javac$tree$JCTree$JCMethodInvocation') extern class JCTree_JCMethodInvocation extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.MethodInvocationTree
{
	@:public public var typeargs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:public public var meth : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:public public var varargsElement : com.sun.tools.javac.code.Type;
	
	@:overload @:protected private function new(typeargs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, meth : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getTypeArguments() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public public function getMethodSelect() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getArguments() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function setType(type : com.sun.tools.javac.code.Type) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A new(...) operation.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCNewClass') extern class JCTree_JCNewClass extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.NewClassTree
{
	@:public public var encl : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var typeargs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:public public var clazz : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:public public var def : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl;
	
	@:public public var constructor : com.sun.tools.javac.code.Symbol;
	
	@:public public var varargsElement : com.sun.tools.javac.code.Type;
	
	@:public public var constructorType : com.sun.tools.javac.code.Type;
	
	@:overload @:protected private function new(encl : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, typeargs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, clazz : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, def : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getEnclosingExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getTypeArguments() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public public function getIdentifier() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getArguments() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public public function getClassBody() : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A new[...] operation.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCNewArray') extern class JCTree_JCNewArray extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.NewArrayTree
{
	@:public public var elemtype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var dims : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:public public var elems : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:protected private function new(elemtype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, dims : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, elems : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getType() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getDimensions() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public public function getInitializers() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A parenthesized subexpression ( ... )
*/
@:native('com$sun$tools$javac$tree$JCTree$JCParens') extern class JCTree_JCParens extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.ParenthesizedTree
{
	@:public public var expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A assignment with "=".
*/
@:native('com$sun$tools$javac$tree$JCTree$JCAssign') extern class JCTree_JCAssign extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.AssignmentTree
{
	@:public public var lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getVariable() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* An assignment with "+=", "|=" ...
*/
@:native('com$sun$tools$javac$tree$JCTree$JCAssignOp') extern class JCTree_JCAssignOp extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.CompoundAssignmentTree
{
	@:public public var lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var operator : com.sun.tools.javac.code.Symbol;
	
	@:overload @:protected private function new(opcode : Int, lhs : com.sun.tools.javac.tree.JCTree, rhs : com.sun.tools.javac.tree.JCTree, operator : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getVariable() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getOperator() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A unary operation.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCUnary') extern class JCTree_JCUnary extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.UnaryTree
{
	@:public public var arg : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var operator : com.sun.tools.javac.code.Symbol;
	
	@:overload @:protected private function new(opcode : Int, arg : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getOperator() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	@:overload @:public public function setTag(tag : Int) : Void;
	
	
}
/**
* A binary operation.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCBinary') extern class JCTree_JCBinary extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.BinaryTree
{
	@:public public var lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var operator : com.sun.tools.javac.code.Symbol;
	
	@:overload @:protected private function new(opcode : Int, lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, operator : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getLeftOperand() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getRightOperand() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getOperator() : com.sun.tools.javac.code.Symbol;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A type cast.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTypeCast') extern class JCTree_JCTypeCast extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.TypeCastTree
{
	@:public public var clazz : com.sun.tools.javac.tree.JCTree;
	
	@:public public var expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(clazz : com.sun.tools.javac.tree.JCTree, expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getType() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A type test.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCInstanceOf') extern class JCTree_JCInstanceOf extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.InstanceOfTree
{
	@:public public var expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var clazz : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:protected private function new(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, clazz : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getType() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* An array selection
*/
@:native('com$sun$tools$javac$tree$JCTree$JCArrayAccess') extern class JCTree_JCArrayAccess extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.ArrayAccessTree
{
	@:public public var indexed : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var index : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(indexed : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, index : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public public function getIndex() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* Selects through packages and classes
* @param selected selected Tree hierarchie
* @param selector name of field to select thru
* @param sym symbol of the selected class
*/
@:native('com$sun$tools$javac$tree$JCTree$JCFieldAccess') extern class JCTree_JCFieldAccess extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.MemberSelectTree
{
	@:public public var selected : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var name : com.sun.tools.javac.util.Name;
	
	@:public public var sym : com.sun.tools.javac.code.Symbol;
	
	@:overload @:protected private function new(selected : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, name : com.sun.tools.javac.util.Name, sym : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getExpression() : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public public function getIdentifier() : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* An identifier
* @param idname the name
* @param sym the symbol
*/
@:native('com$sun$tools$javac$tree$JCTree$JCIdent') extern class JCTree_JCIdent extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.IdentifierTree
{
	@:public public var name : com.sun.tools.javac.util.Name;
	
	@:public public var sym : com.sun.tools.javac.code.Symbol;
	
	@:overload @:protected private function new(name : com.sun.tools.javac.util.Name, sym : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A constant value given literally.
* @param value value representation
*/
@:native('com$sun$tools$javac$tree$JCTree$JCLiteral') extern class JCTree_JCLiteral extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.LiteralTree
{
	@:public public var typetag : Int;
	
	@:public public var value : Dynamic;
	
	@:overload @:protected private function new(typetag : Int, value : Dynamic) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getValue() : Dynamic;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function setType(type : com.sun.tools.javac.code.Type) : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* Identifies a basic type.
* @param tag the basic type id
* @see TypeTags
*/
@:native('com$sun$tools$javac$tree$JCTree$JCPrimitiveTypeTree') extern class JCTree_JCPrimitiveTypeTree extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.PrimitiveTypeTree
{
	@:public public var typetag : Int;
	
	@:overload @:protected private function new(typetag : Int) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getPrimitiveTypeKind() : javax.lang.model.type.TypeKind;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* An array type, A[]
*/
@:native('com$sun$tools$javac$tree$JCTree$JCArrayTypeTree') extern class JCTree_JCArrayTypeTree extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.ArrayTypeTree
{
	@:public public var elemtype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:overload @:protected private function new(elemtype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getType() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A parameterized type, T<...>
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTypeApply') extern class JCTree_JCTypeApply extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.ParameterizedTypeTree
{
	@:public public var clazz : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression;
	
	@:public public var arguments : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:protected private function new(clazz : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, arguments : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getType() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getTypeArguments() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A union type, T1 | T2 | ... Tn (used in multicatch statements)
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTypeUnion') extern class JCTree_JCTypeUnion extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.UnionTypeTree
{
	@:public public var alternatives : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:protected private function new(components : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getTypeAlternatives() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/**
* A formal class parameter.
* @param name name
* @param bounds bounds
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTypeParameter') extern class JCTree_JCTypeParameter extends com.sun.tools.javac.tree.JCTree implements com.sun.source.tree.TypeParameterTree
{
	@:public public var name : com.sun.tools.javac.util.Name;
	
	@:public public var bounds : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:protected private function new(name : com.sun.tools.javac.util.Name, bounds : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getName() : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function getBounds() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCWildcard') extern class JCTree_JCWildcard extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.WildcardTree
{
	@:public public var kind : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind;
	
	@:public public var inner : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:protected private function new(kind : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind, inner : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getBound() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$TypeBoundKind') extern class JCTree_TypeBoundKind extends com.sun.tools.javac.tree.JCTree
{
	@:public public var kind : com.sun.tools.javac.code.BoundKind;
	
	@:overload @:protected private function new(kind : com.sun.tools.javac.code.BoundKind) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCAnnotation') extern class JCTree_JCAnnotation extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.AnnotationTree
{
	@:public public var annotationType : com.sun.tools.javac.tree.JCTree;
	
	@:public public var args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:protected private function new(annotationType : com.sun.tools.javac.tree.JCTree, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getAnnotationType() : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getArguments() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCModifiers') extern class JCTree_JCModifiers extends com.sun.tools.javac.tree.JCTree implements com.sun.source.tree.ModifiersTree
{
	@:public public var flags : haxe.Int64;
	
	@:public public var annotations : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>;
	
	@:overload @:protected private function new(flags : haxe.Int64, annotations : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getFlags() : java.util.Set<javax.lang.model.element.Modifier>;
	
	@:overload @:public public function getAnnotations() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCErroneous') extern class JCTree_JCErroneous extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression implements com.sun.source.tree.ErroneousTree
{
	@:public public var errs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	@:overload @:protected private function new(errs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public public function getErrorTrees() : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/** (let int x = 3; in x+2) */
@:native('com$sun$tools$javac$tree$JCTree$LetExpr') extern class JCTree_LetExpr extends com.sun.tools.javac.tree.JCTree.JCTree_JCExpression
{
	@:public public var defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>;
	
	@:public public var expr : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:protected private function new(defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>, expr : com.sun.tools.javac.tree.JCTree) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.tree.JCTree.JCTree_Visitor) : Void;
	
	@:overload @:public override public function getKind() : com.sun.source.tree.Tree.Tree_Kind;
	
	@:overload @:public override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload @:public override public function getTag() : Int;
	
	
}
/** An interface for tree factories
*/
@:native('com$sun$tools$javac$tree$JCTree$Factory') extern interface JCTree_Factory
{
	@:overload public function TopLevel(packageAnnotations : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>, pid : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit;
	
	@:overload public function Import(qualid : com.sun.tools.javac.tree.JCTree, staticImport : Bool) : com.sun.tools.javac.tree.JCTree.JCTree_JCImport;
	
	@:overload public function ClassDef(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>, extending : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, implementing : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl;
	
	@:overload public function MethodDef(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, restype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, typarams : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter>, params : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>, thrown : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock, defaultValue : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl;
	
	@:overload public function VarDef(mods : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, vartype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, init : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl;
	
	@:overload public function Skip() : com.sun.tools.javac.tree.JCTree.JCTree_JCSkip;
	
	@:overload public function Block(flags : haxe.Int64, stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>) : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock;
	
	@:overload public function DoLoop(body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement, cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCDoWhileLoop;
	
	@:overload public function WhileLoop(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCWhileLoop;
	
	@:overload public function ForLoop(init : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>, cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, step : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCForLoop;
	
	@:overload public function ForeachLoop(_var : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCEnhancedForLoop;
	
	@:overload public function Labelled(label : com.sun.tools.javac.util.Name, body : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCLabeledStatement;
	
	@:overload public function Switch(selector : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, cases : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCase>) : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch;
	
	@:overload public function Case(pat : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, stats : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCStatement>) : com.sun.tools.javac.tree.JCTree.JCTree_JCCase;
	
	@:overload public function Synchronized(lock : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCSynchronized;
	
	@:overload public function Try(body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock, catchers : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>, finalizer : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCTry;
	
	@:overload public function Try(resources : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock, catchers : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCCatch>, finalizer : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCTry;
	
	@:overload public function Catch(param : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl, body : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : com.sun.tools.javac.tree.JCTree.JCTree_JCCatch;
	
	@:overload public function Conditional(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, thenpart : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, elsepart : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional;
	
	@:overload public function If(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, thenpart : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement, elsepart : com.sun.tools.javac.tree.JCTree.JCTree_JCStatement) : com.sun.tools.javac.tree.JCTree.JCTree_JCIf;
	
	@:overload public function Exec(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement;
	
	@:overload public function Break(label : com.sun.tools.javac.util.Name) : com.sun.tools.javac.tree.JCTree.JCTree_JCBreak;
	
	@:overload public function Continue(label : com.sun.tools.javac.util.Name) : com.sun.tools.javac.tree.JCTree.JCTree_JCContinue;
	
	@:overload public function Return(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn;
	
	@:overload public function Throw(expr : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_JCThrow;
	
	@:overload public function Assert(cond : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, detail : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCAssert;
	
	@:overload public function Apply(typeargs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, fn : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation;
	
	@:overload public function NewClass(encl : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, typeargs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, clazz : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, def : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass;
	
	@:overload public function NewArray(elemtype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, dims : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>, elems : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray;
	
	@:overload public function Parens(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCParens;
	
	@:overload public function Assign(lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign;
	
	@:overload public function Assignop(opcode : Int, lhs : com.sun.tools.javac.tree.JCTree, rhs : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp;
	
	@:overload public function Unary(opcode : Int, arg : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary;
	
	@:overload public function Binary(opcode : Int, lhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, rhs : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary;
	
	@:overload public function TypeCast(expr : com.sun.tools.javac.tree.JCTree, type : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast;
	
	@:overload public function TypeTest(expr : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, clazz : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_JCInstanceOf;
	
	@:overload public function Indexed(indexed : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, index : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess;
	
	@:overload public function Select(selected : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, selector : com.sun.tools.javac.util.Name) : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess;
	
	@:overload public function Ident(idname : com.sun.tools.javac.util.Name) : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent;
	
	@:overload public function Literal(tag : Int, value : Dynamic) : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral;
	
	@:overload public function TypeIdent(typetag : Int) : com.sun.tools.javac.tree.JCTree.JCTree_JCPrimitiveTypeTree;
	
	@:overload public function TypeArray(elemtype : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression) : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayTypeTree;
	
	@:overload public function TypeApply(clazz : com.sun.tools.javac.tree.JCTree.JCTree_JCExpression, arguments : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply;
	
	@:overload public function TypeParameter(name : com.sun.tools.javac.util.Name, bounds : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter;
	
	@:overload public function Wildcard(kind : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind, type : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard;
	
	@:overload public function TypeBoundKind(kind : com.sun.tools.javac.code.BoundKind) : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind;
	
	@:overload public function Annotation(annotationType : com.sun.tools.javac.tree.JCTree, args : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCExpression>) : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation;
	
	@:overload public function Modifiers(flags : haxe.Int64, annotations : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation>) : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers;
	
	@:overload public function Erroneous(errs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>) : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous;
	
	@:overload public function LetExpr(defs : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl>, expr : com.sun.tools.javac.tree.JCTree) : com.sun.tools.javac.tree.JCTree.JCTree_LetExpr;
	
	
}
/** A generic visitor class for trees.
*/
@:native('com$sun$tools$javac$tree$JCTree$Visitor') extern class JCTree_Visitor
{
	@:overload @:public public function visitTopLevel(that : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit) : Void;
	
	@:overload @:public public function visitImport(that : com.sun.tools.javac.tree.JCTree.JCTree_JCImport) : Void;
	
	@:overload @:public public function visitClassDef(that : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl) : Void;
	
	@:overload @:public public function visitMethodDef(that : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl) : Void;
	
	@:overload @:public public function visitVarDef(that : com.sun.tools.javac.tree.JCTree.JCTree_JCVariableDecl) : Void;
	
	@:overload @:public public function visitSkip(that : com.sun.tools.javac.tree.JCTree.JCTree_JCSkip) : Void;
	
	@:overload @:public public function visitBlock(that : com.sun.tools.javac.tree.JCTree.JCTree_JCBlock) : Void;
	
	@:overload @:public public function visitDoLoop(that : com.sun.tools.javac.tree.JCTree.JCTree_JCDoWhileLoop) : Void;
	
	@:overload @:public public function visitWhileLoop(that : com.sun.tools.javac.tree.JCTree.JCTree_JCWhileLoop) : Void;
	
	@:overload @:public public function visitForLoop(that : com.sun.tools.javac.tree.JCTree.JCTree_JCForLoop) : Void;
	
	@:overload @:public public function visitForeachLoop(that : com.sun.tools.javac.tree.JCTree.JCTree_JCEnhancedForLoop) : Void;
	
	@:overload @:public public function visitLabelled(that : com.sun.tools.javac.tree.JCTree.JCTree_JCLabeledStatement) : Void;
	
	@:overload @:public public function visitSwitch(that : com.sun.tools.javac.tree.JCTree.JCTree_JCSwitch) : Void;
	
	@:overload @:public public function visitCase(that : com.sun.tools.javac.tree.JCTree.JCTree_JCCase) : Void;
	
	@:overload @:public public function visitSynchronized(that : com.sun.tools.javac.tree.JCTree.JCTree_JCSynchronized) : Void;
	
	@:overload @:public public function visitTry(that : com.sun.tools.javac.tree.JCTree.JCTree_JCTry) : Void;
	
	@:overload @:public public function visitCatch(that : com.sun.tools.javac.tree.JCTree.JCTree_JCCatch) : Void;
	
	@:overload @:public public function visitConditional(that : com.sun.tools.javac.tree.JCTree.JCTree_JCConditional) : Void;
	
	@:overload @:public public function visitIf(that : com.sun.tools.javac.tree.JCTree.JCTree_JCIf) : Void;
	
	@:overload @:public public function visitExec(that : com.sun.tools.javac.tree.JCTree.JCTree_JCExpressionStatement) : Void;
	
	@:overload @:public public function visitBreak(that : com.sun.tools.javac.tree.JCTree.JCTree_JCBreak) : Void;
	
	@:overload @:public public function visitContinue(that : com.sun.tools.javac.tree.JCTree.JCTree_JCContinue) : Void;
	
	@:overload @:public public function visitReturn(that : com.sun.tools.javac.tree.JCTree.JCTree_JCReturn) : Void;
	
	@:overload @:public public function visitThrow(that : com.sun.tools.javac.tree.JCTree.JCTree_JCThrow) : Void;
	
	@:overload @:public public function visitAssert(that : com.sun.tools.javac.tree.JCTree.JCTree_JCAssert) : Void;
	
	@:overload @:public public function visitApply(that : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodInvocation) : Void;
	
	@:overload @:public public function visitNewClass(that : com.sun.tools.javac.tree.JCTree.JCTree_JCNewClass) : Void;
	
	@:overload @:public public function visitNewArray(that : com.sun.tools.javac.tree.JCTree.JCTree_JCNewArray) : Void;
	
	@:overload @:public public function visitParens(that : com.sun.tools.javac.tree.JCTree.JCTree_JCParens) : Void;
	
	@:overload @:public public function visitAssign(that : com.sun.tools.javac.tree.JCTree.JCTree_JCAssign) : Void;
	
	@:overload @:public public function visitAssignop(that : com.sun.tools.javac.tree.JCTree.JCTree_JCAssignOp) : Void;
	
	@:overload @:public public function visitUnary(that : com.sun.tools.javac.tree.JCTree.JCTree_JCUnary) : Void;
	
	@:overload @:public public function visitBinary(that : com.sun.tools.javac.tree.JCTree.JCTree_JCBinary) : Void;
	
	@:overload @:public public function visitTypeCast(that : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeCast) : Void;
	
	@:overload @:public public function visitTypeTest(that : com.sun.tools.javac.tree.JCTree.JCTree_JCInstanceOf) : Void;
	
	@:overload @:public public function visitIndexed(that : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayAccess) : Void;
	
	@:overload @:public public function visitSelect(that : com.sun.tools.javac.tree.JCTree.JCTree_JCFieldAccess) : Void;
	
	@:overload @:public public function visitIdent(that : com.sun.tools.javac.tree.JCTree.JCTree_JCIdent) : Void;
	
	@:overload @:public public function visitLiteral(that : com.sun.tools.javac.tree.JCTree.JCTree_JCLiteral) : Void;
	
	@:overload @:public public function visitTypeIdent(that : com.sun.tools.javac.tree.JCTree.JCTree_JCPrimitiveTypeTree) : Void;
	
	@:overload @:public public function visitTypeArray(that : com.sun.tools.javac.tree.JCTree.JCTree_JCArrayTypeTree) : Void;
	
	@:overload @:public public function visitTypeApply(that : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeApply) : Void;
	
	@:overload @:public public function visitTypeUnion(that : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeUnion) : Void;
	
	@:overload @:public public function visitTypeParameter(that : com.sun.tools.javac.tree.JCTree.JCTree_JCTypeParameter) : Void;
	
	@:overload @:public public function visitWildcard(that : com.sun.tools.javac.tree.JCTree.JCTree_JCWildcard) : Void;
	
	@:overload @:public public function visitTypeBoundKind(that : com.sun.tools.javac.tree.JCTree.JCTree_TypeBoundKind) : Void;
	
	@:overload @:public public function visitAnnotation(that : com.sun.tools.javac.tree.JCTree.JCTree_JCAnnotation) : Void;
	
	@:overload @:public public function visitModifiers(that : com.sun.tools.javac.tree.JCTree.JCTree_JCModifiers) : Void;
	
	@:overload @:public public function visitErroneous(that : com.sun.tools.javac.tree.JCTree.JCTree_JCErroneous) : Void;
	
	@:overload @:public public function visitLetExpr(that : com.sun.tools.javac.tree.JCTree.JCTree_LetExpr) : Void;
	
	@:overload @:public public function visitTree(that : com.sun.tools.javac.tree.JCTree) : Void;
	
	
}
