package sun.text;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* (C) Copyright Taligent, Inc. 1996 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
/**
* class CompactATypeArray : use only on primitive data types
* Provides a compact way to store information that is indexed by Unicode
* values, such as character properties, types, keyboard values, etc.This
* is very useful when you have a block of Unicode data that contains
* significant values while the rest of the Unicode data is unused in the
* application or when you have a lot of redundance, such as where all 21,000
* Han ideographs have the same value.  However, lookup is much faster than a
* hash table.
* A compact array of any primitive data type serves two purposes:
* <UL type = round>
*     <LI>Fast access of the indexed values.
*     <LI>Smaller memory footprint.
* </UL>
* A compact array is composed of a index array and value array.  The index
* array contains the indicies of Unicode characters to the value array.
*
* @see                CompactIntArray
* @see                CompactShortArray
* @author             Helena Shih
*/
extern class CompactByteArray implements java.lang.Cloneable
{
	/**
	* The total number of Unicode characters.
	*/
	public static var UNICODECOUNT(default, null) : Int;
	
	/**
	* Constructor for CompactByteArray.
	* @param defaultValue the default value of the compact array.
	*/
	@:overload public function new(defaultValue : java.StdTypes.Int8) : Void;
	
	/**
	* Constructor for CompactByteArray.
	* @param indexArray the indicies of the compact array.
	* @param newValues the values of the compact array.
	* @exception IllegalArgumentException If index is out of range.
	*/
	@:overload public function new(indexArray : java.NativeArray<java.StdTypes.Int16>, newValues : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Get the mapped value of a Unicode character.
	* @param index the character to get the mapped value with
	* @return the mapped value of the given character
	*/
	@:overload public function elementAt(index : java.StdTypes.Char16) : java.StdTypes.Int8;
	
	/**
	* Set a new value for a Unicode character.
	* Set automatically expands the array if it is compacted.
	* @param index the character to set the mapped value with
	* @param value the new mapped value
	*/
	@:overload public function setElementAt(index : java.StdTypes.Char16, value : java.StdTypes.Int8) : Void;
	
	/**
	* Set new values for a range of Unicode character.
	* @param start the starting offset o of the range
	* @param end the ending offset of the range
	* @param value the new mapped value
	*/
	@:overload public function setElementAt(start : java.StdTypes.Char16, end : java.StdTypes.Char16, value : java.StdTypes.Int8) : Void;
	
	/**
	*Compact the array.
	*/
	@:overload public function compact() : Void;
	
	/** For internal use only.  Do not modify the result, the behavior of
	* modified results are undefined.
	*/
	@:overload public function getIndexArray() : java.NativeArray<java.StdTypes.Int16>;
	
	/** For internal use only.  Do not modify the result, the behavior of
	* modified results are undefined.
	*/
	@:overload public function getStringArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Overrides Cloneable
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Compares the equality of two compact array objects.
	* @param obj the compact array object to be compared with this.
	* @return true if the current compact array object is the same
	* as the compact array object obj; false otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Generates the hash code for the compact array object
	*/
	@:overload public function hashCode() : Int;
	
	
}
