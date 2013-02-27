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
* $Id: Mode.java,v 1.2.4.1 2005/09/19 05:18:11 pvedula Exp $
*/
@:internal extern class Mode implements com.sun.org.apache.xalan.internal.xsltc.compiler.Constants
{
	/**
	* Creates a new Mode.
	*
	* @param name A textual representation of the mode's QName
	* @param stylesheet The Stylesheet in which the mode occured
	* @param suffix A suffix to append to the method name for this mode
	*               (normally a sequence number - still in a String).
	*/
	@:overload public function new(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName, stylesheet : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet, suffix : String) : Void;
	
	/**
	* Returns the name of the method (_not_ function) that will be
	* compiled for this mode. Normally takes the form 'applyTemplates()'
	* or * 'applyTemplates2()'.
	*
	* @return Method name for this mode
	*/
	@:overload public function functionName() : String;
	
	@:overload public function functionName(min : Int, max : Int) : String;
	
	@:overload public function getStylesheet() : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet;
	
	@:overload public function addTemplate(template : com.sun.org.apache.xalan.internal.xsltc.compiler.Template) : Void;
	
	/**
	* Process all the test patterns in this mode
	*/
	@:overload public function processPatterns(keys : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload public static function compileGetChildren(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, node : Int) : Void;
	
	/**
	* Compiles the applyTemplates() method and adds it to the translet.
	* This is the main dispatch method.
	*/
	@:overload public function compileApplyTemplates(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator) : Void;
	
	@:overload public function compileApplyImports(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, min : Int, max : Int) : Void;
	
	@:overload public function getTemplateInstructionHandle(template : com.sun.org.apache.xalan.internal.xsltc.compiler.Template) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	
}
