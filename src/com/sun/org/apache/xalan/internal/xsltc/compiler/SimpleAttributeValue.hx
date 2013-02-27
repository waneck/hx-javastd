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
* $Id: SimpleAttributeValue.java,v 1.2.4.1 2005/09/05 08:58:46 pvedula Exp $
*/
@:internal extern class SimpleAttributeValue extends com.sun.org.apache.xalan.internal.xsltc.compiler.AttributeValue
{
	/**
	* Creates a new simple attribute value.
	* @param value the attribute value.
	*/
	@:overload public function new(value : String) : Void;
	
	/**
	* Returns this attribute value's type (String).
	* @param stable The compiler/parser's symbol table
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload override public function toString() : String;
	
	@:overload override private function contextDependent() : Bool;
	
	/**
	* Translate this attribute value into JVM bytecodes that pushes the
	* attribute value onto the JVM's stack.
	* @param classGen BCEL Java class generator
	* @param methodGen BCEL Java method generator
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
