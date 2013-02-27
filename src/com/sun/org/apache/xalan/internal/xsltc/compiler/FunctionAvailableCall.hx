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
* $Id: FunctionAvailableCall.java,v 1.2.4.1 2005/09/01 15:30:25 pvedula Exp $
*/
@:internal extern class FunctionAvailableCall extends com.sun.org.apache.xalan.internal.xsltc.compiler.FunctionCall
{
	/**
	* Constructs a FunctionAvailableCall FunctionCall. Takes the
	* function name qname, for example, 'function-available', and
	* a list of arguments where the arguments must be instances of
	* LiteralExpression.
	*/
	@:overload public function new(fname : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, arguments : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Argument of function-available call must be literal, typecheck
	* returns the type of function-available to be boolean.
	*/
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Returns an object representing the compile-time evaluation
	* of an expression. We are only using this for function-available
	* and element-available at this time.
	*/
	@:overload override public function evaluateAtCompileTime() : Dynamic;
	
	/**
	* Reports on whether the function specified in the argument to
	* xslt function 'function-available' was found.
	*/
	@:overload public function getResult() : Bool;
	
	/**
	* Calls to 'function-available' are resolved at compile time since
	* the namespaces declared in the stylsheet are not available at run
	* time. Consequently, arguments to this function must be literals.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
