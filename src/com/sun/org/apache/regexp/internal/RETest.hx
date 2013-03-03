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
extern class RETest
{
	/**
	* Main program entrypoint.  If an argument is given, it will be compiled
	* and interactive matching will ensue.  If no argument is given, the
	* file RETest.txt will be used as automated testing input.
	* @param args Command line arguments (optional regular expression)
	*/
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	* Testing entrypoint.
	* @param args Command line arguments
	* @exception Exception thrown in case of error
	*/
	@:overload @:public @:static public static function test(args : java.NativeArray<String>) : Bool;
	
	/**
	* Constructor
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function assertEquals(message : String, expected : String, actual : String) : Void;
	
	@:overload @:public public function assertEquals(message : String, expected : Int, actual : Int) : Void;
	
	
}
@:internal extern class RETestCase
{
	@:overload @:public public function new(test : com.sun.org.apache.regexp.internal.RETest, tag : String, pattern : String, toMatch : String, badPattern : Bool, shouldMatch : Bool, parens : java.NativeArray<String>) : Void;
	
	@:overload @:public public function runTest() : Void;
	
	@:overload @:public public function assertEquals(log : java.lang.StringBuffer, message : String, expected : String, actual : String) : Bool;
	
	@:overload @:public public function assertEquals(log : java.lang.StringBuffer, message : String, expected : Int, actual : Int) : Bool;
	
	
}
