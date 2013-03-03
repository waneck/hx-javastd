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
* $Id: StringVector.java,v 1.2.4.1 2005/09/15 08:15:56 suresh_emailid Exp $
*/
/**
* A very simple table that stores a list of strings, optimized
* for small lists.
* @xsl.usage internal
*/
extern class StringVector implements java.io.Serializable
{
	/** @serial Size of blocks to allocate           */
	@:protected private var m_blocksize : Int;
	
	/** @serial Array of strings this contains          */
	@:protected private var m_map : java.NativeArray<String>;
	
	/** @serial Number of strings this contains          */
	@:protected private var m_firstFree : Int;
	
	/** @serial Size of the array          */
	@:protected private var m_mapSize : Int;
	
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a StringVector, using the given block size.
	*
	* @param blocksize Size of the blocks to allocate
	*/
	@:overload @:public public function new(blocksize : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return Number of strings in the list
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Get the length of the list.
	*
	* @return Number of strings in the list
	*/
	@:overload @:public @:final public function size() : Int;
	
	/**
	* Append a string onto the vector.
	*
	* @param value Sting to add to the vector
	*/
	@:overload @:public @:final public function addElement(value : String) : Void;
	
	/**
	* Get the nth element.
	*
	* @param i Index of string to find
	*
	* @return String at given index
	*/
	@:overload @:public @:final public function elementAt(i : Int) : String;
	
	/**
	* Tell if the table contains the given string.
	*
	* @param s String to look for
	*
	* @return True if the string is in this table
	*/
	@:overload @:public @:final public function contains(s : String) : Bool;
	
	/**
	* Tell if the table contains the given string. Ignore case.
	*
	* @param s String to find
	*
	* @return True if the String is in this vector
	*/
	@:overload @:public @:final public function containsIgnoreCase(s : String) : Bool;
	
	/**
	* Tell if the table contains the given string.
	*
	* @param s String to push into the vector
	*/
	@:overload @:public @:final public function push(s : String) : Void;
	
	/**
	* Pop the tail of this vector.
	*
	* @return The String last added to this vector or null not found.
	* The string is removed from the vector.
	*/
	@:overload @:public @:final public function pop() : String;
	
	/**
	* Get the string at the tail of this vector without popping.
	*
	* @return The string at the tail of this vector.
	*/
	@:overload @:public @:final public function peek() : String;
	
	
}
