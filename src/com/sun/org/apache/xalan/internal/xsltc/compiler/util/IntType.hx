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
* $Id: IntType.java,v 1.2.4.1 2005/09/05 11:14:44 pvedula Exp $
*/
extern class IntType extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.NumberType
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:overload @:protected private function new() : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function identicalTo(other : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Bool;
	
	@:overload @:public override public function toSignature() : String;
	
	@:overload @:public override public function toJCType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	/**
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#distanceTo
	*/
	@:overload @:public override public function distanceTo(type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Int;
	
	/**
	* Translates an integer into an object of internal type <code>type</code>.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	/**
	* Expects an integer on the stack and pushes a real.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.RealType) : Void;
	
	/**
	* Expects an integer on the stack and pushes its string value by calling
	* <code>Integer.toString(int i)</code>.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType) : Void;
	
	/**
	* Expects an integer on the stack and pushes a 0 if its value is 0 and
	* a 1 otherwise.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : Void;
	
	/**
	* Expects an integer on the stack and translates it to a non-synthesized
	* boolean. It does not push a 0 or a 1 but instead returns branchhandle
	* list to be appended to the false list.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateToDesynthesized
	*/
	@:overload @:public override public function translateToDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	/**
	* Expects an integer on the stack and pushes a boxed integer.
	* Boxed integers are represented by an instance of
	* <code>java.lang.Integer</code>.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType) : Void;
	
	/**
	* Translates an integer into the Java type denoted by <code>clazz</code>.
	* Expects an integer on the stack and pushes a number of the appropriate
	* type after coercion.
	*/
	@:overload @:public override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an object of this type to its boxed representation.
	*/
	@:overload @:public override public function translateBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translates an object of this type to its unboxed representation.
	*/
	@:overload @:public override public function translateUnBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload @:public override public function ADD() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function SUB() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function MUL() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function DIV() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function REM() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function NEG() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function LOAD(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function STORE(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function GT(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public override public function GE(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public override public function LT(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public override public function LE(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	
}
