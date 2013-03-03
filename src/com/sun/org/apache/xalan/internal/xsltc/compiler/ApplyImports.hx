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
* $Id: ApplyImports.java,v 1.2.4.1 2005/09/13 12:22:02 pvedula Exp $
*/
@:internal extern class ApplyImports extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	@:overload @:public override public function display(indent : Int) : Void;
	
	/**
	* Returns true if this <xsl:apply-imports/> element has parameters
	*/
	@:overload @:public public function hasWithParams() : Bool;
	
	/**
	* Parse the attributes and contents of an <xsl:apply-imports/> element.
	*/
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Type-check the attributes/contents of an <xsl:apply-imports/> element.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Translate call-template. A parameter frame is pushed only if
	* some template in the stylesheet uses parameters.
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
