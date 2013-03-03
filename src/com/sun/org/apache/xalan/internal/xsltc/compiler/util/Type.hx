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
* $Id: Type.java,v 1.8 2007/03/28 16:51:19 joehw Exp $
*/
extern class Type implements com.sun.org.apache.xalan.internal.xsltc.compiler.Constants
{
	/**
	* @author Jacek Ambroziak
	* @author Santiago Pericas-Geertsen
	* @author Morten Jorgensen
	*/
	@:public @:static @:final public static var Int(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Real(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Boolean(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var NodeSet(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var String(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var ResultTree(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Reference(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Void(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Object(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var ObjectString(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Node(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Root(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Element(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Attribute(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Text(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Comment(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	@:public @:static @:final public static var Processing_Instruction(default, null) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Factory method to instantiate object types. Returns a pre-defined
	* instance for "java.lang.Object" and "java.lang.String".
	*/
	@:overload @:public @:static public static function newObjectType(javaClassName : String) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Factory method to instantiate object types. Returns a pre-defined
	* instance for java.lang.Object.class and java.lang.String.class.
	*/
	@:overload @:public @:static public static function newObjectType(clazz : Class<Dynamic>) : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type;
	
	/**
	* Returns a string representation of this type.
	*/
	@:overload @:public @:abstract public function toString() : String;
	
	/**
	* Returns true if this and other are identical types.
	*/
	@:overload @:public @:abstract public function identicalTo(other : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Bool;
	
	/**
	* Returns true if this type is a numeric type. Redefined in NumberType.
	*/
	@:overload @:public public function isNumber() : Bool;
	
	/**
	* Returns true if this type has no object representaion. Redefined in
	* ResultTreeType.
	*/
	@:overload @:public public function implementedAsMethod() : Bool;
	
	/**
	* Returns true if this type is a simple type. Redefined in NumberType,
	* BooleanType and StringType.
	*/
	@:overload @:public public function isSimple() : Bool;
	
	@:overload @:public @:abstract public function toJCType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	/**
	* Returns the distance between two types. This measure is used to select
	* overloaded functions/operators. This method is typically redefined by
	* the subclasses.
	*/
	@:overload @:public public function distanceTo(type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Int;
	
	/**
	* Returns the signature of an internal type's external representation.
	*/
	@:overload @:public @:abstract public function toSignature() : String;
	
	/**
	* Translates an object of this type to an object of type
	* <code>type</code>.
	* Expects an object of the former type and pushes an object of the latter.
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	/**
	* Translates object of this type to an object of type <code>type</code>.
	* Expects an object of the former type and pushes an object of the latter
	* if not boolean. If type <code>type</code> is boolean then a branchhandle
	* list (to be appended to the false list) is returned.
	*/
	@:overload @:public public function translateToDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	/**
	* Translates an object of this type to an non-synthesized boolean. It
	* does not push a 0 or a 1 but instead returns branchhandle list to be
	* appended to the false list.
	*/
	@:overload @:public public function translateToDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	/**
	* Translates an object of this type to the external (Java) type denoted
	* by <code>clazz</code>. This method is used to translate parameters
	* when external functions are called.
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an external (Java) type denoted by <code>clazz</code> to
	* an object of this type. This method is used to translate return values
	* when external functions are called.
	*/
	@:overload @:public public function translateFrom(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an object of this type to its boxed representation.
	*/
	@:overload @:public public function translateBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translates an object of this type to its unboxed representation.
	*/
	@:overload @:public public function translateUnBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Returns the class name of an internal type's external representation.
	*/
	@:overload @:public public function getClassName() : String;
	
	@:overload @:public public function ADD() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function SUB() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function MUL() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function DIV() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function REM() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function NEG() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function LOAD(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function STORE(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function POP() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function GT(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public public function GE(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public public function LT(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public public function LE(tozero : Bool) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public public function CMP(less : Bool) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function DUP() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	
}
