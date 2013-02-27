package com.sun.imageio.plugins.common;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class LZWStringTable
{
	/*
	* Constructor allocate memory for string store data
	*/
	@:overload public function new() : Void;
	
	/*
	* @param index value of -1 indicates no predecessor [used in initialisation]
	* @param b the byte [character] to add to the string store which follows
	* the predecessor string specified the index.
	* @return 0xFFFF if no space in table left for addition of predecesor
	* index and byte b. Else return the code allocated for combination index + b.
	*/
	@:overload public function addCharString(index : java.StdTypes.Int16, b : java.StdTypes.Int8) : Int;
	
	/*
	* @param index index to prefix string
	* @param b the character that follws the index prefix
	* @return b if param index is HASH_FREE. Else return the code
	* for this prefix and byte successor
	*/
	@:overload public function findCharString(index : java.StdTypes.Int16, b : java.StdTypes.Int8) : java.StdTypes.Int16;
	
	/*
	* @param codesize the size of code to be preallocated for the
	* string store.
	*/
	@:overload public function clearTable(codesize : Int) : Void;
	
	@:overload public static function hash(index : java.StdTypes.Int16, lastbyte : java.StdTypes.Int8) : Int;
	
	/*
	* If expanded data doesn't fit into array only what will fit is written
	* to buf and the return value indicates how much of the expanded code has
	* been written to the buf. The next call to expandCode() should be with
	* the same code and have the skip parameter set the negated value of the
	* previous return. Succesive negative return values should be negated and
	* added together for next skip parameter value with same code.
	*
	* @param buf buffer to place expanded data into
	* @param offset offset to place expanded data
	* @param code the code to expand to the byte array it represents.
	* PRECONDITION This code must already be in the LZSS
	* @param skipHead is the number of bytes at the start of the expanded code to
	* be skipped before data is written to buf. It is possible that skipHead is
	* equal to codeLen.
	* @return the length of data expanded into buf. If the expanded code is longer
	* than space left in buf then the value returned is a negative number which when
	* negated is equal to the number of bytes that were used of the code being expanded.
	* This negative value also indicates the buffer is full.
	*/
	@:overload public function expandCode(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, code : java.StdTypes.Int16, skipHead : Int) : Int;
	
	@:overload public function dump(out : java.io.PrintStream) : Void;
	
	
}
