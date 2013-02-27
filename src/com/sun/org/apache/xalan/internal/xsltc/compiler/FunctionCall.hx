package com.sun.org.apache.xalan.internal.xsltc.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: FunctionCall.java,v 1.2.4.1 2005/09/12 10:31:32 pvedula Exp $
*/
@:internal extern class FunctionCall extends com.sun.org.apache.xalan.internal.xsltc.compiler.Expression
{
	private static var EXT_XSLTC(default, null) : String;
	
	private static var JAVA_EXT_XSLTC(default, null) : String;
	
	private static var EXT_XALAN(default, null) : String;
	
	private static var JAVA_EXT_XALAN(default, null) : String;
	
	private static var JAVA_EXT_XALAN_OLD(default, null) : String;
	
	private static var EXSLT_COMMON(default, null) : String;
	
	private static var EXSLT_MATH(default, null) : String;
	
	private static var EXSLT_SETS(default, null) : String;
	
	private static var EXSLT_DATETIME(default, null) : String;
	
	private static var EXSLT_STRINGS(default, null) : String;
	
	private static var NAMESPACE_FORMAT_JAVA(default, null) : Int;
	
	private static var NAMESPACE_FORMAT_CLASS(default, null) : Int;
	
	private static var NAMESPACE_FORMAT_PACKAGE(default, null) : Int;
	
	private static var NAMESPACE_FORMAT_CLASS_OR_PACKAGE(default, null) : Int;
	
	@:overload public function new(fname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, arguments : java.util.Vector<Dynamic>) : Void;
	
	@:overload public function new(fname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Void;
	
	@:overload public function getName() : String;
	
	@:overload override public function setParser(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload public function getClassNameFromUri(uri : String) : String;
	
	/**
	* Type check a function call. Since different type conversions apply,
	* type checking is different for standard and external (Java) functions.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Type check a call to a standard function. Insert CastExprs when needed.
	* If as a result of the insertion of a CastExpr a type check error is
	* thrown, then catch it and re-throw it with a new "this".
	*/
	@:overload public function typeCheckStandard(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload public function typeCheckConstructor(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Type check a call to an external (Java) method.
	* The method must be static an public, and a legal type conversion
	* must exist for all its arguments and its return type.
	* Every method of name <code>_fname</code> is inspected
	* as a possible candidate.
	*/
	@:overload public function typeCheckExternal(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Type check the actual arguments of this function call.
	*/
	@:overload public function typeCheckArgs(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : java.util.Vector<Dynamic>;
	
	@:overload @:final private function argument(i : Int) : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload @:final private function argument() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload @:final private function argumentCount() : Int;
	
	@:overload @:final private function setArgument(i : Int, exp : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression) : Void;
	
	/**
	* Compile the function call and treat as an expression
	* Update true/false-lists.
	*/
	@:overload override public function translateDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translate a function call. The compiled code will leave the function's
	* return value on the JVM's stack.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload override public function toString() : String;
	
	@:overload public function isStandard() : Bool;
	
	@:overload public function isExtension() : Bool;
	
	/**
	* To support EXSLT extensions, convert names with dash to allowable Java names:
	* e.g., convert abc-xyz to abcXyz.
	* Note: dashes only appear in middle of an EXSLT function or element name.
	*/
	@:overload private static function replaceDash(name : String) : String;
	
	
}
/**
* inner class to used in internal2Java mappings, contains
* the Java type and the distance between the internal type and
* the Java type.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$compiler$FunctionCall$JavaType') @:internal extern class FunctionCall_JavaType
{
	public var type : Class<Dynamic>;
	
	public var distance : Int;
	
	@:overload public function new(type : Class<Dynamic>, distance : Int) : Void;
	
	@:overload public function equals(query : Dynamic) : Bool;
	
	
}
