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
* $Id: ResultTreeType.java,v 1.2.4.1 2005/09/05 11:30:01 pvedula Exp $
*/
extern class ResultTreeType extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function new(methodName : String) : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:public override public function identicalTo(other : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Bool;
	
	@:overload @:public override public function toSignature() : String;
	
	@:overload @:public override public function toJCType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:overload @:public public function getMethodName() : String;
	
	@:overload @:public override public function implementedAsMethod() : Bool;
	
	/**
	* Translates a result tree to object of internal type <code>type</code>.
	* The translation to int is undefined since result trees
	* are always converted to reals in arithmetic expressions.
	*
	* @param classGen A BCEL class generator
	* @param methodGen A BCEL method generator
	* @param type An instance of the type to translate the result tree to
	* @see com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public override public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type) : Void;
	
	/**
	* Expects an result tree on the stack and pushes a boolean.
	* Translates a result tree to a boolean by first converting it to string.
	*
	* @param classGen A BCEL class generator
	* @param methodGen A BCEL method generator
	* @param type An instance of BooleanType (any)
	* @see com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : Void;
	
	/**
	* Expects an result tree on the stack and pushes a string.
	*
	* @param classGen A BCEL class generator
	* @param methodGen A BCEL method generator
	* @param type An instance of StringType (any)
	* @see com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.StringType) : Void;
	
	/**
	* Expects an result tree on the stack and pushes a real.
	* Translates a result tree into a real by first converting it to string.
	*
	* @param classGen A BCEL class generator
	* @param methodGen A BCEL method generator
	* @param type An instance of RealType (any)
	* @see com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.RealType) : Void;
	
	/**
	* Expects a result tree on the stack and pushes a boxed result tree.
	* Result trees are already boxed so the translation is just a NOP.
	*
	* @param classGen A BCEL class generator
	* @param methodGen A BCEL method generator
	* @param type An instance of ReferenceType (any)
	* @see com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ReferenceType) : Void;
	
	/**
	* Expects a result tree on the stack and pushes a node-set (iterator).
	* Note that the produced iterator is an iterator for the DOM that
	* contains the result tree, and not the DOM that is currently in use.
	* This conversion here will therefore not directly work with elements
	* such as <xsl:apply-templates> and <xsl:for-each> without the DOM
	* parameter/variable being updates as well.
	*
	* @param classGen A BCEL class generator
	* @param methodGen A BCEL method generator
	* @param type An instance of NodeSetType (any)
	* @see com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.NodeSetType) : Void;
	
	/**
	* Subsume result tree into ObjectType.
	*
	* @see     com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
	*/
	@:overload @:public public function translateTo(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ObjectType) : Void;
	
	/**
	* Translates a result tree into a non-synthesized boolean.
	* It does not push a 0 or a 1 but instead returns branchhandle list
	* to be appended to the false list.
	*
	* @param classGen A BCEL class generator
	* @param methodGen A BCEL method generator
	* @param type An instance of BooleanType (any)
	* @see com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateToDesynthesized
	*/
	@:overload @:public override public function translateToDesynthesized(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, type : com.sun.org.apache.xalan.internal.xsltc.compiler.util.BooleanType) : com.sun.org.apache.xalan.internal.xsltc.compiler.FlowList;
	
	/**
	* Translates a result tree to a Java type denoted by <code>clazz</code>.
	* Expects a result tree on the stack and pushes an object
	* of the appropriate type after coercion. Result trees are translated
	* to W3C Node or W3C NodeList and the translation is done
	* via node-set type.
	*
	* @param classGen A BCEL class generator
	* @param methodGen A BCEL method generator
	* @param clazz An reference to the Class to translate to
	* @see com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type#translateTo
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
	
	/**
	* Returns the class name of an internal type's external representation.
	*/
	@:overload @:public override public function getClassName() : String;
	
	@:overload @:public override public function LOAD(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function STORE(slot : Int) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	
}
