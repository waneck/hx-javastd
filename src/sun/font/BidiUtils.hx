package sun.font;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1999-2000 - All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by IBM. These materials are provided
* under terms of a License Agreement between IBM and Sun.
* This technology is protected by multiple US and International
* patents. This notice and attribution to IBM may not be removed.
*/
extern class BidiUtils
{
	/**
	* Return the level of each character into the levels array starting at start.
	* This is a convenience method for clients who prefer to use an explicit levels
	* array instead of iterating over the runs.
	*
	* @param levels the array to receive the character levels
	* @param start the starting offset into the the array
	* @throws IndexOutOfBoundsException if <code>start</code> is less than 0 or
	* <code>start + getLength()</code> is greater than <code>levels.length</code>.
	*/
	@:overload public static function getLevels(bidi : java.text.Bidi, levels : java.NativeArray<java.StdTypes.Int8>, start : Int) : Void;
	
	/**
	* Return an array containing the resolved bidi level of each character, in logical order.
	* @return an array containing the level of each character, in logical order.
	*/
	@:overload public static function getLevels(bidi : java.text.Bidi) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Given level data, compute a a visual to logical mapping.
	* The leftmost (or topmost) character is at visual index zero.  The
	* logical index of the character is derived from the visual index
	* by the expression <code>li = map[vi];</code>.
	* @param levels the levels array
	* @return the mapping array from visual to logical
	*/
	@:overload public static function createVisualToLogicalMap(levels : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<Int>;
	
	/**
	* Return the inverse position map.  The source array must map one-to-one (each value
	* is distinct and the values run from zero to the length of the array minus one).
	* For example, if <code>values[i] = j</code>, then <code>inverse[j] = i</code>.
	* @param values the source ordering array
	* @return the inverse array
	*/
	@:overload public static function createInverseMap(values : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Return an array containing contiguous values from 0 to length
	* having the same ordering as the source array. If this would be
	* a canonical ltr ordering, return null.  The data in values[] is NOT
	* required to be a permutation, but elements in values are required
	* to be distinct.
	* @param values an array containing the discontiguous values
	* @return the contiguous values
	*/
	@:overload public static function createContiguousOrder(values : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Return an array containing the data in the values array from start up to limit,
	* normalized to fall within the range from 0 up to limit - start.
	* If this would be a canonical ltr ordering, return null.
	* NOTE: This method assumes that values[] is a logical to visual map
	* generated from levels[].
	* @param values the source mapping
	* @param levels the levels corresponding to the values
	* @param start the starting offset in the values and levels arrays
	* @param limit the limiting offset in the values and levels arrays
	* @return the normlized map
	*/
	@:overload public static function createNormalizedMap(values : java.NativeArray<Int>, levels : java.NativeArray<java.StdTypes.Int8>, start : Int, limit : Int) : java.NativeArray<Int>;
	
	/**
	* Reorder the objects in the array into visual order based on their levels.
	* This is a utility function to use when you have a collection of objects
	* representing runs of text in logical order, each run containing text
	* at a single level.  The elements in the objects array will be reordered
	* into visual order assuming each run of text has the level provided
	* by the corresponding element in the levels array.
	* @param levels an array representing the bidi level of each object
	* @param objects the array of objects to be reordered into visual order
	*/
	@:overload public static function reorderVisually(levels : java.NativeArray<java.StdTypes.Int8>, objects : java.NativeArray<Dynamic>) : Void;
	
	
}
