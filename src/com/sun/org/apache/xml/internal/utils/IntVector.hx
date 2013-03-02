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
* $Id: IntVector.java,v 1.2.4.1 2005/09/15 08:15:45 suresh_emailid Exp $
*/
/**
* A very simple table that stores a list of int.
*
* This version is based on a "realloc" strategy -- a simle array is
* used, and when more storage is needed, a larger array is obtained
* and all existing data is recopied into it. As a result, read/write
* access to existing nodes is O(1) fast but appending may be O(N**2)
* slow. See also SuballocatedIntVector.
* @xsl.usage internal
*/
extern class IntVector implements java.lang.Cloneable
{
	/** Size of blocks to allocate          */
	private var m_blocksize : Int;
	
	/** Array of ints          */
	private var m_map : java.NativeArray<Int>;
	
	/** Number of ints in array          */
	private var m_firstFree : Int;
	
	/** Size of array          */
	private var m_mapSize : Int;
	
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a IntVector, using the given block size.
	*
	* @param blocksize Size of block to allocate
	*/
	@:overload public function new(blocksize : Int) : Void;
	
	/**
	* Construct a IntVector, using the given block size.
	*
	* @param blocksize Size of block to allocate
	*/
	@:overload public function new(blocksize : Int, increaseSize : Int) : Void;
	
	/**
	* Copy constructor for IntVector
	*
	* @param v Existing IntVector to copy
	*/
	@:overload public function new(v : com.sun.org.apache.xml.internal.utils.IntVector) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return length of the list
	*/
	@:overload @:final public function size() : Int;
	
	/**
	* Get the length of the list.
	*
	* @return length of the list
	*/
	@:overload @:final public function setSize(sz : Int) : Void;
	
	/**
	* Append a int onto the vector.
	*
	* @param value Int to add to the list
	*/
	@:overload @:final public function addElement(value : Int) : Void;
	
	/**
	* Append several int values onto the vector.
	*
	* @param value Int to add to the list
	*/
	@:overload @:final public function addElements(value : Int, numberOfElements : Int) : Void;
	
	/**
	* Append several slots onto the vector, but do not set the values.
	*
	* @param numberOfElements Int to add to the list
	*/
	@:overload @:final public function addElements(numberOfElements : Int) : Void;
	
	/**
	* Inserts the specified node in this vector at the specified index.
	* Each component in this vector with an index greater or equal to
	* the specified index is shifted upward to have an index one greater
	* than the value it had previously.
	*
	* @param value Int to insert
	* @param at Index of where to insert
	*/
	@:overload @:final public function insertElementAt(value : Int, at : Int) : Void;
	
	/**
	* Inserts the specified node in this vector at the specified index.
	* Each component in this vector with an index greater or equal to
	* the specified index is shifted upward to have an index one greater
	* than the value it had previously.
	*/
	@:overload @:final public function removeAllElements() : Void;
	
	/**
	* Removes the first occurrence of the argument from this vector.
	* If the object is found in this vector, each component in the vector
	* with an index greater or equal to the object's index is shifted
	* downward to have an index one smaller than the value it had
	* previously.
	*
	* @param s Int to remove from array
	*
	* @return True if the int was removed, false if it was not found
	*/
	@:overload @:final public function removeElement(s : Int) : Bool;
	
	/**
	* Deletes the component at the specified index. Each component in
	* this vector with an index greater or equal to the specified
	* index is shifted downward to have an index one smaller than
	* the value it had previously.
	*
	* @param i index of where to remove and int
	*/
	@:overload @:final public function removeElementAt(i : Int) : Void;
	
	/**
	* Sets the component at the specified index of this vector to be the
	* specified object. The previous component at that position is discarded.
	*
	* The index must be a value greater than or equal to 0 and less
	* than the current size of the vector.
	*
	* @param value object to set
	* @param index Index of where to set the object
	*/
	@:overload @:final public function setElementAt(value : Int, index : Int) : Void;
	
	/**
	* Get the nth element.
	*
	* @param i index of object to get
	*
	* @return object at given index
	*/
	@:overload @:final public function elementAt(i : Int) : Int;
	
	/**
	* Tell if the table contains the given node.
	*
	* @param s object to look for
	*
	* @return true if the object is in the list
	*/
	@:overload @:final public function contains(s : Int) : Bool;
	
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
	@:overload @:final public function indexOf(elem : Int, index : Int) : Int;
	
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
	@:overload @:final public function indexOf(elem : Int) : Int;
	
	/**
	* Searches for the first occurence of the given argument,
	* beginning the search at index, and testing for equality
	* using the equals method.
	*
	* @param elem Object to look for
	* @return the index of the first occurrence of the object
	* argument in this vector at position index or later in the
	* vector; returns -1 if the object is not found.
	*/
	@:overload @:final public function lastIndexOf(elem : Int) : Int;
	
	/**
	* Returns clone of current IntVector
	*
	* @return clone of current IntVector
	*/
	@:overload public function clone() : Dynamic;
	
	
}
