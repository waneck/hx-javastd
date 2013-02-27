package sun.util;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class PreHashedMap<V> extends java.util.AbstractMap<String, V>
{
	/**
	* Creates a new map.
	*
	* <p> This constructor invokes the {@link #init init} method, passing it a
	* newly-constructed row array that is <tt>rows</tt> elements long.
	*
	* @param rows
	*        The number of rows in the map
	* @param size
	*        The number of entries in the map
	* @param shift
	*        The value by which hash codes are right-shifted
	* @param mask
	*        The value with which hash codes are masked after being shifted
	*/
	@:overload private function new(rows : Int, size : Int, shift : Int, mask : Int) : Void;
	
	/**
	* Initializes this map.
	*
	* <p> This method must construct the map's hash chains and store them into
	* the appropriate elements of the given hash-table row array.
	*
	* @param rows
	*        The row array to be initialized
	*/
	@:overload @:abstract private function init(ht : java.NativeArray<Dynamic>) : Void;
	
	@:overload override public function get(k : Dynamic) : V;
	
	/**
	* @throws UnsupportedOperationException
	*         If the given key is not part of this map's initial key set
	*/
	@:overload public function put(k : String, v : V) : V;
	
	@:overload override public function keySet() : java.util.Set<String>;
	
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<String, V>>;
	
	
}
