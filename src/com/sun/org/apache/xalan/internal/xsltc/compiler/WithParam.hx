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
* $Id: WithParam.java,v 1.2.4.1 2005/09/12 11:38:01 pvedula Exp $
*/
@:internal extern class WithParam extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	/**
	* The escaped qname of the with-param.
	*/
	@:protected private var _escapedName : String;
	
	/**
	* Displays the contents of this element
	*/
	@:overload @:public override public function display(indent : Int) : Void;
	
	/**
	* Returns the escaped qname of the parameter
	*/
	@:overload @:public public function getEscapedName() : String;
	
	/**
	* Return the name of this WithParam.
	*/
	@:overload @:public public function getName() : com.sun.org.apache.xalan.internal.xsltc.compiler.QName;
	
	/**
	* Set the name of the variable or paremeter. Escape all special chars.
	*/
	@:overload @:public public function setName(name : com.sun.org.apache.xalan.internal.xsltc.compiler.QName) : Void;
	
	/**
	* Set the do parameter optimization flag
	*/
	@:overload @:public public function setDoParameterOptimization(flag : Bool) : Void;
	
	/**
	* The contents of a <xsl:with-param> elements are either in the element's
	* 'select' attribute (this has precedence) or in the element body.
	*/
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Type-check either the select attribute or the element body, depending
	* on which is in use.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Compile the value of the parameter, which is either in an expression in
	* a 'select' attribute, or in the with-param element's body
	*/
	@:overload @:public public function translateValue(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* This code generates a sequence of bytecodes that call the
	* addParameter() method in AbstractTranslet. The method call will add
	* (or update) the parameter frame with the new parameter value.
	*/
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
