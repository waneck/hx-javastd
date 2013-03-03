package com.sun.tools.javac.parser;
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
/** The parser maps a token sequence into an abstract syntax
*  tree. It operates by recursive descent, with code derived
*  systematically from an LL(1) grammar. For efficiency reasons, an
*  operator precedence scheme is used for parsing binary operation
*  expressions.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class JavacParser implements com.sun.tools.javac.parser.Parser
{
	/** The scanner used for lexical analysis.
	*/
	@:protected private var S : com.sun.tools.javac.parser.Lexer;
	
	/** The factory to be used for abstract syntax tree construction.
	*/
	@:protected private var F : com.sun.tools.javac.tree.TreeMaker;
	
	/** Construct a parser from a given scanner, tree factory and log.
	*/
	@:overload @:protected private function new(fac : com.sun.tools.javac.parser.ParserFactory, S : com.sun.tools.javac.parser.Lexer, keepDocComments : Bool, keepLineMap : Bool) : Void;
	
	/** If next input token matches given token, skip it, otherwise report
	*  an error.
	*/
	@:overload @:public public function accept(token : com.sun.tools.javac.parser.Token) : Void;
	
	@:overload @:protected private function getErrorEndPos() : Int;
	
	/**
	* Store ending position for a tree.
	* @param tree   The tree.
	* @param endpos The ending position to associate with the tree.
	*/
	@:overload @:protected private function storeEnd(tree : com.sun.tools.javac.tree.JCTree, endpos : Int) : Void;
	
	/**
	* Store ending position for a tree.  The ending position should
	* be the ending position of the current token.
	* @param t The tree.
	*/
	@:overload @:protected private function to<T : com.sun.tools.javac.tree.JCTree>(t : T) : T;
	
	/**
	* Store ending position for a tree.  The ending position should
	* be greater of the ending position of the previous token and errorEndPos.
	* @param t The tree.
	*/
	@:overload @:protected private function toP<T : com.sun.tools.javac.tree.JCTree>(t : T) : T;
	
	/** Get the start position for a tree node.  The start position is
	* defined to be the position of the first character of the first
	* token of the node's source text.
	* @param tree  The tree node
	*/
	@:overload @:public public function getStartPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	/**
	* Get the end position for a tree node.  The end position is
	* defined to be the position of the last character of the last
	* token of the node's source text.  Returns Position.NOPOS if end
	* positions are not generated or the position is otherwise not
	* found.
	* @param tree  The tree node
	*/
	@:overload @:public public function getEndPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	/**
	* Qualident = Ident { DOT Ident }
	*/
	@:overload @:public public function qualident() : JCExpression;
	
	/** terms can be either expressions or types.
	*/
	@:overload @:public public function parseExpression() : JCExpression;
	
	@:overload @:public public function parseType() : JCExpression;
	
	/** If tree is a concatenation of string literals, replace it
	*  by a single literal representing the concatenated string.
	*/
	@:overload @:protected private function foldStrings(tree : com.sun.tools.javac.tree.JCTree) : java.lang.StringBuffer;
	
	/** Expression3    = PrefixOp Expression3
	*                 | "(" Expr | TypeNoParams ")" Expression3
	*                 | Primary {Selector} {PostfixOp}
	*  Primary        = "(" Expression ")"
	*                 | Literal
	*                 | [TypeArguments] THIS [Arguments]
	*                 | [TypeArguments] SUPER SuperSuffix
	*                 | NEW [TypeArguments] Creator
	*                 | Ident { "." Ident }
	*                   [ "[" ( "]" BracketsOpt "." CLASS | Expression "]" )
	*                   | Arguments
	*                   | "." ( CLASS | THIS | [TypeArguments] SUPER Arguments | NEW [TypeArguments] InnerCreator )
	*                   ]
	*                 | BasicType BracketsOpt "." CLASS
	*  PrefixOp       = "++" | "--" | "!" | "~" | "+" | "-"
	*  PostfixOp      = "++" | "--"
	*  Type3          = Ident { "." Ident } [TypeArguments] {TypeSelector} BracketsOpt
	*                 | BasicType
	*  TypeNoParams3  = Ident { "." Ident } BracketsOpt
	*  Selector       = "." [TypeArguments] Ident [Arguments]
	*                 | "." THIS
	*                 | "." [TypeArguments] SUPER SuperSuffix
	*                 | "." NEW [TypeArguments] InnerCreator
	*                 | "[" Expression "]"
	*  TypeSelector   = "." Ident [TypeArguments]
	*  SuperSuffix    = Arguments | "." Ident [Arguments]
	*/
	@:overload @:protected private function term3() : JCExpression;
	
	/** VariableInitializer = ArrayInitializer | Expression
	*/
	@:overload @:public public function variableInitializer() : JCExpression;
	
	@:overload @:public public function block() : JCBlock;
	
	/** Statement =
	*       Block
	*     | IF ParExpression Statement [ELSE Statement]
	*     | FOR "(" ForInitOpt ";" [Expression] ";" ForUpdateOpt ")" Statement
	*     | FOR "(" FormalParameter : Expression ")" Statement
	*     | WHILE ParExpression Statement
	*     | DO Statement WHILE ParExpression ";"
	*     | TRY Block ( Catches | [Catches] FinallyPart )
	*     | TRY "(" ResourceSpecification ";"opt ")" Block [Catches] [FinallyPart]
	*     | SWITCH ParExpression "{" SwitchBlockStatementGroups "}"
	*     | SYNCHRONIZED ParExpression Block
	*     | RETURN [Expression] ";"
	*     | THROW Expression ";"
	*     | BREAK [Ident] ";"
	*     | CONTINUE [Ident] ";"
	*     | ASSERT Expression [ ":" Expression ] ";"
	*     | ";"
	*     | ExpressionStatement
	*     | Ident ":" Statement
	*/
	@:overload @:public public function parseStatement() : JCStatement;
	
	/** CatchClause     = CATCH "(" FormalParameter ")" Block
	*/
	@:overload @:protected private function catchClause() : JCCatch;
	
	@:overload @:protected private function modifiersOpt(partial : JCModifiers) : JCModifiers;
	
	/** VariableDeclarators = VariableDeclarator { "," VariableDeclarator }
	*/
	@:overload @:public public function variableDeclarators<T : com.sun.tools.javac.util.ListBuffer<JCVariableDecl>>(mods : JCModifiers, type : JCExpression, vdefs : T) : T;
	
	/** Resource = VariableModifiersOpt Type VariableDeclaratorId = Expression
	*/
	@:overload @:protected private function resource() : com.sun.tools.javac.tree.JCTree;
	
	/** CompilationUnit = [ { "@" Annotation } PACKAGE Qualident ";"] {ImportDeclaration} {TypeDeclaration}
	*/
	@:overload @:public public function parseCompilationUnit() : com.sun.tools.javac.tree.JCTree.JCTree_JCCompilationUnit;
	
	/** ClassBodyDeclaration =
	*      ";"
	*    | [STATIC] Block
	*    | ModifiersOpt
	*      ( Type Ident
	*        ( VariableDeclaratorsRest ";" | MethodDeclaratorRest )
	*      | VOID Ident MethodDeclaratorRest
	*      | TypeParameters (Type | VOID) Ident MethodDeclaratorRest
	*      | Ident ConstructorDeclaratorRest
	*      | TypeParameters Ident ConstructorDeclaratorRest
	*      | ClassOrInterfaceOrEnumDeclaration
	*      )
	*  InterfaceBodyDeclaration =
	*      ";"
	*    | ModifiersOpt Type Ident
	*      ( ConstantDeclaratorsRest | InterfaceMethodDeclaratorRest ";" )
	*/
	@:overload @:protected private function classOrInterfaceBodyDeclaration(className : com.sun.tools.javac.util.Name, isInterface : Bool) : com.sun.tools.javac.util.List<com.sun.tools.javac.tree.JCTree>;
	
	/** FormalParameter = { FINAL | '@' Annotation } Type VariableDeclaratorId
	*  LastFormalParameter = { FINAL | '@' Annotation } Type '...' Ident | FormalParameter
	*/
	@:overload @:protected private function formalParameter() : JCVariableDecl;
	
	/** Check that given tree is a legal expression statement.
	*/
	@:overload @:protected private function checkExprStat(t : JCExpression) : JCExpression;
	
	
}
