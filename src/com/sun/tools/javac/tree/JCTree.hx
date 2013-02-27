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
	public static var TOPLEVEL(default, null) : Int;
	
	/** Import clauses, of type Import.
	*/
	public static var IMPORT(default, null) : Int;
	
	/** Class definitions, of type ClassDef.
	*/
	public static var CLASSDEF(default, null) : Int;
	
	/** Method definitions, of type MethodDef.
	*/
	public static var METHODDEF(default, null) : Int;
	
	/** Variable definitions, of type VarDef.
	*/
	public static var VARDEF(default, null) : Int;
	
	/** The no-op statement ";", of type Skip
	*/
	public static var SKIP(default, null) : Int;
	
	/** Blocks, of type Block.
	*/
	public static var BLOCK(default, null) : Int;
	
	/** Do-while loops, of type DoLoop.
	*/
	public static var DOLOOP(default, null) : Int;
	
	/** While-loops, of type WhileLoop.
	*/
	public static var WHILELOOP(default, null) : Int;
	
	/** For-loops, of type ForLoop.
	*/
	public static var FORLOOP(default, null) : Int;
	
	/** Foreach-loops, of type ForeachLoop.
	*/
	public static var FOREACHLOOP(default, null) : Int;
	
	/** Labelled statements, of type Labelled.
	*/
	public static var LABELLED(default, null) : Int;
	
	/** Switch statements, of type Switch.
	*/
	public static var SWITCH(default, null) : Int;
	
	/** Case parts in switch statements, of type Case.
	*/
	public static var CASE(default, null) : Int;
	
	/** Synchronized statements, of type Synchonized.
	*/
	public static var SYNCHRONIZED(default, null) : Int;
	
	/** Try statements, of type Try.
	*/
	public static var TRY(default, null) : Int;
	
	/** Catch clauses in try statements, of type Catch.
	*/
	public static var CATCH(default, null) : Int;
	
	/** Conditional expressions, of type Conditional.
	*/
	public static var CONDEXPR(default, null) : Int;
	
	/** Conditional statements, of type If.
	*/
	public static var IF(default, null) : Int;
	
	/** Expression statements, of type Exec.
	*/
	public static var EXEC(default, null) : Int;
	
	/** Break statements, of type Break.
	*/
	public static var BREAK(default, null) : Int;
	
	/** Continue statements, of type Continue.
	*/
	public static var CONTINUE(default, null) : Int;
	
	/** Return statements, of type Return.
	*/
	public static var RETURN(default, null) : Int;
	
	/** Throw statements, of type Throw.
	*/
	public static var THROW(default, null) : Int;
	
	/** Assert statements, of type Assert.
	*/
	public static var ASSERT(default, null) : Int;
	
	/** Method invocation expressions, of type Apply.
	*/
	public static var APPLY(default, null) : Int;
	
	/** Class instance creation expressions, of type NewClass.
	*/
	public static var NEWCLASS(default, null) : Int;
	
	/** Array creation expressions, of type NewArray.
	*/
	public static var NEWARRAY(default, null) : Int;
	
	/** Parenthesized subexpressions, of type Parens.
	*/
	public static var PARENS(default, null) : Int;
	
	/** Assignment expressions, of type Assign.
	*/
	public static var ASSIGN(default, null) : Int;
	
	/** Type cast expressions, of type TypeCast.
	*/
	public static var TYPECAST(default, null) : Int;
	
	/** Type test expressions, of type TypeTest.
	*/
	public static var TYPETEST(default, null) : Int;
	
	/** Indexed array expressions, of type Indexed.
	*/
	public static var INDEXED(default, null) : Int;
	
	/** Selections, of type Select.
	*/
	public static var SELECT(default, null) : Int;
	
	/** Simple identifiers, of type Ident.
	*/
	public static var IDENT(default, null) : Int;
	
	/** Literals, of type Literal.
	*/
	public static var LITERAL(default, null) : Int;
	
	/** Basic type identifiers, of type TypeIdent.
	*/
	public static var TYPEIDENT(default, null) : Int;
	
	/** Array types, of type TypeArray.
	*/
	public static var TYPEARRAY(default, null) : Int;
	
	/** Parameterized types, of type TypeApply.
	*/
	public static var TYPEAPPLY(default, null) : Int;
	
	/** Union types, of type TypeUnion
	*/
	public static var TYPEUNION(default, null) : Int;
	
	/** Formal type parameters, of type TypeParameter.
	*/
	public static var TYPEPARAMETER(default, null) : Int;
	
	/** Type argument.
	*/
	public static var WILDCARD(default, null) : Int;
	
	/** Bound kind: extends, super, exact, or unbound
	*/
	public static var TYPEBOUNDKIND(default, null) : Int;
	
	/** metadata: Annotation.
	*/
	public static var ANNOTATION(default, null) : Int;
	
	/** metadata: Modifiers
	*/
	public static var MODIFIERS(default, null) : Int;
	
	public static var ANNOTATED_TYPE(default, null) : Int;
	
	/** Error trees, of type Erroneous.
	*/
	public static var ERRONEOUS(default, null) : Int;
	
	/** Unary operators, of type Unary.
	*/
	public static var POS(default, null) : Int;
	
	public static var NEG(default, null) : Int;
	
	public static var NOT(default, null) : Int;
	
	public static var COMPL(default, null) : Int;
	
	public static var PREINC(default, null) : Int;
	
	public static var PREDEC(default, null) : Int;
	
	public static var POSTINC(default, null) : Int;
	
	public static var POSTDEC(default, null) : Int;
	
	/** unary operator for null reference checks, only used internally.
	*/
	public static var NULLCHK(default, null) : Int;
	
	/** Binary operators, of type Binary.
	*/
	public static var OR(default, null) : Int;
	
	public static var AND(default, null) : Int;
	
	public static var BITOR(default, null) : Int;
	
	public static var BITXOR(default, null) : Int;
	
	public static var BITAND(default, null) : Int;
	
	public static var EQ(default, null) : Int;
	
	public static var NE(default, null) : Int;
	
	public static var LT(default, null) : Int;
	
	public static var GT(default, null) : Int;
	
	public static var LE(default, null) : Int;
	
	public static var GE(default, null) : Int;
	
	public static var SL(default, null) : Int;
	
	public static var SR(default, null) : Int;
	
	public static var USR(default, null) : Int;
	
	public static var PLUS(default, null) : Int;
	
	public static var MINUS(default, null) : Int;
	
	public static var MUL(default, null) : Int;
	
	public static var DIV(default, null) : Int;
	
	public static var MOD(default, null) : Int;
	
	/** Assignment operators, of type Assignop.
	*/
	public static var BITOR_ASG(default, null) : Int;
	
	public static var BITXOR_ASG(default, null) : Int;
	
	public static var BITAND_ASG(default, null) : Int;
	
	public static var SL_ASG(default, null) : Int;
	
	public static var SR_ASG(default, null) : Int;
	
	public static var USR_ASG(default, null) : Int;
	
	public static var PLUS_ASG(default, null) : Int;
	
	public static var MINUS_ASG(default, null) : Int;
	
	public static var MUL_ASG(default, null) : Int;
	
	public static var DIV_ASG(default, null) : Int;
	
	public static var MOD_ASG(default, null) : Int;
	
	/** A synthetic let expression, of type LetExpr.
	*/
	public static var LETEXPR(default, null) : Int;
	
	/** The offset between assignment operators and normal operators.
	*/
	public static var ASGOffset(default, null) : Int;
	
	/* The type of this node.
	*/
	public var type : com.sun.tools.javac.code.Type;
	
	/* The tag of this node -- one of the constants declared above.
	*/
	@:overload @:abstract public function getTag() : Int;
	
	/** Convert a tree to a pretty-printed string. */
	@:overload public function toString() : String;
	
	/** Set position field and return this tree.
	*/
	@:overload public function setPos(pos : Int) : JCTree;
	
	/** Set type field and return this tree.
	*/
	@:overload public function setType(type : com.sun.tools.javac.code.Type) : JCTree;
	
	/** Visit this tree with a given visitor.
	*/
	@:overload @:abstract public function accept(v : JCTree_Visitor) : Void;
	
	@:overload @:abstract public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	/** Return a shallow copy of this tree.
	*/
	@:overload public function clone() : Dynamic;
	
	/** Get a default position for this tree node.
	*/
	@:overload public function pos() : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition;
	
	@:overload public function getTree() : JCTree;
	
	@:overload public function getStartPosition() : Int;
	
	@:overload public function getPreferredPosition() : Int;
	
	@:overload public function getEndPosition(endPosTable : java.util.Map<JCTree, Null<Int>>) : Int;
	
	/**
	* Gets the kind of this tree.
	*
	* @return the kind of this tree.
	*/
	@:overload @:public @:public override public function getKind() : Tree_Kind;
	
	
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
@:native('com$sun$tools$javac$tree$JCTree$JCCompilationUnit') extern class JCTree_JCCompilationUnit extends JCTree implements com.sun.source.tree.CompilationUnitTree
{
	public var packageAnnotations : com.sun.tools.javac.util.List<JCTree_JCAnnotation>;
	
	public var pid : JCTree_JCExpression;
	
	public var defs : com.sun.tools.javac.util.List<JCTree>;
	
	public var sourcefile : javax.tools.JavaFileObject;
	
	public var packge : PackageSymbol;
	
	public var namedImportScope : ImportScope;
	
	public var starImportScope : StarImportScope;
	
	public var flags : haxe.Int64;
	
	public var lineMap : com.sun.tools.javac.util.Position.Position_LineMap;
	
	public var docComments : java.util.Map<JCTree, String>;
	
	public var endPositions : java.util.Map<JCTree, Null<Int>>;
	
	@:overload private function new(packageAnnotations : com.sun.tools.javac.util.List<JCTree_JCAnnotation>, pid : JCTree_JCExpression, defs : com.sun.tools.javac.util.List<JCTree>, sourcefile : javax.tools.JavaFileObject, packge : PackageSymbol, namedImportScope : ImportScope, starImportScope : StarImportScope) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getPackageAnnotations() : com.sun.tools.javac.util.List<JCTree_JCAnnotation>;
	
	@:overload public function getImports() : com.sun.tools.javac.util.List<JCTree_JCImport>;
	
	@:overload public function getPackageName() : JCTree_JCExpression;
	
	@:overload public function getSourceFile() : javax.tools.JavaFileObject;
	
	@:overload public function getLineMap() : com.sun.tools.javac.util.Position.Position_LineMap;
	
	@:overload public function getTypeDecls() : com.sun.tools.javac.util.List<JCTree>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* An import clause.
* @param qualid    The imported class(es).
*/
@:native('com$sun$tools$javac$tree$JCTree$JCImport') extern class JCTree_JCImport extends JCTree implements com.sun.source.tree.ImportTree
{
	public var staticImport : Bool;
	
	public var qualid : JCTree;
	
	@:overload private function new(qualid : JCTree, importStatic : Bool) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload public function isStatic() : Bool;
	
	@:overload public function getQualifiedIdentifier() : JCTree;
	
	@:overload override public function getKind() : Kind;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCStatement') extern class JCTree_JCStatement extends JCTree implements com.sun.source.tree.StatementTree
{
	@:overload override public function setType(type : com.sun.tools.javac.code.Type) : JCTree_JCStatement;
	
	@:overload override public function setPos(pos : Int) : JCTree_JCStatement;
	
	/**
	* Gets the kind of this tree.
	*
	* @return the kind of this tree.
	*/
	@:overload @:public override public function getKind() : Tree_Kind;
	
	/**
	* Accept method used to implement the visitor pattern.  The
	* visitor pattern is used to implement operations on trees.
	*
	* @param <R> result type of this operation.
	* @param <D> type of additonal data.
	*/
	@:overload @:public override public function accept<R, D>(visitor : com.sun.source.tree.TreeVisitor<R, D>, data : D) : R;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCExpression') extern class JCTree_JCExpression extends JCTree implements com.sun.source.tree.ExpressionTree
{
	@:overload override public function setType(type : com.sun.tools.javac.code.Type) : JCTree_JCExpression;
	
	@:overload override public function setPos(pos : Int) : JCTree_JCExpression;
	
	/**
	* Gets the kind of this tree.
	*
	* @return the kind of this tree.
	*/
	@:overload override public function getKind() : Tree_Kind;
	
	/**
	* Accept method used to implement the visitor pattern.  The
	* visitor pattern is used to implement operations on trees.
	*
	* @param <R> result type of this operation.
	* @param <D> type of additonal data.
	*/
	@:overload override public function accept<R, D>(visitor : com.sun.source.tree.TreeVisitor<R, D>, data : D) : R;
	
	
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
@:native('com$sun$tools$javac$tree$JCTree$JCClassDecl') extern class JCTree_JCClassDecl extends JCTree_JCStatement implements com.sun.source.tree.ClassTree
{
	public var mods : JCTree_JCModifiers;
	
	public var name : com.sun.tools.javac.util.Name;
	
	public var typarams : com.sun.tools.javac.util.List<JCTree_JCTypeParameter>;
	
	public var extending : JCTree_JCExpression;
	
	public var implementing : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	public var defs : com.sun.tools.javac.util.List<JCTree>;
	
	public var sym : ClassSymbol;
	
	@:overload private function new(mods : JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, typarams : com.sun.tools.javac.util.List<JCTree_JCTypeParameter>, extending : JCTree_JCExpression, implementing : com.sun.tools.javac.util.List<JCTree_JCExpression>, defs : com.sun.tools.javac.util.List<JCTree>, sym : ClassSymbol) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getModifiers() : JCTree_JCModifiers;
	
	@:overload public function getSimpleName() : com.sun.tools.javac.util.Name;
	
	@:overload public function getTypeParameters() : com.sun.tools.javac.util.List<JCTree_JCTypeParameter>;
	
	@:overload public function getExtendsClause() : JCTree;
	
	@:overload public function getImplementsClause() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload public function getMembers() : com.sun.tools.javac.util.List<JCTree>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
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
@:native('com$sun$tools$javac$tree$JCTree$JCMethodDecl') extern class JCTree_JCMethodDecl extends JCTree implements com.sun.source.tree.MethodTree
{
	public var mods : JCTree_JCModifiers;
	
	public var name : com.sun.tools.javac.util.Name;
	
	public var restype : JCTree_JCExpression;
	
	public var typarams : com.sun.tools.javac.util.List<JCTree_JCTypeParameter>;
	
	public var params : com.sun.tools.javac.util.List<JCTree_JCVariableDecl>;
	
	public var thrown : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	public var body : JCTree_JCBlock;
	
	public var defaultValue : JCTree_JCExpression;
	
	public var sym : MethodSymbol;
	
	@:overload private function new(mods : JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, restype : JCTree_JCExpression, typarams : com.sun.tools.javac.util.List<JCTree_JCTypeParameter>, params : com.sun.tools.javac.util.List<JCTree_JCVariableDecl>, thrown : com.sun.tools.javac.util.List<JCTree_JCExpression>, body : JCTree_JCBlock, defaultValue : JCTree_JCExpression, sym : MethodSymbol) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getModifiers() : JCTree_JCModifiers;
	
	@:overload public function getName() : com.sun.tools.javac.util.Name;
	
	@:overload public function getReturnType() : JCTree;
	
	@:overload public function getTypeParameters() : com.sun.tools.javac.util.List<JCTree_JCTypeParameter>;
	
	@:overload public function getParameters() : com.sun.tools.javac.util.List<JCTree_JCVariableDecl>;
	
	@:overload public function getThrows() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload public function getBody() : JCTree_JCBlock;
	
	@:overload public function getDefaultValue() : JCTree;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A variable definition.
* @param modifiers variable modifiers
* @param name variable name
* @param vartype type of the variable
* @param init variables initial value
* @param sym symbol
*/
@:native('com$sun$tools$javac$tree$JCTree$JCVariableDecl') extern class JCTree_JCVariableDecl extends JCTree_JCStatement implements com.sun.source.tree.VariableTree
{
	public var mods : JCTree_JCModifiers;
	
	public var name : com.sun.tools.javac.util.Name;
	
	public var vartype : JCTree_JCExpression;
	
	public var init : JCTree_JCExpression;
	
	public var sym : VarSymbol;
	
	@:overload private function new(mods : JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, vartype : JCTree_JCExpression, init : JCTree_JCExpression, sym : VarSymbol) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getModifiers() : JCTree_JCModifiers;
	
	@:overload public function getName() : com.sun.tools.javac.util.Name;
	
	@:overload public function getType() : JCTree;
	
	@:overload public function getInitializer() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A no-op statement ";".
*/
@:native('com$sun$tools$javac$tree$JCTree$JCSkip') extern class JCTree_JCSkip extends JCTree_JCStatement implements com.sun.source.tree.EmptyStatementTree
{
	@:overload private function new() : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A statement block.
* @param stats statements
* @param flags flags
*/
@:native('com$sun$tools$javac$tree$JCTree$JCBlock') extern class JCTree_JCBlock extends JCTree_JCStatement implements com.sun.source.tree.BlockTree
{
	public var flags : haxe.Int64;
	
	public var stats : com.sun.tools.javac.util.List<JCTree_JCStatement>;
	
	/** Position of closing brace, optional. */
	public var endpos : Int;
	
	@:overload private function new(flags : haxe.Int64, stats : com.sun.tools.javac.util.List<JCTree_JCStatement>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getStatements() : com.sun.tools.javac.util.List<JCTree_JCStatement>;
	
	@:overload public function isStatic() : Bool;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A do loop
*/
@:native('com$sun$tools$javac$tree$JCTree$JCDoWhileLoop') extern class JCTree_JCDoWhileLoop extends JCTree_JCStatement implements com.sun.source.tree.DoWhileLoopTree
{
	public var body : JCTree_JCStatement;
	
	public var cond : JCTree_JCExpression;
	
	@:overload private function new(body : JCTree_JCStatement, cond : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getCondition() : JCTree_JCExpression;
	
	@:overload public function getStatement() : JCTree_JCStatement;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A while loop
*/
@:native('com$sun$tools$javac$tree$JCTree$JCWhileLoop') extern class JCTree_JCWhileLoop extends JCTree_JCStatement implements com.sun.source.tree.WhileLoopTree
{
	public var cond : JCTree_JCExpression;
	
	public var body : JCTree_JCStatement;
	
	@:overload private function new(cond : JCTree_JCExpression, body : JCTree_JCStatement) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getCondition() : JCTree_JCExpression;
	
	@:overload public function getStatement() : JCTree_JCStatement;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A for loop.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCForLoop') extern class JCTree_JCForLoop extends JCTree_JCStatement implements com.sun.source.tree.ForLoopTree
{
	public var init : com.sun.tools.javac.util.List<JCTree_JCStatement>;
	
	public var cond : JCTree_JCExpression;
	
	public var step : com.sun.tools.javac.util.List<JCTree_JCExpressionStatement>;
	
	public var body : JCTree_JCStatement;
	
	@:overload private function new(init : com.sun.tools.javac.util.List<JCTree_JCStatement>, cond : JCTree_JCExpression, update : com.sun.tools.javac.util.List<JCTree_JCExpressionStatement>, body : JCTree_JCStatement) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getCondition() : JCTree_JCExpression;
	
	@:overload public function getStatement() : JCTree_JCStatement;
	
	@:overload public function getInitializer() : com.sun.tools.javac.util.List<JCTree_JCStatement>;
	
	@:overload public function getUpdate() : com.sun.tools.javac.util.List<JCTree_JCExpressionStatement>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* The enhanced for loop.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCEnhancedForLoop') extern class JCTree_JCEnhancedForLoop extends JCTree_JCStatement implements com.sun.source.tree.EnhancedForLoopTree
{
	//public var _var : JCTree_JCVariableDecl;
	
	public var expr : JCTree_JCExpression;
	
	public var body : JCTree_JCStatement;
	
	@:overload private function new(_var : JCTree_JCVariableDecl, expr : JCTree_JCExpression, body : JCTree_JCStatement) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getVariable() : JCTree_JCVariableDecl;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload public function getStatement() : JCTree_JCStatement;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A labelled expression or statement.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCLabeledStatement') extern class JCTree_JCLabeledStatement extends JCTree_JCStatement implements com.sun.source.tree.LabeledStatementTree
{
	public var label : com.sun.tools.javac.util.Name;
	
	public var body : JCTree_JCStatement;
	
	@:overload private function new(label : com.sun.tools.javac.util.Name, body : JCTree_JCStatement) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getLabel() : com.sun.tools.javac.util.Name;
	
	@:overload public function getStatement() : JCTree_JCStatement;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A "switch ( ) { }" construction.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCSwitch') extern class JCTree_JCSwitch extends JCTree_JCStatement implements com.sun.source.tree.SwitchTree
{
	public var selector : JCTree_JCExpression;
	
	public var cases : com.sun.tools.javac.util.List<JCTree_JCCase>;
	
	@:overload private function new(selector : JCTree_JCExpression, cases : com.sun.tools.javac.util.List<JCTree_JCCase>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload public function getCases() : com.sun.tools.javac.util.List<JCTree_JCCase>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A "case  :" of a switch.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCCase') extern class JCTree_JCCase extends JCTree_JCStatement implements com.sun.source.tree.CaseTree
{
	public var pat : JCTree_JCExpression;
	
	public var stats : com.sun.tools.javac.util.List<JCTree_JCStatement>;
	
	@:overload private function new(pat : JCTree_JCExpression, stats : com.sun.tools.javac.util.List<JCTree_JCStatement>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload public function getStatements() : com.sun.tools.javac.util.List<JCTree_JCStatement>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A synchronized block.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCSynchronized') extern class JCTree_JCSynchronized extends JCTree_JCStatement implements com.sun.source.tree.SynchronizedTree
{
	public var lock : JCTree_JCExpression;
	
	public var body : JCTree_JCBlock;
	
	@:overload private function new(lock : JCTree_JCExpression, body : JCTree_JCBlock) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload public function getBlock() : JCTree_JCBlock;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A "try { } catch ( ) { } finally { }" block.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTry') extern class JCTree_JCTry extends JCTree_JCStatement implements com.sun.source.tree.TryTree
{
	public var body : JCTree_JCBlock;
	
	public var catchers : com.sun.tools.javac.util.List<JCTree_JCCatch>;
	
	public var finalizer : JCTree_JCBlock;
	
	public var resources : com.sun.tools.javac.util.List<JCTree>;
	
	@:overload private function new(resources : com.sun.tools.javac.util.List<JCTree>, body : JCTree_JCBlock, catchers : com.sun.tools.javac.util.List<JCTree_JCCatch>, finalizer : JCTree_JCBlock) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getBlock() : JCTree_JCBlock;
	
	@:overload public function getCatches() : com.sun.tools.javac.util.List<JCTree_JCCatch>;
	
	@:overload public function getFinallyBlock() : JCTree_JCBlock;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload public function getResources() : com.sun.tools.javac.util.List<JCTree>;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A catch block.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCCatch') extern class JCTree_JCCatch extends JCTree implements com.sun.source.tree.CatchTree
{
	public var param : JCTree_JCVariableDecl;
	
	public var body : JCTree_JCBlock;
	
	@:overload private function new(param : JCTree_JCVariableDecl, body : JCTree_JCBlock) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getParameter() : JCTree_JCVariableDecl;
	
	@:overload public function getBlock() : JCTree_JCBlock;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A ( ) ? ( ) : ( ) conditional expression
*/
@:native('com$sun$tools$javac$tree$JCTree$JCConditional') extern class JCTree_JCConditional extends JCTree_JCExpression implements com.sun.source.tree.ConditionalExpressionTree
{
	public var cond : JCTree_JCExpression;
	
	public var truepart : JCTree_JCExpression;
	
	public var falsepart : JCTree_JCExpression;
	
	@:overload private function new(cond : JCTree_JCExpression, truepart : JCTree_JCExpression, falsepart : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getCondition() : JCTree_JCExpression;
	
	@:overload public function getTrueExpression() : JCTree_JCExpression;
	
	@:overload public function getFalseExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* An "if ( ) { } else { }" block
*/
@:native('com$sun$tools$javac$tree$JCTree$JCIf') extern class JCTree_JCIf extends JCTree_JCStatement implements com.sun.source.tree.IfTree
{
	public var cond : JCTree_JCExpression;
	
	public var thenpart : JCTree_JCStatement;
	
	public var elsepart : JCTree_JCStatement;
	
	@:overload private function new(cond : JCTree_JCExpression, thenpart : JCTree_JCStatement, elsepart : JCTree_JCStatement) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getCondition() : JCTree_JCExpression;
	
	@:overload public function getThenStatement() : JCTree_JCStatement;
	
	@:overload public function getElseStatement() : JCTree_JCStatement;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* an expression statement
* @param expr expression structure
*/
@:native('com$sun$tools$javac$tree$JCTree$JCExpressionStatement') extern class JCTree_JCExpressionStatement extends JCTree_JCStatement implements com.sun.source.tree.ExpressionStatementTree
{
	public var expr : JCTree_JCExpression;
	
	@:overload private function new(expr : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A break from a loop or switch.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCBreak') extern class JCTree_JCBreak extends JCTree_JCStatement implements com.sun.source.tree.BreakTree
{
	public var label : com.sun.tools.javac.util.Name;
	
	public var target : JCTree;
	
	@:overload private function new(label : com.sun.tools.javac.util.Name, target : JCTree) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getLabel() : com.sun.tools.javac.util.Name;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A continue of a loop.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCContinue') extern class JCTree_JCContinue extends JCTree_JCStatement implements com.sun.source.tree.ContinueTree
{
	public var label : com.sun.tools.javac.util.Name;
	
	public var target : JCTree;
	
	@:overload private function new(label : com.sun.tools.javac.util.Name, target : JCTree) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getLabel() : com.sun.tools.javac.util.Name;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A return statement.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCReturn') extern class JCTree_JCReturn extends JCTree_JCStatement implements com.sun.source.tree.ReturnTree
{
	public var expr : JCTree_JCExpression;
	
	@:overload private function new(expr : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A throw statement.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCThrow') extern class JCTree_JCThrow extends JCTree_JCStatement implements com.sun.source.tree.ThrowTree
{
	public var expr : JCTree_JCExpression;
	
	@:overload private function new(expr : JCTree) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* An assert statement.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCAssert') extern class JCTree_JCAssert extends JCTree_JCStatement implements com.sun.source.tree.AssertTree
{
	public var cond : JCTree_JCExpression;
	
	public var detail : JCTree_JCExpression;
	
	@:overload private function new(cond : JCTree_JCExpression, detail : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getCondition() : JCTree_JCExpression;
	
	@:overload public function getDetail() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A method invocation
*/
@:native('com$sun$tools$javac$tree$JCTree$JCMethodInvocation') extern class JCTree_JCMethodInvocation extends JCTree_JCExpression implements com.sun.source.tree.MethodInvocationTree
{
	public var typeargs : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	public var meth : JCTree_JCExpression;
	
	public var args : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	public var varargsElement : com.sun.tools.javac.code.Type;
	
	@:overload private function new(typeargs : com.sun.tools.javac.util.List<JCTree_JCExpression>, meth : JCTree_JCExpression, args : com.sun.tools.javac.util.List<JCTree_JCExpression>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getTypeArguments() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload public function getMethodSelect() : JCTree_JCExpression;
	
	@:overload public function getArguments() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function setType(type : com.sun.tools.javac.code.Type) : JCTree_JCMethodInvocation;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A new(...) operation.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCNewClass') extern class JCTree_JCNewClass extends JCTree_JCExpression implements com.sun.source.tree.NewClassTree
{
	public var encl : JCTree_JCExpression;
	
	public var typeargs : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	public var clazz : JCTree_JCExpression;
	
	public var args : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	public var def : JCTree_JCClassDecl;
	
	public var constructor : com.sun.tools.javac.code.Symbol;
	
	public var varargsElement : com.sun.tools.javac.code.Type;
	
	public var constructorType : com.sun.tools.javac.code.Type;
	
	@:overload private function new(encl : JCTree_JCExpression, typeargs : com.sun.tools.javac.util.List<JCTree_JCExpression>, clazz : JCTree_JCExpression, args : com.sun.tools.javac.util.List<JCTree_JCExpression>, def : JCTree_JCClassDecl) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getEnclosingExpression() : JCTree_JCExpression;
	
	@:overload public function getTypeArguments() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload public function getIdentifier() : JCTree_JCExpression;
	
	@:overload public function getArguments() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload public function getClassBody() : JCTree_JCClassDecl;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A new[...] operation.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCNewArray') extern class JCTree_JCNewArray extends JCTree_JCExpression implements com.sun.source.tree.NewArrayTree
{
	public var elemtype : JCTree_JCExpression;
	
	public var dims : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	public var elems : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload private function new(elemtype : JCTree_JCExpression, dims : com.sun.tools.javac.util.List<JCTree_JCExpression>, elems : com.sun.tools.javac.util.List<JCTree_JCExpression>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getType() : JCTree_JCExpression;
	
	@:overload public function getDimensions() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload public function getInitializers() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A parenthesized subexpression ( ... )
*/
@:native('com$sun$tools$javac$tree$JCTree$JCParens') extern class JCTree_JCParens extends JCTree_JCExpression implements com.sun.source.tree.ParenthesizedTree
{
	public var expr : JCTree_JCExpression;
	
	@:overload private function new(expr : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A assignment with "=".
*/
@:native('com$sun$tools$javac$tree$JCTree$JCAssign') extern class JCTree_JCAssign extends JCTree_JCExpression implements com.sun.source.tree.AssignmentTree
{
	public var lhs : JCTree_JCExpression;
	
	public var rhs : JCTree_JCExpression;
	
	@:overload private function new(lhs : JCTree_JCExpression, rhs : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getVariable() : JCTree_JCExpression;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* An assignment with "+=", "|=" ...
*/
@:native('com$sun$tools$javac$tree$JCTree$JCAssignOp') extern class JCTree_JCAssignOp extends JCTree_JCExpression implements com.sun.source.tree.CompoundAssignmentTree
{
	public var lhs : JCTree_JCExpression;
	
	public var rhs : JCTree_JCExpression;
	
	public var operator : com.sun.tools.javac.code.Symbol;
	
	@:overload private function new(opcode : Int, lhs : JCTree, rhs : JCTree, operator : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getVariable() : JCTree_JCExpression;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload public function getOperator() : com.sun.tools.javac.code.Symbol;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A unary operation.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCUnary') extern class JCTree_JCUnary extends JCTree_JCExpression implements com.sun.source.tree.UnaryTree
{
	public var arg : JCTree_JCExpression;
	
	public var operator : com.sun.tools.javac.code.Symbol;
	
	@:overload private function new(opcode : Int, arg : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload public function getOperator() : com.sun.tools.javac.code.Symbol;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	@:overload public function setTag(tag : Int) : Void;
	
	
}
/**
* A binary operation.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCBinary') extern class JCTree_JCBinary extends JCTree_JCExpression implements com.sun.source.tree.BinaryTree
{
	public var lhs : JCTree_JCExpression;
	
	public var rhs : JCTree_JCExpression;
	
	public var operator : com.sun.tools.javac.code.Symbol;
	
	@:overload private function new(opcode : Int, lhs : JCTree_JCExpression, rhs : JCTree_JCExpression, operator : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getLeftOperand() : JCTree_JCExpression;
	
	@:overload public function getRightOperand() : JCTree_JCExpression;
	
	@:overload public function getOperator() : com.sun.tools.javac.code.Symbol;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A type cast.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTypeCast') extern class JCTree_JCTypeCast extends JCTree_JCExpression implements com.sun.source.tree.TypeCastTree
{
	public var clazz : JCTree;
	
	public var expr : JCTree_JCExpression;
	
	@:overload private function new(clazz : JCTree, expr : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getType() : JCTree;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A type test.
*/
@:native('com$sun$tools$javac$tree$JCTree$JCInstanceOf') extern class JCTree_JCInstanceOf extends JCTree_JCExpression implements com.sun.source.tree.InstanceOfTree
{
	public var expr : JCTree_JCExpression;
	
	public var clazz : JCTree;
	
	@:overload private function new(expr : JCTree_JCExpression, clazz : JCTree) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getType() : JCTree;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* An array selection
*/
@:native('com$sun$tools$javac$tree$JCTree$JCArrayAccess') extern class JCTree_JCArrayAccess extends JCTree_JCExpression implements com.sun.source.tree.ArrayAccessTree
{
	public var indexed : JCTree_JCExpression;
	
	public var index : JCTree_JCExpression;
	
	@:overload private function new(indexed : JCTree_JCExpression, index : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload public function getIndex() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* Selects through packages and classes
* @param selected selected Tree hierarchie
* @param selector name of field to select thru
* @param sym symbol of the selected class
*/
@:native('com$sun$tools$javac$tree$JCTree$JCFieldAccess') extern class JCTree_JCFieldAccess extends JCTree_JCExpression implements com.sun.source.tree.MemberSelectTree
{
	public var selected : JCTree_JCExpression;
	
	public var name : com.sun.tools.javac.util.Name;
	
	public var sym : com.sun.tools.javac.code.Symbol;
	
	@:overload private function new(selected : JCTree_JCExpression, name : com.sun.tools.javac.util.Name, sym : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getExpression() : JCTree_JCExpression;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload public function getIdentifier() : com.sun.tools.javac.util.Name;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* An identifier
* @param idname the name
* @param sym the symbol
*/
@:native('com$sun$tools$javac$tree$JCTree$JCIdent') extern class JCTree_JCIdent extends JCTree_JCExpression implements com.sun.source.tree.IdentifierTree
{
	public var name : com.sun.tools.javac.util.Name;
	
	public var sym : com.sun.tools.javac.code.Symbol;
	
	@:overload private function new(name : com.sun.tools.javac.util.Name, sym : com.sun.tools.javac.code.Symbol) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getName() : com.sun.tools.javac.util.Name;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A constant value given literally.
* @param value value representation
*/
@:native('com$sun$tools$javac$tree$JCTree$JCLiteral') extern class JCTree_JCLiteral extends JCTree_JCExpression implements com.sun.source.tree.LiteralTree
{
	public var typetag : Int;
	
	public var value : Dynamic;
	
	@:overload private function new(typetag : Int, value : Dynamic) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function setType(type : com.sun.tools.javac.code.Type) : JCTree_JCLiteral;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* Identifies a basic type.
* @param tag the basic type id
* @see TypeTags
*/
@:native('com$sun$tools$javac$tree$JCTree$JCPrimitiveTypeTree') extern class JCTree_JCPrimitiveTypeTree extends JCTree_JCExpression implements com.sun.source.tree.PrimitiveTypeTree
{
	public var typetag : Int;
	
	@:overload private function new(typetag : Int) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getPrimitiveTypeKind() : javax.lang.model.type.TypeKind;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* An array type, A[]
*/
@:native('com$sun$tools$javac$tree$JCTree$JCArrayTypeTree') extern class JCTree_JCArrayTypeTree extends JCTree_JCExpression implements com.sun.source.tree.ArrayTypeTree
{
	public var elemtype : JCTree_JCExpression;
	
	@:overload private function new(elemtype : JCTree_JCExpression) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getType() : JCTree;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A parameterized type, T<...>
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTypeApply') extern class JCTree_JCTypeApply extends JCTree_JCExpression implements com.sun.source.tree.ParameterizedTypeTree
{
	public var clazz : JCTree_JCExpression;
	
	public var arguments : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload private function new(clazz : JCTree_JCExpression, arguments : com.sun.tools.javac.util.List<JCTree_JCExpression>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getType() : JCTree;
	
	@:overload public function getTypeArguments() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A union type, T1 | T2 | ... Tn (used in multicatch statements)
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTypeUnion') extern class JCTree_JCTypeUnion extends JCTree_JCExpression implements com.sun.source.tree.UnionTypeTree
{
	public var alternatives : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload private function new(components : com.sun.tools.javac.util.List<JCTree_JCExpression>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getTypeAlternatives() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/**
* A formal class parameter.
* @param name name
* @param bounds bounds
*/
@:native('com$sun$tools$javac$tree$JCTree$JCTypeParameter') extern class JCTree_JCTypeParameter extends JCTree implements com.sun.source.tree.TypeParameterTree
{
	public var name : com.sun.tools.javac.util.Name;
	
	public var bounds : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload private function new(name : com.sun.tools.javac.util.Name, bounds : com.sun.tools.javac.util.List<JCTree_JCExpression>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getName() : com.sun.tools.javac.util.Name;
	
	@:overload public function getBounds() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCWildcard') extern class JCTree_JCWildcard extends JCTree_JCExpression implements com.sun.source.tree.WildcardTree
{
	public var kind : JCTree_TypeBoundKind;
	
	public var inner : JCTree;
	
	@:overload private function new(kind : JCTree_TypeBoundKind, inner : JCTree) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getBound() : JCTree;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$TypeBoundKind') extern class JCTree_TypeBoundKind extends JCTree
{
	public var kind : com.sun.tools.javac.code.BoundKind;
	
	@:overload private function new(kind : com.sun.tools.javac.code.BoundKind) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCAnnotation') extern class JCTree_JCAnnotation extends JCTree_JCExpression implements com.sun.source.tree.AnnotationTree
{
	public var annotationType : JCTree;
	
	public var args : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload private function new(annotationType : JCTree, args : com.sun.tools.javac.util.List<JCTree_JCExpression>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getAnnotationType() : JCTree;
	
	@:overload public function getArguments() : com.sun.tools.javac.util.List<JCTree_JCExpression>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCModifiers') extern class JCTree_JCModifiers extends JCTree implements com.sun.source.tree.ModifiersTree
{
	public var flags : haxe.Int64;
	
	public var annotations : com.sun.tools.javac.util.List<JCTree_JCAnnotation>;
	
	@:overload private function new(flags : haxe.Int64, annotations : com.sun.tools.javac.util.List<JCTree_JCAnnotation>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getFlags() : java.util.Set<javax.lang.model.element.Modifier>;
	
	@:overload public function getAnnotations() : com.sun.tools.javac.util.List<JCTree_JCAnnotation>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
@:native('com$sun$tools$javac$tree$JCTree$JCErroneous') extern class JCTree_JCErroneous extends JCTree_JCExpression implements com.sun.source.tree.ErroneousTree
{
	public var errs : com.sun.tools.javac.util.List<JCTree>;
	
	@:overload private function new(errs : com.sun.tools.javac.util.List<JCTree>) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload public function getErrorTrees() : com.sun.tools.javac.util.List<JCTree>;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/** (let int x = 3; in x+2) */
@:native('com$sun$tools$javac$tree$JCTree$LetExpr') extern class JCTree_LetExpr extends JCTree_JCExpression
{
	public var defs : com.sun.tools.javac.util.List<JCTree_JCVariableDecl>;
	
	public var expr : JCTree;
	
	@:overload private function new(defs : com.sun.tools.javac.util.List<JCTree_JCVariableDecl>, expr : JCTree) : Void;
	
	@:overload override public function accept(v : JCTree_Visitor) : Void;
	
	@:overload override public function getKind() : Kind;
	
	@:overload override public function accept<R, D>(v : com.sun.source.tree.TreeVisitor<R, D>, d : D) : R;
	
	@:overload override public function getTag() : Int;
	
	
}
/** An interface for tree factories
*/
@:native('com$sun$tools$javac$tree$JCTree$Factory') extern interface JCTree_Factory
{
	@:overload public function TopLevel(packageAnnotations : com.sun.tools.javac.util.List<JCTree_JCAnnotation>, pid : JCTree_JCExpression, defs : com.sun.tools.javac.util.List<JCTree>) : JCTree_JCCompilationUnit;
	
	@:overload public function Import(qualid : JCTree, staticImport : Bool) : JCTree_JCImport;
	
	@:overload public function ClassDef(mods : JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, typarams : com.sun.tools.javac.util.List<JCTree_JCTypeParameter>, extending : JCTree_JCExpression, implementing : com.sun.tools.javac.util.List<JCTree_JCExpression>, defs : com.sun.tools.javac.util.List<JCTree>) : JCTree_JCClassDecl;
	
	@:overload public function MethodDef(mods : JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, restype : JCTree_JCExpression, typarams : com.sun.tools.javac.util.List<JCTree_JCTypeParameter>, params : com.sun.tools.javac.util.List<JCTree_JCVariableDecl>, thrown : com.sun.tools.javac.util.List<JCTree_JCExpression>, body : JCTree_JCBlock, defaultValue : JCTree_JCExpression) : JCTree_JCMethodDecl;
	
	@:overload public function VarDef(mods : JCTree_JCModifiers, name : com.sun.tools.javac.util.Name, vartype : JCTree_JCExpression, init : JCTree_JCExpression) : JCTree_JCVariableDecl;
	
	@:overload public function Skip() : JCTree_JCSkip;
	
	@:overload public function Block(flags : haxe.Int64, stats : com.sun.tools.javac.util.List<JCTree_JCStatement>) : JCTree_JCBlock;
	
	@:overload public function DoLoop(body : JCTree_JCStatement, cond : JCTree_JCExpression) : JCTree_JCDoWhileLoop;
	
	@:overload public function WhileLoop(cond : JCTree_JCExpression, body : JCTree_JCStatement) : JCTree_JCWhileLoop;
	
	@:overload public function ForLoop(init : com.sun.tools.javac.util.List<JCTree_JCStatement>, cond : JCTree_JCExpression, step : com.sun.tools.javac.util.List<JCTree_JCExpressionStatement>, body : JCTree_JCStatement) : JCTree_JCForLoop;
	
	@:overload public function ForeachLoop(_var : JCTree_JCVariableDecl, expr : JCTree_JCExpression, body : JCTree_JCStatement) : JCTree_JCEnhancedForLoop;
	
	@:overload public function Labelled(label : com.sun.tools.javac.util.Name, body : JCTree_JCStatement) : JCTree_JCLabeledStatement;
	
	@:overload public function Switch(selector : JCTree_JCExpression, cases : com.sun.tools.javac.util.List<JCTree_JCCase>) : JCTree_JCSwitch;
	
	@:overload public function Case(pat : JCTree_JCExpression, stats : com.sun.tools.javac.util.List<JCTree_JCStatement>) : JCTree_JCCase;
	
	@:overload public function Synchronized(lock : JCTree_JCExpression, body : JCTree_JCBlock) : JCTree_JCSynchronized;
	
	@:overload public function Try(body : JCTree_JCBlock, catchers : com.sun.tools.javac.util.List<JCTree_JCCatch>, finalizer : JCTree_JCBlock) : JCTree_JCTry;
	
	@:overload public function Try(resources : com.sun.tools.javac.util.List<JCTree>, body : JCTree_JCBlock, catchers : com.sun.tools.javac.util.List<JCTree_JCCatch>, finalizer : JCTree_JCBlock) : JCTree_JCTry;
	
	@:overload public function Catch(param : JCTree_JCVariableDecl, body : JCTree_JCBlock) : JCTree_JCCatch;
	
	@:overload public function Conditional(cond : JCTree_JCExpression, thenpart : JCTree_JCExpression, elsepart : JCTree_JCExpression) : JCTree_JCConditional;
	
	@:overload public function If(cond : JCTree_JCExpression, thenpart : JCTree_JCStatement, elsepart : JCTree_JCStatement) : JCTree_JCIf;
	
	@:overload public function Exec(expr : JCTree_JCExpression) : JCTree_JCExpressionStatement;
	
	@:overload public function Break(label : com.sun.tools.javac.util.Name) : JCTree_JCBreak;
	
	@:overload public function Continue(label : com.sun.tools.javac.util.Name) : JCTree_JCContinue;
	
	@:overload public function Return(expr : JCTree_JCExpression) : JCTree_JCReturn;
	
	@:overload public function Throw(expr : JCTree) : JCTree_JCThrow;
	
	@:overload public function Assert(cond : JCTree_JCExpression, detail : JCTree_JCExpression) : JCTree_JCAssert;
	
	@:overload public function Apply(typeargs : com.sun.tools.javac.util.List<JCTree_JCExpression>, fn : JCTree_JCExpression, args : com.sun.tools.javac.util.List<JCTree_JCExpression>) : JCTree_JCMethodInvocation;
	
	@:overload public function NewClass(encl : JCTree_JCExpression, typeargs : com.sun.tools.javac.util.List<JCTree_JCExpression>, clazz : JCTree_JCExpression, args : com.sun.tools.javac.util.List<JCTree_JCExpression>, def : JCTree_JCClassDecl) : JCTree_JCNewClass;
	
	@:overload public function NewArray(elemtype : JCTree_JCExpression, dims : com.sun.tools.javac.util.List<JCTree_JCExpression>, elems : com.sun.tools.javac.util.List<JCTree_JCExpression>) : JCTree_JCNewArray;
	
	@:overload public function Parens(expr : JCTree_JCExpression) : JCTree_JCParens;
	
	@:overload public function Assign(lhs : JCTree_JCExpression, rhs : JCTree_JCExpression) : JCTree_JCAssign;
	
	@:overload public function Assignop(opcode : Int, lhs : JCTree, rhs : JCTree) : JCTree_JCAssignOp;
	
	@:overload public function Unary(opcode : Int, arg : JCTree_JCExpression) : JCTree_JCUnary;
	
	@:overload public function Binary(opcode : Int, lhs : JCTree_JCExpression, rhs : JCTree_JCExpression) : JCTree_JCBinary;
	
	@:overload public function TypeCast(expr : JCTree, type : JCTree_JCExpression) : JCTree_JCTypeCast;
	
	@:overload public function TypeTest(expr : JCTree_JCExpression, clazz : JCTree) : JCTree_JCInstanceOf;
	
	@:overload public function Indexed(indexed : JCTree_JCExpression, index : JCTree_JCExpression) : JCTree_JCArrayAccess;
	
	@:overload public function Select(selected : JCTree_JCExpression, selector : com.sun.tools.javac.util.Name) : JCTree_JCFieldAccess;
	
	@:overload public function Ident(idname : com.sun.tools.javac.util.Name) : JCTree_JCIdent;
	
	@:overload public function Literal(tag : Int, value : Dynamic) : JCTree_JCLiteral;
	
	@:overload public function TypeIdent(typetag : Int) : JCTree_JCPrimitiveTypeTree;
	
	@:overload public function TypeArray(elemtype : JCTree_JCExpression) : JCTree_JCArrayTypeTree;
	
	@:overload public function TypeApply(clazz : JCTree_JCExpression, arguments : com.sun.tools.javac.util.List<JCTree_JCExpression>) : JCTree_JCTypeApply;
	
	@:overload public function TypeParameter(name : com.sun.tools.javac.util.Name, bounds : com.sun.tools.javac.util.List<JCTree_JCExpression>) : JCTree_JCTypeParameter;
	
	@:overload public function Wildcard(kind : JCTree_TypeBoundKind, type : JCTree) : JCTree_JCWildcard;
	
	@:overload public function TypeBoundKind(kind : com.sun.tools.javac.code.BoundKind) : JCTree_TypeBoundKind;
	
	@:overload public function Annotation(annotationType : JCTree, args : com.sun.tools.javac.util.List<JCTree_JCExpression>) : JCTree_JCAnnotation;
	
	@:overload public function Modifiers(flags : haxe.Int64, annotations : com.sun.tools.javac.util.List<JCTree_JCAnnotation>) : JCTree_JCModifiers;
	
	@:overload public function Erroneous(errs : com.sun.tools.javac.util.List<JCTree>) : JCTree_JCErroneous;
	
	@:overload public function LetExpr(defs : com.sun.tools.javac.util.List<JCTree_JCVariableDecl>, expr : JCTree) : JCTree_LetExpr;
	
	
}
/** A generic visitor class for trees.
*/
@:native('com$sun$tools$javac$tree$JCTree$Visitor') extern class JCTree_Visitor
{
	@:overload public function visitTopLevel(that : JCTree_JCCompilationUnit) : Void;
	
	@:overload public function visitImport(that : JCTree_JCImport) : Void;
	
	@:overload public function visitClassDef(that : JCTree_JCClassDecl) : Void;
	
	@:overload public function visitMethodDef(that : JCTree_JCMethodDecl) : Void;
	
	@:overload public function visitVarDef(that : JCTree_JCVariableDecl) : Void;
	
	@:overload public function visitSkip(that : JCTree_JCSkip) : Void;
	
	@:overload public function visitBlock(that : JCTree_JCBlock) : Void;
	
	@:overload public function visitDoLoop(that : JCTree_JCDoWhileLoop) : Void;
	
	@:overload public function visitWhileLoop(that : JCTree_JCWhileLoop) : Void;
	
	@:overload public function visitForLoop(that : JCTree_JCForLoop) : Void;
	
	@:overload public function visitForeachLoop(that : JCTree_JCEnhancedForLoop) : Void;
	
	@:overload public function visitLabelled(that : JCTree_JCLabeledStatement) : Void;
	
	@:overload public function visitSwitch(that : JCTree_JCSwitch) : Void;
	
	@:overload public function visitCase(that : JCTree_JCCase) : Void;
	
	@:overload public function visitSynchronized(that : JCTree_JCSynchronized) : Void;
	
	@:overload public function visitTry(that : JCTree_JCTry) : Void;
	
	@:overload public function visitCatch(that : JCTree_JCCatch) : Void;
	
	@:overload public function visitConditional(that : JCTree_JCConditional) : Void;
	
	@:overload public function visitIf(that : JCTree_JCIf) : Void;
	
	@:overload public function visitExec(that : JCTree_JCExpressionStatement) : Void;
	
	@:overload public function visitBreak(that : JCTree_JCBreak) : Void;
	
	@:overload public function visitContinue(that : JCTree_JCContinue) : Void;
	
	@:overload public function visitReturn(that : JCTree_JCReturn) : Void;
	
	@:overload public function visitThrow(that : JCTree_JCThrow) : Void;
	
	@:overload public function visitAssert(that : JCTree_JCAssert) : Void;
	
	@:overload public function visitApply(that : JCTree_JCMethodInvocation) : Void;
	
	@:overload public function visitNewClass(that : JCTree_JCNewClass) : Void;
	
	@:overload public function visitNewArray(that : JCTree_JCNewArray) : Void;
	
	@:overload public function visitParens(that : JCTree_JCParens) : Void;
	
	@:overload public function visitAssign(that : JCTree_JCAssign) : Void;
	
	@:overload public function visitAssignop(that : JCTree_JCAssignOp) : Void;
	
	@:overload public function visitUnary(that : JCTree_JCUnary) : Void;
	
	@:overload public function visitBinary(that : JCTree_JCBinary) : Void;
	
	@:overload public function visitTypeCast(that : JCTree_JCTypeCast) : Void;
	
	@:overload public function visitTypeTest(that : JCTree_JCInstanceOf) : Void;
	
	@:overload public function visitIndexed(that : JCTree_JCArrayAccess) : Void;
	
	@:overload public function visitSelect(that : JCTree_JCFieldAccess) : Void;
	
	@:overload public function visitIdent(that : JCTree_JCIdent) : Void;
	
	@:overload public function visitLiteral(that : JCTree_JCLiteral) : Void;
	
	@:overload public function visitTypeIdent(that : JCTree_JCPrimitiveTypeTree) : Void;
	
	@:overload public function visitTypeArray(that : JCTree_JCArrayTypeTree) : Void;
	
	@:overload public function visitTypeApply(that : JCTree_JCTypeApply) : Void;
	
	@:overload public function visitTypeUnion(that : JCTree_JCTypeUnion) : Void;
	
	@:overload public function visitTypeParameter(that : JCTree_JCTypeParameter) : Void;
	
	@:overload public function visitWildcard(that : JCTree_JCWildcard) : Void;
	
	@:overload public function visitTypeBoundKind(that : JCTree_TypeBoundKind) : Void;
	
	@:overload public function visitAnnotation(that : JCTree_JCAnnotation) : Void;
	
	@:overload public function visitModifiers(that : JCTree_JCModifiers) : Void;
	
	@:overload public function visitErroneous(that : JCTree_JCErroneous) : Void;
	
	@:overload public function visitLetExpr(that : JCTree_LetExpr) : Void;
	
	@:overload public function visitTree(that : JCTree) : Void;
	
	
}
