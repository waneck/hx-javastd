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
* $Id: ObjectType.java,v 1.2.4.1 2005/09/12 11:45:54 pvedula Exp $
*/
extern class ObjectType extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
{
	/**
	* Used to represent a Java Class type such is required to support
	* non-static java functions.
	* @param javaClassName name of the class such as 'com.foo.Processor'
	*/
	@:overload @:protected private function new(javaClassName : String) : Void;
	
	@:overload @:protected private function new(clazz : Class<Dynamic>) : Void;
	
	/**
	* Must return the same value for all ObjectType instances. This is
	* needed in CastExpr to ensure the mapping table is used correctly.
	*/
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function getJavaClassName() : String;
	
	@:overload @:public public function getJavaClass() : Class<Dynamic>;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function identicalTo(other : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Bool;
	
	@:overload @:public override public function toSignature() : String;
	
	@:overload @:public override public function toJCType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	/**
	* Translates a void into an object of internal type <code>type</code>.
	* This translation is needed when calling external functions
	* that return void.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	/**
	* Expects an integer on the stack and pushes its string value by calling
	* <code>Integer.toString(int i)</code>.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType) : Void;
	
	/**
	* Translates an object of this type to the external (Java) type denoted
	* by <code>clazz</code>. This method is used to translate parameters
	* when external functions are called.
	*/
	@:overload @:public override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an external Java type into an Object type
	*/
	@:overload @:public override public function translateFrom(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	@:overload @:public override public function LOAD(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function STORE(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	
}
