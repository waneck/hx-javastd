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
* $Id: Param.java,v 1.2.4.1 2005/09/02 11:03:42 pvedula Exp $
*/
@:internal extern class Param extends com.sun.org.apache.xalan.internal.xsltc.compiler.VariableBase
{
	/**
	* Display variable as single string
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* Set the instruction for loading the value of this variable onto the
	* JVM stack and returns the old instruction.
	*/
	@:overload @:public public function setLoadInstruction(instruction : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Set the instruction for storing a value from the stack into this
	* variable and returns the old instruction.
	*/
	@:overload @:public public function setStoreInstruction(instruction : com.sun.org.apache.bcel.internal.generic.Instruction) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Display variable in a full AST dump
	*/
	@:overload @:public override public function display(indent : Int) : Void;
	
	/**
	* Parse the contents of the <xsl:param> element. This method must read
	* the 'name' (required) and 'select' (optional) attributes.
	*/
	@:overload @:public override public function parseContents(parser : com.sun.org.apache.xalan.internal.xsltc.compiler.Parser) : Void;
	
	/**
	* Type-checks the parameter. The parameter type is determined by the
	* 'select' expression (if present) or is a result tree if the parameter
	* element has a body and no 'select' expression.
	*/
	@:overload @:public override public function typeCheck(stable : com.sun.org.apache.xalan.internal.xsltc.compiler.SymbolTable) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:overload @:public override public function translate(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	
}
