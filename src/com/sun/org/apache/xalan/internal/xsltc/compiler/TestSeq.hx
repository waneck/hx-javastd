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
* $Id: TestSeq.java,v 1.2.4.1 2005/09/12 11:31:38 pvedula Exp $
*/
@:internal extern class TestSeq
{
	/**
	* Creates a new test sequence given a set of patterns and a mode.
	*/
	@:overload public function new(patterns : java.util.Vector<Dynamic>, mode : com.sun.org.apache.xalan.internal.xsltc.compiler.Mode) : Void;
	
	@:overload public function new(patterns : java.util.Vector<Dynamic>, kernelType : Int, mode : com.sun.org.apache.xalan.internal.xsltc.compiler.Mode) : Void;
	
	/**
	* Returns a string representation of this test sequence. Notice
	* that test sequences are mutable, so the value returned by this
	* method is different before and after calling reduce().
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the instruction list for this test sequence
	*/
	@:overload public function getInstructionList() : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	/**
	* Return the highest priority for a pattern in this test
	* sequence. This is either the priority of the first or
	* of the default pattern.
	*/
	@:overload public function getPriority() : Float;
	
	/**
	* Returns the position of the highest priority pattern in
	* this test sequence.
	*/
	@:overload public function getPosition() : Int;
	
	/**
	* Reduce the patterns in this test sequence. Creates a new
	* vector of patterns and sets the default pattern if it
	* finds a patterns that is fully reduced.
	*/
	@:overload public function reduce() : Void;
	
	/**
	* Returns, by reference, the templates that are included in
	* this test sequence. Note that a single template can occur
	* in several test sequences if its pattern is a union.
	*/
	@:overload public function findTemplates(templates : java.util.Dictionary<Dynamic, Dynamic>) : Void;
	
	/**
	* Compile the code for this test sequence. Compile patterns
	* from highest to lowest priority. Note that since patterns
	* can be share by multiple test sequences, instruction lists
	* must be copied before backpatching.
	*/
	@:overload public function compile(classGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.ClassGenerator, methodGen : com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodGenerator, continuation : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	
}
