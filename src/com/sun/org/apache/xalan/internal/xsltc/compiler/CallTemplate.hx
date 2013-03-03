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
* $Id: CallTemplate.java,v 1.2.4.1 2005/09/12 10:02:41 pvedula Exp $
*/
@:internal extern class CallTemplate extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	@:overload @:public override public function display(indent : Int) : Void;
	
	@:overload @:public public function hasWithParams() : Bool;
	
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Verify that a template with this name exists.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Return the simple named template which this CallTemplate calls.
	* Return false if there is no matched template or the matched
	* template is not a simple named template.
	*/
	@:overload @:public public function getCalleeTemplate() : com.sun.org.apache.xalan.internal.xsltc.compiler.Template;
	
	
}
