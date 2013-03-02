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
* $Id: AttributeSet.java,v 1.5 2005/09/28 13:48:04 pvedula Exp $
*/
@:internal extern class AttributeSet extends com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement
{
	/**
	* Returns the QName of this attribute set
	*/
	@:overload public function getName() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	/**
	* Returns the method name of this attribute set. This method name is
	* generated by the compiler (XSLTC)
	*/
	@:overload public function getMethodName() : String;
	
	/**
	* Call this method to prevent a method for being compiled for this set.
	* This is used in case several <xsl:attribute-set...> elements constitute
	* a single set (with one name). The last element will merge itself with
	* any previous set(s) with the same name and disable the other set(s).
	*/
	@:overload public function ignore() : Void;
	
	/**
	* Parse the contents of this attribute set. Recognised attributes are
	* "name" (required) and "use-attribute-sets" (optional).
	*/
	@:overload public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Type check the contents of this element
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Compile a method that outputs the attributes in this set
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload public function toString() : String;
	
	
}
