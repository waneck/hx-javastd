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
* $Id: IdKeyPattern.java,v 1.5 2005/09/28 13:48:10 pvedula Exp $
*/
@:internal extern class IdKeyPattern extends com.sun.org.apache.xalan.internal.xsltc.compiler.LocationPathPattern
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	private var _left : com.sun.org.apache.xalan.internal.xsltc.compiler.RelativePathPattern;
	
	@:overload public function new(index : String, value : String) : Void;
	
	@:overload public function getIndexName() : String;
	
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload override public function isWildcard() : Bool;
	
	@:overload public function setLeft(left : com.sun.org.apache.xalan.internal.xsltc.compiler.RelativePathPattern) : Void;
	
	@:overload override public function getKernelPattern() : com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern;
	
	@:overload override public function reduceKernelPattern() : Void;
	
	@:overload override public function toString() : String;
	
	/**
	* This method is called when the constructor is compiled in
	* Stylesheet.compileConstructor() and not as the syntax tree is traversed.
	*/
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
