package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SimpleHashtable implements java.util.Enumeration<Dynamic>
{
	/**
	* Constructs a new, empty hashtable with the specified initial
	* capacity.
	*
	* @param initialCapacity the initial capacity of the hashtable.
	*/
	@:overload public function new(initialCapacity : Int) : Void;
	
	/**
	* Constructs a new, empty hashtable with a default capacity.
	*/
	@:overload public function new() : Void;
	
	/**
	*/
	@:overload public function clear() : Void;
	
	/**
	* Returns the number of keys in this hashtable.
	*
	* @return the number of keys in this hashtable.
	*/
	@:overload public function size() : Int;
	
	/**
	* Returns an enumeration of the keys in this hashtable.
	*
	* @return an enumeration of the keys in this hashtable.
	* @see Enumeration
	*/
	@:overload public function keys() : java.util.Enumeration<Dynamic>;
	
	/**
	* Used to view this as an enumeration; returns true if there
	* are more keys to be enumerated.
	*/
	@:overload public function hasMoreElements() : Bool;
	
	/**
	* Used to view this as an enumeration; returns the next key
	* in the enumeration.
	*/
	@:overload public function nextElement() : Dynamic;
	
	/**
	* Returns the value to which the specified key is mapped in this hashtable.
	*/
	@:overload public function get(key : String) : Dynamic;
	
	/**
	* Returns the value to which the specified key is mapped in this
	* hashtable ... the key isn't necessarily interned, though.
	*/
	@:overload public function getNonInterned(key : String) : Dynamic;
	
	/**
	* Maps the specified <code>key</code> to the specified
	* <code>value</code> in this hashtable. Neither the key nor the
	* value can be <code>null</code>.
	* <p/>
	* <P>The value can be retrieved by calling the <code>get</code> method
	* with a key that is equal to the original key.
	*/
	@:overload public function put(key : Dynamic, value : Dynamic) : Dynamic;
	
	
}
/**
* Hashtable collision list.
*/
@:native('com$sun$xml$internal$dtdparser$SimpleHashtable$Entry') @:internal extern class SimpleHashtable_Entry
{
	@:overload private function new(hash : Int, key : Dynamic, value : Dynamic, next : SimpleHashtable_Entry) : Void;
	
	
}
