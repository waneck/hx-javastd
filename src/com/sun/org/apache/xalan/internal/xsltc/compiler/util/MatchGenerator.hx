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
* $Id: MatchGenerator.java,v 1.2.4.1 2005/09/05 11:15:21 pvedula Exp $
*/
extern class MatchGenerator extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator
{
	@:overload @:public public function new(access_flags : Int, return_type : com.sun.org.apache.bcel.internal.generic.Type, arg_types : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>, arg_names : java.NativeArray<String>, method_name : String, class_name : String, il : com.sun.org.apache.bcel.internal.generic.InstructionList, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	@:overload @:public override public function loadCurrentNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public override public function storeCurrentNode() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function getHandlerIndex() : Int;
	
	/**
	* Get index of the register where the DOM is stored.
	*/
	@:overload @:public override public function loadDOM() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Set index where the reference to the DOM is stored.
	*/
	@:overload @:public public function setDomIndex(domIndex : Int) : Void;
	
	/**
	* Get index of the register where the current iterator is stored.
	*/
	@:overload @:public public function getIteratorIndex() : Int;
	
	/**
	* Set index of the register where the current iterator is stored.
	*/
	@:overload @:public public function setIteratorIndex(iteratorIndex : Int) : Void;
	
	@:overload @:public override public function getLocalIndex(name : String) : Int;
	
	
}
