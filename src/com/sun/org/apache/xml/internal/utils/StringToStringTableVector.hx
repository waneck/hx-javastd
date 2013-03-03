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
* $Id: StringToStringTableVector.java,v 1.2.4.1 2005/09/15 08:15:56 suresh_emailid Exp $
*/
/**
* A very simple table that stores a list of StringToStringTables, optimized
* for small lists.
* @xsl.usage internal
*/
extern class StringToStringTableVector
{
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a StringToStringTableVector, using the given block size.
	*
	* @param blocksize Size of blocks to allocate
	*/
	@:overload @:public public function new(blocksize : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return Number of StringToStringTable objects in the list
	*/
	@:overload @:public @:final public function getLength() : Int;
	
	/**
	* Get the length of the list.
	*
	* @return Number of StringToStringTable objects in the list
	*/
	@:overload @:public @:final public function size() : Int;
	
	/**
	* Append a StringToStringTable object onto the vector.
	*
	* @param value StringToStringTable object to add
	*/
	@:overload @:public @:final public function addElement(value : com.sun.org.apache.xml.internal.utils.StringToStringTable) : Void;
	
	/**
	* Given a string, find the last added occurance value
	* that matches the key.
	*
	* @param key String to look up
	*
	* @return the last added occurance value that matches the key
	* or null if not found.
	*/
	@:overload @:public @:final public function get(key : String) : String;
	
	/**
	* Given a string, find out if there is a value in this table
	* that matches the key.
	*
	* @param key String to look for
	*
	* @return True if the string was found in table, null if not
	*/
	@:overload @:public @:final public function containsKey(key : String) : Bool;
	
	/**
	* Remove the last element.
	*/
	@:overload @:public @:final public function removeLastElem() : Void;
	
	/**
	* Get the nth element.
	*
	* @param i Index of element to find
	*
	* @return The StringToStringTable object at the given index
	*/
	@:overload @:public @:final public function elementAt(i : Int) : com.sun.org.apache.xml.internal.utils.StringToStringTable;
	
	/**
	* Tell if the table contains the given StringToStringTable.
	*
	* @param s The StringToStringTable to find
	*
	* @return True if the StringToStringTable is found
	*/
	@:overload @:public @:final public function contains(s : com.sun.org.apache.xml.internal.utils.StringToStringTable) : Bool;
	
	
}
