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
* $Id: TransletOutput.java,v 1.2.4.1 2005/09/05 09:19:44 pvedula Exp $
*/
@:internal extern class TransletOutput extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	/**
	* Displays the contents of this <xsltc:output> element.
	*/
	@:overload override public function display(indent : Int) : Void;
	
	/**
	* Parse the contents of this <xsltc:output> element. The only attribute
	* we recognise is the 'file' attribute that contains teh output filename.
	*/
	@:overload override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Type checks the 'file' attribute (must be able to convert it to a str).
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Compile code that opens the give file for output, dumps the contents of
	* the element to the file, then closes the file.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
