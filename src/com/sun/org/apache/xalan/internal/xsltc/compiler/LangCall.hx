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
* $Id: LangCall.java,v 1.2.4.1 2005/09/01 15:54:25 pvedula Exp $
*/
@:internal extern class LangCall extends com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall
{
	/**
	* Get the parameters passed to function:
	*   lang(string)
	*/
	@:overload @:public public function new(fname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, arguments : java.util.Vector<Dynamic>) : Void;
	
	/**
	*
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	*
	*/
	@:overload @:public override public function getType() : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* This method is called when the constructor is compiled in
	* Stylesheet.compileConstructor() and not as the syntax tree is traversed.
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
