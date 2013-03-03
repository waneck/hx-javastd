package sun.tools.java;
/*
* Copyright (c) 1994, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Parser extends sun.tools.java.Scanner implements sun.tools.java.ParserActions implements sun.tools.java.Constants
{
	/**
	* Create a parser
	*/
	@:overload @:protected private function new(env : sun.tools.java.Environment, _in : java.io.InputStream) : Void;
	
	/**
	* Create a parser, given a scanner.
	*/
	@:overload @:protected private function new(scanner : sun.tools.java.Scanner) : Void;
	
	/**
	* Create a parser, given a scanner and the semantic callback.
	*/
	@:overload @:public public function new(scanner : sun.tools.java.Scanner, actions : sun.tools.java.ParserActions) : Void;
	
	/**
	* package declaration
	* @deprecated
	*/
	@:overload @:public public function packageDeclaration(off : haxe.Int64, nm : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* @deprecated
	*/
	@:overload @:protected private function packageDeclaration(off : haxe.Int64, nm : sun.tools.java.Identifier) : Void;
	
	/**
	* import class
	* @deprecated
	*/
	@:overload @:public public function importClass(off : haxe.Int64, nm : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* @deprecated Use the version with the IdentifierToken arguments.
	*/
	@:overload @:protected private function importClass(off : haxe.Int64, nm : sun.tools.java.Identifier) : Void;
	
	/**
	* import package
	* @deprecated
	*/
	@:overload @:public public function importPackage(off : haxe.Int64, nm : sun.tools.java.IdentifierToken) : Void;
	
	/**
	* @deprecated Use the version with the IdentifierToken arguments.
	*/
	@:overload @:protected private function importPackage(off : haxe.Int64, nm : sun.tools.java.Identifier) : Void;
	
	/**
	* Define class
	* @deprecated
	*/
	@:overload @:public public function beginClass(off : haxe.Int64, doc : String, mod : Int, nm : sun.tools.java.IdentifierToken, sup : sun.tools.java.IdentifierToken, impl : java.NativeArray<sun.tools.java.IdentifierToken>) : sun.tools.java.ClassDefinition;
	
	/**
	* @deprecated Use the version with the IdentifierToken arguments.
	*/
	@:overload @:protected private function beginClass(off : haxe.Int64, doc : String, mod : Int, nm : sun.tools.java.Identifier, sup : sun.tools.java.Identifier, impl : java.NativeArray<sun.tools.java.Identifier>) : Void;
	
	/**
	* Report the current class under construction.
	* By default, it's a no-op which returns null.
	* It may only be called before the corresponding endClass().
	*/
	@:overload @:protected private function getCurrentClass() : sun.tools.java.ClassDefinition;
	
	/**
	* End class
	* @deprecated
	*/
	@:overload @:public public function endClass(off : haxe.Int64, c : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* @deprecated Use the version with the IdentifierToken arguments.
	*/
	@:overload @:protected private function endClass(off : haxe.Int64, nm : sun.tools.java.Identifier) : Void;
	
	/**
	* Define a field
	* @deprecated
	*/
	@:overload @:public public function defineField(where : haxe.Int64, c : sun.tools.java.ClassDefinition, doc : String, mod : Int, t : sun.tools.java.Type, nm : sun.tools.java.IdentifierToken, args : java.NativeArray<sun.tools.java.IdentifierToken>, exp : java.NativeArray<sun.tools.java.IdentifierToken>, val : sun.tools.tree.Node) : Void;
	
	/**
	* @deprecated Use the version with the IdentifierToken arguments.
	*/
	@:overload @:protected private function defineField(where : haxe.Int64, doc : String, mod : Int, t : sun.tools.java.Type, nm : sun.tools.java.Identifier, args : java.NativeArray<sun.tools.java.Identifier>, exp : java.NativeArray<sun.tools.java.Identifier>, val : sun.tools.tree.Node) : Void;
	
	@:protected private var argIndex : Int;
	
	@:overload @:protected @:final private function addArgument(n : sun.tools.tree.Node) : Void;
	
	@:overload @:protected @:final private function exprArgs(index : Int) : java.NativeArray<sun.tools.tree.Expression>;
	
	@:overload @:protected @:final private function statArgs(index : Int) : java.NativeArray<sun.tools.tree.Statement>;
	
	/**
	* Expect a token, return its value, scan the next token or
	* throw an exception.
	*/
	@:overload @:protected private function expect(t : Int) : Void;
	
	/**
	* Parse a type expression. Does not parse the []'s.
	*/
	@:overload @:protected private function parseTypeExpression() : sun.tools.tree.Expression;
	
	/**
	* Parse a method invocation. Should be called when the current
	* then is the '(' of the argument list.
	*/
	@:overload @:protected private function parseMethodExpression(e : sun.tools.tree.Expression, id : sun.tools.java.Identifier) : sun.tools.tree.Expression;
	
	/**
	* Parse a new instance expression.  Should be called when the current
	* token is the '(' of the argument list.
	*/
	@:overload @:protected private function parseNewInstanceExpression(p : haxe.Int64, outerArg : sun.tools.tree.Expression, type : sun.tools.tree.Expression) : sun.tools.tree.Expression;
	
	/**
	* Parse a primary expression.
	*/
	@:overload @:protected private function parseTerm() : sun.tools.tree.Expression;
	
	/**
	* Parse an expression.
	*/
	@:overload @:protected private function parseExpression() : sun.tools.tree.Expression;
	
	/**
	* Given a left-hand term, parse an operator and right-hand term.
	*/
	@:overload @:protected private function parseBinaryExpression(e : sun.tools.tree.Expression) : sun.tools.tree.Expression;
	
	/**
	* Recover after a syntax error in a statement. This involves
	* discarding tokens until EOF or a possible continuation is
	* encountered.
	*/
	@:overload @:protected private function recoverStatement() : Bool;
	
	/**
	* Parse declaration, called after the type expression
	* has been parsed and the current token is IDENT.
	*/
	@:overload @:protected private function parseDeclaration(p : haxe.Int64, mod : Int, type : sun.tools.tree.Expression) : sun.tools.tree.Statement;
	
	/**
	* Check if an expression is a legal toplevel expression.
	* Only method, inc, dec, and new expression are allowed.
	*/
	@:overload @:protected private function topLevelExpression(e : sun.tools.tree.Expression) : Void;
	
	/**
	* Parse a statement.
	*/
	@:overload @:protected private function parseStatement() : sun.tools.tree.Statement;
	
	@:overload @:protected private function parseBlockStatement() : sun.tools.tree.Statement;
	
	/**
	* Parse an identifier. ie: a.b.c returns "a.b.c"
	* If star is true then "a.b.*" is allowed.
	* The return value encodes both the identifier and its location.
	*/
	@:overload @:protected private function parseName(star : Bool) : sun.tools.java.IdentifierToken;
	
	/**
	* @deprecated
	* @see #parseName
	*/
	@:overload @:protected private function parseIdentifier(star : Bool) : sun.tools.java.Identifier;
	
	/**
	* Parse a type expression, this results in a Type.
	* The parse includes trailing array brackets.
	*/
	@:overload @:protected private function parseType() : sun.tools.java.Type;
	
	/**
	* Parse the tail of a type expression, which might be array brackets.
	* Return the given type, as possibly modified by the suffix.
	*/
	@:overload @:protected private function parseArrayBrackets(t : sun.tools.java.Type) : sun.tools.java.Type;
	
	/**
	* Parse a possibly-empty sequence of modifier keywords.
	* Return the resulting bitmask.
	* Diagnose repeated modifiers, but make no other checks.
	* Only modifiers mentioned in the given bitmask are scanned;
	* an unmatched modifier must be handled by the caller.
	*/
	@:overload @:protected private function parseModifiers(mask : Int) : Int;
	
	/**
	* Parse a field.
	*/
	@:overload @:protected private function parseField() : Void;
	
	/**
	* Recover after a syntax error in a field. This involves
	* discarding tokens until an EOF or a possible legal
	* continuation is encountered.
	*/
	@:overload @:protected private function recoverField(newClass : sun.tools.java.ClassDefinition) : Void;
	
	/**
	* Parse a top-level class or interface declaration.
	*/
	@:overload @:protected private function parseClass() : Void;
	
	/**
	* Parse a block-local class or interface declaration.
	*/
	@:overload @:protected private function parseLocalClass(mod : Int) : sun.tools.tree.Statement;
	
	/**
	* Parse a named class or interface declaration,
	* starting at "class" or "interface".
	* @arg ctx Syntactic context of the class, one of {PACKAGE CLASS STAT EXPR}.
	*/
	@:overload @:protected private function parseNamedClass(mod : Int, ctx : Int, doc : String) : sun.tools.java.ClassDefinition;
	
	@:overload @:protected private function parseInheritance(ext : java.util.Vector<Dynamic>, impl : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Parse the body of a class or interface declaration,
	* starting at the left brace.
	*/
	@:overload @:protected private function parseClassBody(nm : sun.tools.java.IdentifierToken, mod : Int, ctx : Int, doc : String, ext : java.util.Vector<Dynamic>, impl : java.util.Vector<Dynamic>, p : haxe.Int64) : sun.tools.java.ClassDefinition;
	
	/**
	* Recover after a syntax error in the file.
	* This involves discarding tokens until an EOF
	* or a possible legal continuation is encountered.
	*/
	@:overload @:protected private function recoverFile() : Void;
	
	/**
	* Parse an Java file.
	*/
	@:overload @:public public function parseFile() : Void;
	
	/**
	* Usually <code>this.scanner == (Scanner)this</code>.
	* However, a delegate scanner can produce tokens for this parser,
	* in which case <code>(Scanner)this</code> is unused,
	* except for <code>this.token</code> and <code>this.pos</code>
	* instance variables which are filled from the real scanner
	* by <code>this.scan()</code> and the constructor.
	*/
	@:protected private var scanner : sun.tools.java.Scanner;
	
	@:overload @:public override public function scan() : haxe.Int64;
	
	@:overload @:public override public function match(open : Int, close : Int) : Void;
	
	
}
