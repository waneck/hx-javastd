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
* $Id: Output.java,v 1.2.4.1 2005/09/12 10:53:00 pvedula Exp $
*/
@:internal extern class Output extends com.sun.org.apache.xalan.internal.xsltc.compiler.TopLevelElement
{
	/**
	* Displays the contents of this element (for debugging)
	*/
	@:overload @:public override public function display(indent : Int) : Void;
	
	/**
	* Disables this <xsl:output> element in case where there are some other
	* <xsl:output> element (from a different imported/included stylesheet)
	* with higher precedence.
	*/
	@:overload @:public public function disable() : Void;
	
	@:overload @:public public function enabled() : Bool;
	
	@:overload @:public public function getCdata() : String;
	
	@:overload @:public public function getOutputMethod() : String;
	
	@:overload @:public public function mergeOutput(previous : com.sun.org.apache.xalan.internal.xsltc.compiler.Output) : Void;
	
	/**
	* Scans the attribute list for the xsl:output instruction
	*/
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Compile code that passes the information in this <xsl:output> element
	* to the appropriate fields in the translet
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
