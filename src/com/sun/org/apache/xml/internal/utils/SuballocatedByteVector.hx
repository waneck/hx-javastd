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
* $Id: SuballocatedByteVector.java,v 1.2.4.1 2005/09/15 08:15:57 suresh_emailid Exp $
*/
/**
* A very simple table that stores a list of byte. Very similar API to our
* IntVector class (same API); different internal storage.
*
* This version uses an array-of-arrays solution. Read/write access is thus
* a bit slower than the simple IntVector, and basic storage is a trifle
* higher due to the top-level array -- but appending is O(1) fast rather
* than O(N**2) slow, which will swamp those costs in situations where
* long vectors are being built up.
*
* Known issues:
*
* Some methods are private because they haven't yet been tested properly.
*
* If an element has not been set (because we skipped it), its value will
* initially be 0. Shortening the vector does not clear old storage; if you
* then skip values and setElementAt a higher index again, you may see old data
* reappear in the truncated-and-restored section. Doing anything else would
* have performance costs.
* @xsl.usage internal
*/
extern class SuballocatedByteVector
{
	/** Size of blocks to allocate          */
	@:protected private var m_blocksize : Int;
	
	/** Number of blocks to (over)allocate by */
	@:protected private var m_numblocks : Int;
	
	/** Array of arrays of bytes          */
	@:protected private var m_map : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	/** Number of bytes in array          */
	@:protected private var m_firstFree : Int;
	
	/** "Shortcut" handle to m_map[0] */
	@:protected private var m_map0 : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a ByteVector, using the given block size.
	*
	* @param blocksize Size of block to allocate
	*/
	@:overload @:public public function new(blocksize : Int) : Void;
	
	/**
	* Construct a ByteVector, using the given block size.
	*
	* @param blocksize Size of block to allocate
	*/
	@:overload @:public public function new(blocksize : Int, increaseSize : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return length of the list
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Append a byte onto the vector.
	*
	* @param value Byte to add to the list
	*/
	@:overload @:public public function addElement(value : java.StdTypes.Int8) : Void;
	
	/**
	* Wipe it out.
	*/
	@:overload @:public public function removeAllElements() : Void;
	
	/**
	* Sets the component at the specified index of this vector to be the
	* specified object. The previous component at that position is discarded.
	*
	* The index must be a value greater than or equal to 0 and less
	* than the current size of the vector.
	*
	* @param value
	* @param at     Index of where to set the object
	*/
	@:overload @:public public function setElementAt(value : java.StdTypes.Int8, at : Int) : Void;
	
	/**
	* Get the nth element. This is often at the innermost loop of an
	* application, so performance is critical.
	*
	* @param i index of value to get
	*
	* @return value at given index. If that value wasn't previously set,
	* the result is undefined for performance reasons. It may throw an
	* exception (see below), may return zero, or (if setSize has previously
	* been used) may return stale data.
	*
	* @throws ArrayIndexOutOfBoundsException if the index was _clearly_
	* unreasonable (negative, or past the highest block).
	*
	* @throws NullPointerException if the index points to a block that could
	* have existed (based on the highest index used) but has never had anything
	* set into it.
	* %REVIEW% Could add a catch to create the block in that case, or return 0.
	* Try/Catch is _supposed_ to be nearly free when not thrown to. Do we
	* believe that? Should we have a separate safeElementAt?
	*/
	@:overload @:public public function elementAt(i : Int) : java.StdTypes.Int8;
	
	/**
	* Searches for the first occurence of the given argument,
	* beginning the search at index, and testing for equality
	* using the equals method.
	*
	* @param elem object to look for
	* @param index Index of where to begin search
	* @return the index of the first occurrence of the object
	* argument in this vector at position index or later in the
	* vector; returns -1 if the object is not found.
	*/
	@:overload @:public public function indexOf(elem : java.StdTypes.Int8, index : Int) : Int;
	
	/**
	* Searches for the first occurence of the given argument,
	* beginning the search at index, and testing for equality
	* using the equals method.
	*
	* @param elem object to look for
	* @return the index of the first occurrence of the object
	* argument in this vector at position index or later in the
	* vector; returns -1 if the object is not found.
	*/
	@:overload @:public public function indexOf(elem : java.StdTypes.Int8) : Int;
	
	
}
