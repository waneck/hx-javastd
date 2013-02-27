package com.sun.org.apache.xerces.internal.impl.xpath;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004,2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XPath
{
	/** Expression. */
	private var fExpression : String;
	
	/** Symbol table. */
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Location paths. */
	private var fLocationPaths : java.NativeArray<XPath_LocationPath>;
	
	/** Constructs an XPath object from the specified expression. */
	@:overload public function new(xpath : String, symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, context : com.sun.org.apache.xerces.internal.xni.NamespaceContext) : Void;
	
	/**
	* Returns a representation of all location paths for this XPath.
	* XPath = locationPath ( '|' locationPath)
	*/
	@:overload public function getLocationPaths() : java.NativeArray<XPath_LocationPath>;
	
	/** Returns a representation of the first location path for this XPath. */
	@:overload public function getLocationPath() : XPath_LocationPath;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	/** Main program entry. */
	@:overload public static function main(argv : java.NativeArray<String>) : Void;
	
	
}
/**
* A location path representation for an XPath expression.
*
* @xerces.internal
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$XPath$LocationPath') extern class XPath_LocationPath implements java.lang.Cloneable
{
	/** List of steps. */
	public var steps : java.NativeArray<XPath_Step>;
	
	/** Creates a location path from a series of steps. */
	@:overload public function new(steps : java.NativeArray<XPath_Step>) : Void;
	
	/** Copy constructor. */
	@:overload private function new(path : XPath_LocationPath) : Void;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	/** Returns a clone of this object. */
	@:overload public function clone() : Dynamic;
	
	
}
/**
* A location path step comprised of an axis and node test.
*
* @xerces.internal
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$XPath$Step') extern class XPath_Step implements java.lang.Cloneable
{
	/** Axis. */
	public var axis : XPath_Axis;
	
	/** Node test. */
	public var nodeTest : XPath_NodeTest;
	
	/** Constructs a step from an axis and node test. */
	@:overload public function new(axis : XPath_Axis, nodeTest : XPath_NodeTest) : Void;
	
	/** Copy constructor. */
	@:overload private function new(step : XPath_Step) : Void;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	/** Returns a clone of this object. */
	@:overload public function clone() : Dynamic;
	
	
}
/**
* Axis.
*
* @xerces.internal
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$XPath$Axis') extern class XPath_Axis implements java.lang.Cloneable
{
	/** Type: child. */
	public static var CHILD(default, null) : java.StdTypes.Int16;
	
	/** Type: attribute. */
	public static var ATTRIBUTE(default, null) : java.StdTypes.Int16;
	
	/** Type: self. */
	public static var SELF(default, null) : java.StdTypes.Int16;
	
	/** Type: descendant. */
	public static var DESCENDANT(default, null) : java.StdTypes.Int16;
	
	/** Axis type. */
	public var type : java.StdTypes.Int16;
	
	/** Constructs an axis with the specified type. */
	@:overload public function new(type : java.StdTypes.Int16) : Void;
	
	/** Copy constructor. */
	@:overload private function new(axis : XPath_Axis) : Void;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	/** Returns a clone of this object. */
	@:overload public function clone() : Dynamic;
	
	
}
/**
* Node test.
*
* @xerces.internal
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$XPath$NodeTest') extern class XPath_NodeTest implements java.lang.Cloneable
{
	/** Type: qualified name. */
	public static var QNAME(default, null) : java.StdTypes.Int16;
	
	/** Type: wildcard. */
	public static var WILDCARD(default, null) : java.StdTypes.Int16;
	
	/** Type: node. */
	public static var NODE(default, null) : java.StdTypes.Int16;
	
	/** Type: namespace */
	public static var NAMESPACE(default, null) : java.StdTypes.Int16;
	
	/** Node test type. */
	public var type : java.StdTypes.Int16;
	
	/** Node qualified name. */
	public var name(default, null) : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Constructs a node test of type WILDCARD or NODE. */
	@:overload public function new(type : java.StdTypes.Int16) : Void;
	
	/** Constructs a node test of type QName. */
	@:overload public function new(name : com.sun.org.apache.xerces.internal.xni.QName) : Void;
	
	/** Constructs a node test of type Namespace. */
	@:overload public function new(prefix : String, uri : String) : Void;
	
	/** Copy constructor. */
	@:overload public function new(nodeTest : XPath_NodeTest) : Void;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	/** Returns a clone of this object. */
	@:overload public function clone() : Dynamic;
	
	
}
/**
* List of tokens.
*
* @xerces.internal
*
* @author Glenn Marcy, IBM
* @author Andy Clark, IBM
*
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$XPath$Tokens') @:internal extern class XPath_Tokens
{
	/**
	* [28] ExprToken ::= '(' | ')' | '[' | ']' | '.' | '..' | '@' | ',' | '::'
	*                  | NameTest | NodeType | Operator | FunctionName
	*                  | AxisName | Literal | Number | VariableReference
	*/
	public static var EXPRTOKEN_OPEN_PAREN(default, null) : Int;
	
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload public function getTokenString(token : Int) : String;
	
	@:overload public function addToken(tokenStr : String) : Void;
	
	@:overload public function addToken(token : Int) : Void;
	
	/**
	* Resets the current position to the head of the token list.
	*/
	@:overload public function rewind() : Void;
	
	/**
	* Returns true if the {@link #getNextToken()} method
	* returns a valid token.
	*/
	@:overload public function hasMore() : Bool;
	
	/**
	* Obtains the token at the current position, then advance
	* the current position by one.
	*
	* If there's no such next token, this method throws
	* <tt>new XPathException("c-general-xpath");</tt>.
	*/
	@:overload public function nextToken() : Int;
	
	/**
	* Obtains the token at the current position, without advancing
	* the current position.
	*
	* If there's no such next token, this method throws
	* <tt>new XPathException("c-general-xpath");</tt>.
	*/
	@:overload public function peekToken() : Int;
	
	/**
	* Obtains the token at the current position as a String.
	*
	* If there's no current token or if the current token
	* is not a string token, this method throws
	* <tt>new XPathException("c-general-xpath");</tt>.
	*/
	@:overload public function nextTokenAsString() : String;
	
	@:overload public function dumpTokens() : Void;
	
	
}
/**
* @xerces.internal
*
* @author Glenn Marcy, IBM
* @author Andy Clark, IBM
*
*/
@:native('com$sun$org$apache$xerces$internal$impl$xpath$XPath$Scanner') @:internal extern class XPath_Scanner
{
	/** Constructs an XPath expression scanner. */
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	*
	*/
	@:overload public function scanExpr(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, tokens : XPath_Tokens, data : String, currentOffset : Int, endOffset : Int) : Bool;
	
	/**
	* This method adds the specified token to the token list. By
	* default, this method allows all tokens. However, subclasses
	* of the XPathExprScanner can override this method in order
	* to disallow certain tokens from being used in the scanned
	* XPath expression. This is a convenient way of allowing only
	* a subset of XPath.
	*/
	@:overload private function addToken(tokens : XPath_Tokens, token : Int) : Void;
	
	
}
