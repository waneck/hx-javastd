package com.sun.org.apache.xml.internal.serializer.utils;
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
/*
* $Id: StringToIntTable.java,v 1.1.4.1 2005/09/08 11:03:19 suresh_emailid Exp $
*/
/**
* A very simple lookup table that stores a list of strings, the even
* number strings being keys, and the odd number strings being values.
*
* This class is a copy of the one in com.sun.org.apache.xml.internal.utils.
* It exists to cut the serializers dependancy on that package.
*
* This class is not a public API, it is only public so it can be used
* in com.sun.org.apache.xml.internal.serializer.
*
* @xsl.usage internal
*/
extern class StringToIntTable
{
	@:public @:static @:final public static var INVALID_KEY(default, null) : Int;
	
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a StringToIntTable, using the given block size.
	*
	* @param blocksize Size of block to allocate
	*/
	@:overload @:public public function new(blocksize : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return the length of the list
	*/
	@:overload @:public @:final public function getLength() : Int;
	
	/**
	* Append a string onto the vector.
	*
	* @param key String to append
	* @param value The int value of the string
	*/
	@:overload @:public @:final public function put(key : String, value : Int) : Void;
	
	/**
	* Tell if the table contains the given string.
	*
	* @param key String to look for
	*
	* @return The String's int value
	*
	*/
	@:overload @:public @:final public function get(key : String) : Int;
	
	/**
	* Tell if the table contains the given string. Ignore case.
	*
	* @param key String to look for
	*
	* @return The string's int value
	*/
	@:overload @:public @:final public function getIgnoreCase(key : String) : Int;
	
	/**
	* Tell if the table contains the given string.
	*
	* @param key String to look for
	*
	* @return True if the string is in the table
	*/
	@:overload @:public @:final public function contains(key : String) : Bool;
	
	/**
	* Return array of keys in the table.
	*
	* @return Array of strings
	*/
	@:overload @:public @:final public function keys() : java.NativeArray<String>;
	
	
}
