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
* $Id: LocationPathPattern.java,v 1.2.4.1 2005/09/12 10:42:42 pvedula Exp $
*/
extern class LocationPathPattern extends com.sun.org.apache.xalan.internal.xsltc.compiler.Pattern
{
	@:overload override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload public function setTemplate(template : com.sun.org.apache.xalan.internal.xsltc.compiler.Template) : Void;
	
	@:overload override public function getTemplate() : com.sun.org.apache.xalan.internal.xsltc.compiler.Template;
	
	@:overload @:final override public function getPriority() : Float;
	
	@:overload public function getDefaultPriority() : Float;
	
	/**
	* This method is used by the Mode class to prioritise patterns and
	* template. This method is called for templates that are in the same
	* mode and that match on the same core pattern. The rules used are:
	*  o) first check precedence - highest precedence wins
	*  o) then check priority - highest priority wins
	*  o) then check the position - the template that occured last wins
	*/
	@:overload public function noSmallerThan(other : LocationPathPattern) : Bool;
	
	@:overload @:abstract public function getKernelPattern() : com.sun.org.apache.xalan.internal.xsltc.compiler.StepPattern;
	
	@:overload @:abstract public function reduceKernelPattern() : Void;
	
	@:overload @:abstract public function isWildcard() : Bool;
	
	@:overload public function getAxis() : Int;
	
	@:overload override public function toString() : String;
	
	
}
