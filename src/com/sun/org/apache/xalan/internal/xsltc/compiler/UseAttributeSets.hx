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
* $Id: UseAttributeSets.java,v 1.5 2005/09/28 13:48:17 pvedula Exp $
*/
@:internal extern class UseAttributeSets extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	/**
	* Constructur - define initial attribute sets to use
	*/
	@:overload @:public public function new(setNames : String, parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* This method is made public to enable an AttributeSet object to merge
	* itself with another AttributeSet (including any other AttributeSets
	* the two may inherit from).
	*/
	@:overload @:public public function addAttributeSets(setNames : String) : Void;
	
	/**
	* Do nada.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Generate a call to the method compiled for this attribute set
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
