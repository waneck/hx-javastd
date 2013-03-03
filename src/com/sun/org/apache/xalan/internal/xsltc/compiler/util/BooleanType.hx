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
* $Id: BooleanType.java,v 1.2.4.1 2005/09/05 11:03:37 pvedula Exp $
*/
extern class BooleanType extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	*/
	@:overload @:protected private function new() : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function identicalTo(other : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Bool;
	
	@:overload @:public override public function toSignature() : String;
	
	@:overload @:public override public function isSimple() : Bool;
	
	@:overload @:public override public function toJCType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	/**
	* Translates a real into an object of internal type <code>type</code>. The
	* translation to int is undefined since booleans are always converted to
	* reals in arithmetic expressions.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	/**
	* Expects a boolean on the stack and pushes a string. If the value on the
	* stack is zero, then the string 'false' is pushed. Otherwise, the string
	* 'true' is pushed.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType) : Void;
	
	/**
	* Expects a boolean on the stack and pushes a real. The value "true" is
	* converted to 1.0 and the value "false" to 0.0.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.RealType) : Void;
	
	/**
	* Expects a boolean on the stack and pushes a boxed boolean.
	* Boxed booleans are represented by an instance of
	* <code>java.lang.Boolean</code>.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType) : Void;
	
	/**
	* Translates an internal boolean into an external (Java) boolean.
	*/
	@:overload @:public override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an external (Java) boolean into internal boolean.
	*/
	@:overload @:public override public function translateFrom(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an object of this type to its boxed representation.
	*/
	@:overload @:public override public function translateBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translates an object of this type to its unboxed representation.
	*/
	@:overload @:public override public function translateUnBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	@:overload @:public override public function LOAD(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function STORE(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function GT(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public override public function GE(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public override public function LT(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public override public function LE(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	
}
