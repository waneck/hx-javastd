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
* $Id: ElementAvailableCall.java,v 1.2.4.1 2005/09/01 14:13:01 pvedula Exp $
*/
@:internal extern class ElementAvailableCall extends com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:overload public function new(fname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, arguments : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Force the argument to this function to be a literal string.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Returns an object representing the compile-time evaluation
	* of an expression. We are only using this for function-available
	* and element-available at this time.
	*/
	@:overload override public function evaluateAtCompileTime() : Dynamic;
	
	/**
	* Returns the result that this function will return
	*/
	@:overload public function getResult() : Bool;
	
	/**
	* Calls to 'element-available' are resolved at compile time since
	* the namespaces declared in the stylsheet are not available at run
	* time. Consequently, arguments to this function must be literals.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
