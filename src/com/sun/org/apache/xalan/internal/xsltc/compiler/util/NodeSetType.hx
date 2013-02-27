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
* $Id: NodeSetType.java,v 1.2.4.1 2005/09/05 11:21:45 pvedula Exp $
*/
extern class NodeSetType extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
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
	* Translates a node-set into an object of internal type
	* <code>type</code>. The translation to int is undefined
	* since node-sets are always converted to
	* reals in arithmetic expressions.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	/**
	* Translates an external Java Class into an internal type.
	* Expects the Java object on the stack, pushes the internal type
	*/
	@:overload override public function translateFrom(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates a node-set into a synthesized boolean.
	* The boolean value of a node-set is "true" if non-empty
	* and "false" otherwise. Notice that the
	* function getFirstNode() is called in translateToDesynthesized().
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : Void;
	
	/**
	* Translates a node-set into a string. The string value of a node-set is
	* value of its first element.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType) : Void;
	
	/**
	* Expects a node-set on the stack and pushes a real.
	* First the node-set is converted to string, and from string to real.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.RealType) : Void;
	
	/**
	* Expects a node-set on the stack and pushes a node.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeType) : Void;
	
	/**
	* Subsume node-set into ObjectType.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ObjectType) : Void;
	
	/**
	* Translates a node-set into a non-synthesized boolean. It does not
	* push a 0 or a 1 but instead returns branchhandle list to be appended
	* to the false list.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateToDesynthesized
	*/
	@:overload override public function translateToDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	/**
	* Expects a node-set on the stack and pushes a boxed node-set.
	* Node sets are already boxed so the translation is just a NOP.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType) : Void;
	
	/**
	* Translates a node-set into the Java type denoted by <code>clazz</code>.
	* Expects a node-set on the stack and pushes an object of the appropriate
	* type after coercion.
	*/
	@:overload override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, clazz : Class<Dynamic>) : Void;
	
	/**
	* Translates an object of this type to its boxed representation.
	*/
	@:overload override public function translateBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Translates an object of this type to its unboxed representation.
	*/
	@:overload override public function translateUnBox(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator) : Void;
	
	/**
	* Returns the class name of an internal type's external representation.
	*/
	@:overload override public function getClassName() : String;
	
	@:overload override public function LOAD(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload override public function STORE(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	
}
