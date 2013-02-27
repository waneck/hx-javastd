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
* $Id: Choose.java,v 1.2.4.1 2005/09/01 12:00:14 pvedula Exp $
*/
@:internal extern class Choose extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	/**
	* Display the element contents (a lot of when's and an otherwise)
	*/
	@:overload override public function display(indent : Int) : Void;
	
	/**
	* Translate this Choose element. Generate a test-chain for the various
	* <xsl:when> elements and default to the <xsl:otherwise> if present.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
