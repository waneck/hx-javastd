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
* $Id: SuballocatedIntVector.java,v 1.3 2005/09/28 13:49:22 pvedula Exp $
*/
/**
* A very simple table that stores a list of int. Very similar API to our
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
* Retrieval performance is critical, since this is used at the core
* of the DTM model. (Append performance is almost as important.)
* That's pushing me toward just letting reads from unset indices
* throw exceptions or return stale data; safer behavior would have
* performance costs.
* */
extern class SuballocatedIntVector
{
	/** Size of blocks to allocate          */
	private var m_blocksize : Int;
	
	/** Bitwise addressing (much faster than div/remainder */
	private var m_SHIFT : Int;
	
	/** The default number of blocks to (over)allocate by */
	private static var NUMBLOCKS_DEFAULT(default, null) : Int;
	
	/** The number of blocks to (over)allocate by */
	private var m_numblocks : Int;
	
	/** Array of arrays of ints          */
	private var m_map : java.NativeArray<java.NativeArray<Int>>;
	
	/** Number of ints in array          */
	private var m_firstFree : Int;
	
	/** "Shortcut" handle to m_map[0]. Surprisingly helpful for short vectors. */
	private var m_map0 : java.NativeArray<Int>;
	
	/** "Shortcut" handle to most recently added row of m_map.
	* Very helpful during construction.
	* @xsl.usage internal
	*/
	private var m_buildCache : java.NativeArray<Int>;
	
	private var m_buildCacheStartIndex : Int;
	
	/**
	* Default constructor.  Note that the default
	* block size is currently 2K, which may be overkill for
	* small lists and undershootng for large ones.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a IntVector, using the given block size and number
	* of blocks. For efficiency, we will round the requested size
	* off to a power of two.
	*
	* @param blocksize Size of block to allocate
	* @param numblocks Number of blocks to allocate
	* */
	@:overload public function new(blocksize : Int, numblocks : Int) : Void;
	
	/** Construct a IntVector, using the given block size and
	* the default number of blocks (32).
	*
	* @param blocksize Size of block to allocate
	* */
	@:overload public function new(blocksize : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return length of the list
	*/
	@:overload public function size() : Int;
	
	/**
	* Set the length of the list. This will only work to truncate the list, and
	* even then it has not been heavily tested and may not be trustworthy.
	*
	* @return length of the list
	*/
	@:overload public function setSize(sz : Int) : Void;
	
	/**
	* Append a int onto the vector.
	*
	* @param value Int to add to the list
	*/
	@:overload public function addElement(value : Int) : Void;
	
	/**
	* Wipe it out. Currently defined as equivalent to setSize(0).
	*/
	@:overload public function removeAllElements() : Void;
	
	/**
	* Sets the component at the specified index of this vector to be the
	* specified object. The previous component at that position is discarded.
	*
	* The index must be a value greater than or equal to 0 and less
	* than the current size of the vector.
	*
	* @param value object to set
	* @param at    Index of where to set the object
	*/
	@:overload public function setElementAt(value : Int, at : Int) : Void;
	
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
	@:overload public function elementAt(i : Int) : Int;
	
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
	@:overload public function indexOf(elem : Int, index : Int) : Int;
	
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
	@:overload public function indexOf(elem : Int) : Int;
	
	/**
	* Return the internal m_map0 array
	* @return the m_map0 array
	*/
	@:overload @:final public function getMap0() : java.NativeArray<Int>;
	
	/**
	* Return the m_map double array
	* @return the internal map of array of arrays
	*/
	@:overload @:final public function getMap() : java.NativeArray<java.NativeArray<Int>>;
	
	
}
