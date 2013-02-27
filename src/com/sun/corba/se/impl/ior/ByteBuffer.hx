package com.sun.corba.se.impl.ior;
/*
* Copyright (c) 2001, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class ByteBuffer
{
	/**
	* The array buffer into which the components of the ByteBuffer are
	* stored. The capacity of the ByteBuffer is the length of this array buffer,
	* and is at least large enough to contain all the ByteBuffer's elements.<p>
	*
	* Any array elements following the last element in the ByteBuffer are 0.
	*/
	private var elementData : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The number of valid components in this <tt>ByteBuffer</tt> object.
	* Components <tt>elementData[0]</tt> through
	* <tt>elementData[elementCount-1]</tt> are the actual items.
	*
	* @serial
	*/
	private var elementCount : Int;
	
	/**
	* The amount by which the capacity of the ByteBuffer is automatically
	* incremented when its size becomes greater than its capacity.  If
	* the capacity increment is less than or equal to zero, the capacity
	* of the ByteBuffer is doubled each time it needs to grow.
	*
	* @serial
	*/
	private var capacityIncrement : Int;
	
	/**
	* Constructs an empty ByteBuffer with the specified initial capacity and
	* capacity increment.
	*
	* @param   initialCapacity     the initial capacity of the ByteBuffer.
	* @param   capacityIncrement   the amount by which the capacity is
	*                              increased when the ByteBuffer overflows.
	* @exception IllegalArgumentException if the specified initial capacity
	*               is negative
	*/
	@:overload public function new(initialCapacity : Int, capacityIncrement : Int) : Void;
	
	/**
	* Constructs an empty ByteBuffer with the specified initial capacity and
	* with its capacity increment equal to zero.
	*
	* @param   initialCapacity   the initial capacity of the ByteBuffer.
	* @exception IllegalArgumentException if the specified initial capacity
	*               is negative
	*/
	@:overload public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs an empty ByteBuffer so that its internal data array
	* has size <tt>10</tt> and its standard capacity increment is
	* zero.
	*/
	@:overload public function new() : Void;
	
	/**
	* Trims the capacity of this ByteBuffer to be the ByteBuffer's current
	* size. If the capacity of this cector is larger than its current
	* size, then the capacity is changed to equal the size by replacing
	* its internal data array, kept in the field <tt>elementData</tt>,
	* with a smaller one. An application can use this operation to
	* minimize the storage of a ByteBuffer.
	*/
	@:overload public function trimToSize() : Void;
	
	/**
	* Returns the current capacity of this ByteBuffer.
	*
	* @return  the current capacity (the length of its internal
	*          data arary, kept in the field <tt>elementData</tt>
	*          of this ByteBuffer.
	*/
	@:overload public function capacity() : Int;
	
	/**
	* Returns the number of components in this ByteBuffer.
	*
	* @return  the number of components in this ByteBuffer.
	*/
	@:overload public function size() : Int;
	
	/**
	* Tests if this ByteBuffer has no components.
	*
	* @return  <code>true</code> if and only if this ByteBuffer has
	*          no components, that is, its size is zero;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isEmpty() : Bool;
	
	@:overload public function append(value : java.StdTypes.Int8) : Void;
	
	@:overload public function append(value : Int) : Void;
	
	@:overload public function append(value : String) : Void;
	
	/**
	* Returns an array containing all of the elements in this ByteBuffer
	* in the correct order.
	*
	* @since 1.2
	*/
	@:require(java2) @:overload public function toArray() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
