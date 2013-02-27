package com.sun.org.apache.xpath.internal.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2004 The Apache Software Foundation.
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
* $Id: OpMapVector.java,v 1.2.4.1 2005/09/10 03:57:14 jeffsuttor Exp $
*/
/**
*
* Like IntVector, but used only for the OpMap array.  Length of array
* is kept in the m_lengthPos position of the array.  Only the required methods
* are in included here.
* @xsl.usage internal
*/
extern class OpMapVector
{
	/** Size of blocks to allocate          */
	private var m_blocksize : Int;
	
	/** Array of ints          */
	private var m_map : java.NativeArray<Int>;
	
	/** Position where size of array is kept          */
	private var m_lengthPos : Int;
	
	/** Size of array          */
	private var m_mapSize : Int;
	
	/**
	* Construct a OpMapVector, using the given block size.
	*
	* @param blocksize Size of block to allocate
	*/
	@:overload public function new(blocksize : Int, increaseSize : Int, lengthPos : Int) : Void;
	
	/**
	* Get the nth element.
	*
	* @param i index of object to get
	*
	* @return object at given index
	*/
	@:overload @:final public function elementAt(i : Int) : Int;
	
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
	
	/*
	* Reset the array to the supplied size.  No checking is done.
	*
	* @param size The size to trim to.
	*/
	@:overload @:final public function setToSize(size : Int) : Void;
	
	
}
