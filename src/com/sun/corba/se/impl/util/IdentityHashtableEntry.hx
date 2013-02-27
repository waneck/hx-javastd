package com.sun.corba.se.impl.util;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
@:internal extern class IdentityHashtableEntry
{
	
}
extern class IdentityHashtable extends java.util.Dictionary<Dynamic, Dynamic>
{
	/**
	* Constructs a new, empty hashtable with the specified initial
	* capacity and the specified load factor.
	*
	* @param      initialCapacity   the initial capacity of the hashtable.
	* @param      loadFactor        a number between 0.0 and 1.0.
	* @exception  IllegalArgumentException  if the initial capacity is less
	*               than or equal to zero, or if the load factor is less than
	*               or equal to zero.
	* @since      JDK1.0
	*/
	@:require(java0) @:overload public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	/**
	* Constructs a new, empty hashtable with the specified initial capacity
	* and default load factor.
	*
	* @param   initialCapacity   the initial capacity of the hashtable.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs a new, empty hashtable with a default capacity and load
	* factor.
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function new() : Void;
	
	/**
	* Returns the number of keys in this hashtable.
	*
	* @return  the number of keys in this hashtable.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload override public function size() : Int;
	
	/**
	* Tests if this hashtable maps no keys to values.
	*
	* @return  <code>true</code> if this hashtable maps no keys to values;
	*          <code>false</code> otherwise.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload override public function isEmpty() : Bool;
	
	/**
	* Returns an enumeration of the keys in this hashtable.
	*
	* @return  an enumeration of the keys in this hashtable.
	* @see     java.util.Enumeration
	* @see     java.util.Hashtable#elements()
	* @since   JDK1.0
	*/
	@:require(java0) @:overload override public function keys() : java.util.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of the values in this hashtable.
	* Use the Enumeration methods on the returned object to fetch the elements
	* sequentially.
	*
	* @return  an enumeration of the values in this hashtable.
	* @see     java.util.Enumeration
	* @see     java.util.Hashtable#keys()
	* @since   JDK1.0
	*/
	@:require(java0) @:overload override public function elements() : java.util.Enumeration<Dynamic>;
	
	/**
	* Tests if some key maps into the specified value in this hashtable.
	* This operation is more expensive than the <code>containsKey</code>
	* method.
	*
	* @param      value   a value to search for.
	* @return     <code>true</code> if some key maps to the
	*             <code>value</code> argument in this hashtable;
	*             <code>false</code> otherwise.
	* @exception  NullPointerException  if the value is <code>null</code>.
	* @see        java.util.Hashtable#containsKey(java.lang.Object)
	* @since      JDK1.0
	*/
	@:require(java0) @:overload public function contains(value : Dynamic) : Bool;
	
	/**
	* Tests if the specified object is a key in this hashtable.
	*
	* @param   key   possible key.
	* @return  <code>true</code> if the specified object is a key in this
	*          hashtable; <code>false</code> otherwise.
	* @see     java.util.Hashtable#contains(java.lang.Object)
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function containsKey(key : Dynamic) : Bool;
	
	/**
	* Returns the value to which the specified key is mapped in this hashtable.
	*
	* @param   key   a key in the hashtable.
	* @return  the value to which the key is mapped in this hashtable;
	*          <code>null</code> if the key is not mapped to any value in
	*          this hashtable.
	* @see     java.util.Hashtable#put(java.lang.Object, java.lang.Object)
	* @since   JDK1.0
	*/
	@:require(java0) @:overload override public function get(key : Dynamic) : Dynamic;
	
	/**
	* Rehashes the contents of the hashtable into a hashtable with a
	* larger capacity. This method is called automatically when the
	* number of keys in the hashtable exceeds this hashtable's capacity
	* and load factor.
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload private function rehash() : Void;
	
	/**
	* Maps the specified <code>key</code> to the specified
	* <code>value</code> in this hashtable. Neither the key nor the
	* value can be <code>null</code>.
	* <p>
	* The value can be retrieved by calling the <code>get</code> method
	* with a key that is equal to the original key.
	*
	* @param      key     the hashtable key.
	* @param      value   the value.
	* @return     the previous value of the specified key in this hashtable,
	*             or <code>null</code> if it did not have one.
	* @exception  NullPointerException  if the key or value is
	*               <code>null</code>.
	* @see     java.util.Hashtable#get(java.lang.Object)
	* @since   JDK1.0
	*/
	@:require(java0) @:overload override public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	/**
	* Removes the key (and its corresponding value) from this
	* hashtable. This method does nothing if the key is not in the hashtable.
	*
	* @param   key   the key that needs to be removed.
	* @return  the value to which the key had been mapped in this hashtable,
	*          or <code>null</code> if the key did not have a mapping.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload override public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Clears this hashtable so that it contains no keys.
	*
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function clear() : Void;
	
	/**
	* Returns a rather long string representation of this hashtable.
	*
	* @return  a string representation of this hashtable.
	* @since   JDK1.0
	*/
	@:require(java0) @:overload public function toString() : String;
	
	
}
