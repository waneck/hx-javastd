package com.sun.org.apache.xerces.internal.impl.xpath.regex;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class BMPattern
{
	@:overload @:public public function new(pat : String, ignoreCase : Bool) : Void;
	
	@:overload @:public public function new(pat : String, tableSize : Int, ignoreCase : Bool) : Void;
	
	/**
	*
	* @return -1 if <var>iterator</var> does not contain this pattern.
	*/
	@:overload @:public public function matches(iterator : java.text.CharacterIterator, start : Int, limit : Int) : Int;
	
	/**
	*
	* @return -1 if <var>str</var> does not contain this pattern.
	*/
	@:overload @:public public function matches(str : String, start : Int, limit : Int) : Int;
	
	/**
	*
	* @return -1 if <var>chars</char> does not contain this pattern.
	*/
	@:overload @:public public function matches(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int) : Int;
	
	
}
