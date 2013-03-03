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
* $Id: NodeCounterGenerator.java,v 1.2.4.1 2005/09/05 11:20:48 pvedula Exp $
*/
extern class NodeCounterGenerator extends com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator
{
	@:overload @:public public function new(className : String, superClassName : String, fileName : String, accessFlags : Int, interfaces : java.NativeArray<String>, stylesheet : com.sun.org.apache.xalan.internal.xsltc.compiler.Stylesheet) : Void;
	
	/**
	* Set the index of the register where "this" (the pointer to
	* the translet) is stored.
	*/
	@:overload @:public public function setTransletIndex(index : Int) : Void;
	
	/**
	* The index of the translet pointer within the execution of
	* matchFrom or matchCount.
	* Overridden from ClassGenerator.
	*/
	@:overload @:public override public function loadTranslet() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Returns <tt>true</tt> since this class is external to the
	* translet.
	*/
	@:overload @:public override public function isExternal() : Bool;
	
	
}
