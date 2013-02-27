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
extern class RECompiler
{
	/**
	* Constructor.  Creates (initially empty) storage for a regular expression program.
	*/
	@:overload public function new() : Void;
	
	/**
	* Compiles a regular expression pattern into a program runnable by the pattern
	* matcher class 'RE'.
	* @param pattern Regular expression pattern to compile (see RECompiler class
	* for details).
	* @return A compiled regular expression program.
	* @exception RESyntaxException Thrown if the regular expression has invalid syntax.
	* @see RECompiler
	* @see RE
	*/
	@:overload public function compile(pattern : String) : com.sun.org.apache.regexp.internal.REProgram;
	
	
}
/**
* Local, nested class for maintaining character ranges for character classes.
*/
@:native('com$sun$org$apache$regexp$internal$RECompiler$RERange') @:internal extern class RECompiler_RERange
{
	
}
