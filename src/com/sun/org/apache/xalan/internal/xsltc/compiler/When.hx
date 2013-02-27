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
* $Id: When.java,v 1.2.4.1 2005/09/05 09:36:58 pvedula Exp $
*/
@:internal extern class When extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	@:overload override public function display(indent : Int) : Void;
	
	@:overload public function getTest() : com.sun.org.apache.xalan.internal.xsltc.compiler.Expression;
	
	@:overload public function ignore() : Bool;
	
	@:overload override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Type-check this when element. The test should always be type checked,
	* while we do not bother with the contents if we know the test fails.
	* This is important in cases where the "test" expression tests for
	* the support of a non-available element, and the <xsl:when> body contains
	* this non-available element.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* This method should never be called. An Otherwise object will explicitly
	* translate the "test" expression and and contents of this element.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
