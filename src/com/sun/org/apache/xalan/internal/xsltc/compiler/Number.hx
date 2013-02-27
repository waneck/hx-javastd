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
* $Id: Number.java,v 1.2.4.1 2005/09/21 09:40:51 pvedula Exp $
*/
@:internal extern class Number extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction implements com.sun.org.apache.xalan.internal.xsltc.compiler.Closure
{
	/**
	* Returns true if this closure is compiled in an inner class (i.e.
	* if this is a real closure).
	*/
	@:overload public function inInnerClass() : Bool;
	
	/**
	* Returns a reference to its parent closure or null if outermost.
	*/
	@:overload public function getParentClosure() : com.sun.org.apache.xalan.internal.xsltc.compiler.Closure;
	
	/**
	* Returns the name of the auxiliary class or null if this predicate
	* is compiled inside the Translet.
	*/
	@:overload public function getInnerClassName() : String;
	
	/**
	* Add new variable to the closure.
	*/
	@:overload public function addVariable(variableRef : com.sun.org.apache.xalan.internal.xsltc.compiler.VariableRefBase) : Void;
	
	@:overload override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* True if the has specified a value for this instance of number.
	*/
	@:overload public function hasValue() : Bool;
	
	/**
	* Returns <tt>true</tt> if this instance of number has neither
	* a from nor a count pattern.
	*/
	@:overload public function isDefault() : Bool;
	
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
