package com.sun.org.apache.xml.internal.utils;
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
* $Id: StringToStringTable.java,v 1.2.4.1 2005/09/15 08:15:56 suresh_emailid Exp $
*/
/**
* A very simple lookup table that stores a list of strings, the even
* number strings being keys, and the odd number strings being values.
* @xsl.usage internal
*/
extern class StringToStringTable
{
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a StringToStringTable, using the given block size.
	*
	* @param blocksize Size of blocks to allocate
	*/
	@:overload public function new(blocksize : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return Number of strings in the list
	*/
	@:overload @:final public function getLength() : Int;
	
	/**
	* Append a string onto the vector.
	* The strings go to the even locations in the array
	* and the values in the odd.
	*
	* @param key String to add to the list
	* @param value Value of the string
	*/
	@:overload @:final public function put(key : String, value : String) : Void;
	
	/**
	* Tell if the table contains the given string.
	*
	* @param key String to look up
	*
	* @return return the value of the string or null if not found.
	*/
	@:overload @:final public function get(key : String) : String;
	
	/**
	* Remove the given string and its value from this table.
	*
	* @param key String to remove from the table
	*/
	@:overload @:final public function remove(key : String) : Void;
	
	/**
	* Tell if the table contains the given string. Ignore case
	*
	* @param key String to look up
	*
	* @return The value of the string or null if not found
	*/
	@:overload @:final public function getIgnoreCase(key : String) : String;
	
	/**
	* Tell if the table contains the given string in the value.
	*
	* @param val Value of the string to look up
	*
	* @return the string associated with the given value or null if not found
	*/
	@:overload @:final public function getByValue(val : String) : String;
	
	/**
	* Get the nth element.
	*
	* @param i index of the string to look up.
	*
	* @return The string at the given index.
	*/
	@:overload @:final public function elementAt(i : Int) : String;
	
	/**
	* Tell if the table contains the given string.
	*
	* @param key String to look up
	*
	* @return True if the given string is in this table
	*/
	@:overload @:final public function contains(key : String) : Bool;
	
	/**
	* Tell if the table contains the given string.
	*
	* @param val value to look up
	*
	* @return True if the given value is in the table.
	*/
	@:overload @:final public function containsValue(val : String) : Bool;
	
	
}
