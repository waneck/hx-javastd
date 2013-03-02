package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: BitArray.java,v 1.2.4.1 2005/09/06 05:56:52 pvedula Exp $
*/
extern class BitArray implements java.io.Externalizable
{
	/**
	* Constructor. Defines the initial size of the bit array (in bits).
	*/
	@:overload public function new() : Void;
	
	@:overload public function new(size : Int) : Void;
	
	@:overload public function new(size : Int, bits : java.NativeArray<Int>) : Void;
	
	/**
	* Set the mask for this bit array. The upper 8 bits of this mask
	* indicate the DOM in which the nodes in this array belong.
	*/
	@:overload public function setMask(mask : Int) : Void;
	
	/**
	* See setMask()
	*/
	@:overload public function getMask() : Int;
	
	/**
	* Returns the size of this bit array (in bits).
	*/
	@:overload @:final public function size() : Int;
	
	/**
	* Returns true if the given bit is set
	*/
	@:overload @:final public function getBit(bit : Int) : Bool;
	
	/**
	* Returns the next set bit from a given position
	*/
	@:overload @:final public function getNextBit(startBit : Int) : Int;
	
	@:overload @:final public function getBitNumber(pos : Int) : Int;
	
	/**
	* Returns the integer array in which the bit array is contained
	*/
	@:overload @:final public function data() : java.NativeArray<Int>;
	
	/**
	* Sets a given bit
	*/
	@:overload @:final public function setBit(bit : Int) : Void;
	
	/**
	* Merge two bit arrays. This currently only works for nodes from
	* a single DOM (because there is only one _mask per array).
	*/
	@:overload @:final public function merge(other : com.sun.org.apache.xalan.internal.xsltc.dom.BitArray) : com.sun.org.apache.xalan.internal.xsltc.dom.BitArray;
	
	/**
	* Resizes the bit array - try to avoid using this method!!!
	*/
	@:overload @:final public function resize(newSize : Int) : Void;
	
	@:overload public function cloneArray() : com.sun.org.apache.xalan.internal.xsltc.dom.BitArray;
	
	@:overload public function writeExternal(out : java.io.ObjectOutput) : Void;
	
	/**
	* Read the whole tree from a file (serialized)
	*/
	@:overload public function readExternal(_in : java.io.ObjectInput) : Void;
	
	
}
