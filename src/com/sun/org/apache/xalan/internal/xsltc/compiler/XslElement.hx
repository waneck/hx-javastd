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
* $Id: XslElement.java,v 1.2.4.1 2005/09/12 11:39:55 pvedula Exp $
*/
@:internal extern class XslElement extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	/**
	* Displays the contents of the element
	*/
	@:overload @:public override public function display(indent : Int) : Void;
	
	/**
	* This method is now deprecated. The new implemation of this class
	* never declares the default NS.
	*/
	@:overload @:public public function declaresDefaultNS() : Bool;
	
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Run type check on element name & contents
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* This method is called when the name of the element is known at compile time.
	* In this case, there is no need to inspect the element name at runtime to
	* determine if a prefix exists, needs to be generated, etc.
	*/
	@:overload @:public public function translateLiteral(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* At runtime the compilation of xsl:element results in code that: (i)
	* evaluates the avt for the name, (ii) checks for a prefix in the name
	* (iii) generates a new prefix and create a new qname when necessary
	* (iv) calls startElement() on the handler (v) looks up a uri in the XML
	* when the prefix is not known at compile time (vi) calls namespace()
	* on the handler (vii) evaluates the contents (viii) calls endElement().
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Override this method to make sure that xsl:attributes are not
	* copied to output if this xsl:element is to be ignored
	*/
	@:overload @:public override public function translateContents(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
