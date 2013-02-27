package javax.management.openmbean;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
//// java import
////
extern interface CompositeData
{
	/**
	* Returns the <i>composite type </i> of this <i>composite data</i> instance.
	*
	* @return the type of this CompositeData.
	*/
	@:overload public function getCompositeType() : javax.management.openmbean.CompositeType;
	
	/**
	* Returns the value of the item whose name is <tt>key</tt>.
	*
	* @param key the name of the item.
	*
	* @return the value associated with this key.
	*
	* @throws IllegalArgumentException  if <tt>key</tt> is a null or empty String.
	*
	* @throws InvalidKeyException  if <tt>key</tt> is not an existing item name for this <tt>CompositeData</tt> instance.
	*/
	@:overload public function get(key : String) : Dynamic;
	
	/**
	* Returns an array of the values of the items whose names are specified by <tt>keys</tt>, in the same order as <tt>keys</tt>.
	*
	* @param keys the names of the items.
	*
	* @return the values corresponding to the keys.
	*
	* @throws IllegalArgumentException  if an element in <tt>keys</tt> is a null or empty String.
	*
	* @throws InvalidKeyException  if an element in <tt>keys</tt> is not an existing item name for this <tt>CompositeData</tt> instance.
	*/
	@:overload public function getAll(keys : java.NativeArray<String>) : java.NativeArray<Dynamic>;
	
	/**
	* Returns <tt>true</tt> if and only if this <tt>CompositeData</tt> instance contains
	* an item whose name is <tt>key</tt>.
	* If <tt>key</tt> is a null or empty String, this method simply returns false.
	*
	* @param key the key to be tested.
	*
	* @return true if this <tt>CompositeData</tt> contains the key.
	*/
	@:overload public function containsKey(key : String) : Bool;
	
	/**
	* Returns <tt>true</tt> if and only if this <tt>CompositeData</tt> instance contains an item
	* whose value is <tt>value</tt>.
	*
	* @param value the value to be tested.
	*
	* @return true if this <tt>CompositeData</tt> contains the value.
	*/
	@:overload public function containsValue(value : Dynamic) : Bool;
	
	/**
	* Returns an unmodifiable Collection view of the item values contained in this <tt>CompositeData</tt> instance.
	* The returned collection's iterator will return the values in the ascending lexicographic order of the corresponding
	* item names.
	*
	* @return the values.
	*/
	@:overload public function values() : java.util.Collection<Dynamic>;
	
	
}
