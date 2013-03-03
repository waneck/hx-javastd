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
* $Id: DecimalFormatting.java,v 1.2.4.1 2005/09/12 10:14:32 pvedula Exp $
*/
@:internal extern class DecimalFormatting extends com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement
{
	/**
	* No type check needed for the <xsl:decimal-formatting/> element
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Parse the name of the <xsl:decimal-formatting/> element
	*/
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* This method is called when the constructor is compiled in
	* Stylesheet.compileConstructor() and not as the syntax tree is traversed.
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Creates the default, nameless, DecimalFormat object in
	* AbstractTranslet's format_symbols hashtable.
	* This should be called for every stylesheet, and the entry
	* may be overridden by later nameless xsl:decimal-format instructions.
	*/
	@:overload @:public @:static public static function translateDefaultDFS(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
