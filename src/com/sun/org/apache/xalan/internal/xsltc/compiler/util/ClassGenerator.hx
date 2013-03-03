package com.sun.org.apache.xalan.internal.xsltc.compiler.util;
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
* $Id: ClassGenerator.java,v 1.2.4.1 2005/09/05 11:07:09 pvedula Exp $
*/
extern class ClassGenerator extends com.sun.org.apache.bcel.internal.generic.ClassGen
{
	/**
	* The class that implements any class that inherits from
	* <tt>AbstractTranslet</tt>, i.e. any translet. Methods in this
	* class may be of the following kinds:
	*
	* 1. Main method: applyTemplates, implemented by intances of
	* <tt>MethodGenerator</tt>.
	*
	* 2. Named methods: for named templates, implemented by instances
	* of <tt>NamedMethodGenerator</tt>.
	*
	* 3. Rt methods: for result tree fragments, implemented by
	* instances of <tt>RtMethodGenerator</tt>.
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:protected @:final @:static private static var TRANSLET_INDEX(default, null) : Int;
	
	@:protected @:static private static var INVALID_INDEX : Int;
	
	@:overload @:public public function new(class_name : String, super_class_name : String, file_name : String, access_flags : Int, interfaces : java.NativeArray<String>, stylesheet : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	@:overload @:public @:final public function getParser() : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser;
	
	@:overload @:public @:final public function getStylesheet() : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	/**
	* Pretend this is the stylesheet class. Useful when compiling
	* references to global variables inside a predicate.
	*/
	@:overload @:public @:final override public function getClassName() : String;
	
	@:overload @:public public function loadTranslet() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public @:final public function getDOMClass() : String;
	
	@:overload @:public @:final public function getDOMClassSig() : String;
	
	@:overload @:public @:final public function getApplyTemplatesSig() : String;
	
	@:overload @:public @:final public function getApplyTemplatesSigForImport() : String;
	
	/**
	* Returns <tt>true</tt> or <tt>false</tt> depending on whether
	* this class inherits from <tt>AbstractTranslet</tt> or not.
	*/
	@:overload @:public public function isExternal() : Bool;
	
	@:overload @:public public function addMethod(methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
