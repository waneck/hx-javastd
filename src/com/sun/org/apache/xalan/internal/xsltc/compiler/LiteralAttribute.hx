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
* $Id: LiteralAttribute.java,v 1.2.4.1 2005/09/12 10:38:03 pvedula Exp $
*/
@:internal extern class LiteralAttribute extends com.sun.org.apache.xalan.internal.xsltc.compiler.Instruction
{
	/**
	* Creates a new literal attribute (but does not insert it into the AST).
	* @param name the attribute name (incl. prefix) as a String.
	* @param value the attribute value.
	* @param parser the XSLT parser (wraps XPath parser).
	*/
	@:overload @:public public function new(name : String, value : String, parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser, parent : com.sun.org.apache.xalan.internal.xsltc.compiler.SyntaxTreeNode) : Void;
	
	@:overload @:public override public function display(indent : Int) : Void;
	
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload @:protected override private function contextDependent() : Bool;
	
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Return the name of the attribute
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Return the value of the attribute
	*/
	@:overload @:public public function getValue() : com.sun.org.apache.xalan.internal.xsltc.compiler.AttributeValue;
	
	
}
