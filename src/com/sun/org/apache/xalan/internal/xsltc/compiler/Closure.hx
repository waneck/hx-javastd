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
* $Id: Closure.java,v 1.2.4.1 2005/09/01 12:01:23 pvedula Exp $
*/
/**
* @author Santiago Pericas-Geertsen
*/
extern interface Closure
{
	/**
	* Returns true if this closure is compiled in an inner class (i.e.
	* if this is a real closure).
	*/
	@:overload @:public public function inInnerClass() : Bool;
	
	/**
	* Returns a reference to its parent closure or null if outermost.
	*/
	@:overload @:public public function getParentClosure() : com.sun.org.apache.xalan.internal.xsltc.compiler.Closure;
	
	/**
	* Returns the name of the auxiliary class or null if this predicate
	* is compiled inside the Translet.
	*/
	@:overload @:public public function getInnerClassName() : String;
	
	/**
	* Add new variable to the closure.
	*/
	@:overload @:public public function addVariable(variableRef : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableRefBase) : Void;
	
	
}
