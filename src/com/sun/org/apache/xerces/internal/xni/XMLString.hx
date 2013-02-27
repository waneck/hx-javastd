package com.sun.org.apache.xerces.internal.xni;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
/**
* This class is used as a structure to pass text contained in the underlying
* character buffer of the scanner. The offset and length fields allow the
* buffer to be re-used without creating new character arrays.
* <p>
* <strong>Note:</strong> Methods that are passed an XMLString structure
* should consider the contents read-only and not make any modifications
* to the contents of the buffer. The method receiving this structure
* should also not modify the offset and length if this structure (or
* the values of this structure) are passed to another method.
* <p>
* <strong>Note:</strong> Methods that are passed an XMLString structure
* are required to copy the information out of the buffer if it is to be
* saved for use beyond the scope of the method. The contents of the
* structure are volatile and the contents of the character buffer cannot
* be assured once the method that is passed this structure returns.
* Therefore, methods passed this structure should not save any reference
* to the structure or the character array contained in the structure.
*
* @author Eric Ye, IBM
* @author Andy Clark, IBM
*
*/
extern class XMLString
{
	/** The character array. */
	public var ch : java.NativeArray<java.StdTypes.Char16>;
	
	/** The offset into the character array. */
	public var offset : Int;
	
	/** The length of characters from the offset. */
	public var length : Int;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* Constructs an XMLString structure preset with the specified
	* values.
	*
	* @param ch     The character array.
	* @param offset The offset into the character array.
	* @param length The length of characters from the offset.
	*/
	@:overload public function new(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Constructs an XMLString structure with copies of the values in
	* the given structure.
	* <p>
	* <strong>Note:</strong> This does not copy the character array;
	* only the reference to the array is copied.
	*
	* @param string The XMLString to copy.
	*/
	@:overload public function new(string : XMLString) : Void;
	
	/**
	* Initializes the contents of the XMLString structure with the
	* specified values.
	*
	* @param ch     The character array.
	* @param offset The offset into the character array.
	* @param length The length of characters from the offset.
	*/
	@:overload public function setValues(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	/**
	* Initializes the contents of the XMLString structure with copies
	* of the given string structure.
	* <p>
	* <strong>Note:</strong> This does not copy the character array;
	* only the reference to the array is copied.
	*
	* @param s
	*/
	@:overload public function setValues(s : XMLString) : Void;
	
	/** Resets all of the values to their defaults. */
	@:overload public function clear() : Void;
	
	/**
	* Returns true if the contents of this XMLString structure and
	* the specified array are equal.
	*
	* @param ch     The character array.
	* @param offset The offset into the character array.
	* @param length The length of characters from the offset.
	*/
	@:overload public function equals(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Bool;
	
	/**
	* Returns true if the contents of this XMLString structure and
	* the specified string are equal.
	*
	* @param s The string to compare.
	*/
	@:overload public function equals(s : String) : Bool;
	
	/** Returns a string representation of this object. */
	@:overload public function toString() : String;
	
	
}
