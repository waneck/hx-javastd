package com.sun.org.apache.regexp.internal;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
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
extern class REProgram implements java.io.Serializable
{
	/**
	* Constructs a program object from a character array
	* @param instruction Character array with RE opcode instructions in it
	*/
	@:overload @:public public function new(instruction : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Constructs a program object from a character array
	* @param parens Count of parens in the program
	* @param instruction Character array with RE opcode instructions in it
	*/
	@:overload @:public public function new(parens : Int, instruction : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Constructs a program object from a character array
	* @param instruction Character array with RE opcode instructions in it
	* @param lenInstruction Amount of instruction array in use
	*/
	@:overload @:public public function new(instruction : java.NativeArray<java.StdTypes.Char16>, lenInstruction : Int) : Void;
	
	/**
	* Returns a copy of the current regular expression program in a character
	* array that is exactly the right length to hold the program.  If there is
	* no program compiled yet, getInstructions() will return null.
	* @return A copy of the current compiled RE program
	*/
	@:overload @:public public function getInstructions() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Sets a new regular expression program to run.  It is this method which
	* performs any special compile-time search optimizations.  Currently only
	* two optimizations are in place - one which checks for backreferences
	* (so that they can be lazily allocated) and another which attempts to
	* find an prefix anchor string so that substantial amounts of input can
	* potentially be skipped without running the actual program.
	* @param instruction Program instruction buffer
	* @param lenInstruction Length of instruction buffer in use
	*/
	@:overload @:public public function setInstructions(instruction : java.NativeArray<java.StdTypes.Char16>, lenInstruction : Int) : Void;
	
	
}
