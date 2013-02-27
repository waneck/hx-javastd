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
* $Id: RealType.java,v 1.2.4.1 2005/09/05 11:28:45 pvedula Exp $
*/
extern class RealType extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.NumberType
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:overload private function new() : Void;
	
	@:overload override public function toString() : String;
	
	@:overload override public function identicalTo(other : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Bool;
	
	@:overload override public function toSignature() : String;
	
	@:overload override public function toJCType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	/**
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#distanceTo
	*/
	@:overload override public function distanceTo(type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Int;
	
	/**
	* Translates a real into an object of internal type <code>type</code>. The
	* translation to int is undefined since reals are never converted to ints.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	/**
	* Expects a real on the stack and pushes its string value by calling
	* <code>Double.toString(double d)</code>.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType) : Void;
	
	/**
	* Expects a real on the stack and pushes a 0 if that number is 0.0 and
	* a 1 otherwise.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : Void;
	
	/**
	* Expects a real on the stack and pushes a truncated integer value
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.IntType) : Void;
	
	/**
	* Translates a real into a non-synthesized boolean. It does not push a
	* 0 or a 1 but instead returns branchhandle list to be appended to the
	* false list. A NaN must be converted to "false".
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateToDesynthesized
	*/
	@:overload override public function translateToDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	/**
	* Expects a double on the stack and pushes a boxed double. Boxed
	* double are represented by an instance of <code>java.lang.Double</code>.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType) : Void;
	
	/**
	* Translates a real into the Java type denoted by <code>clazz</code>.
	* Expects a real on the stack and pushes a number of the appropriate
	* type after coercion.
	*/
	@:overload override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an external (primitive) Java type into a real. Expects a java
	* object on the stack and pushes a real (i.e., a double).
	*/
	@:overload override public function translateFrom(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an object of this type to its boxed representation.
	*/
	@:overload override public function translateBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translates an object of this type to its unboxed representation.
	*/
	@:overload override public function translateUnBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload override public function ADD() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function SUB() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function MUL() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function DIV() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function REM() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function NEG() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function LOAD(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function STORE(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function POP() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function CMP(less : Bool) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function DUP() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	
}
