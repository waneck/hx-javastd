package javax.swing;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ArrayTable implements java.lang.Cloneable
{
	/*
	* Put the key-value pair into storage
	*/
	@:overload @:public public function put(key : Dynamic, value : Dynamic) : Void;
	
	/*
	* Gets the value for key
	*/
	@:overload @:public public function get(key : Dynamic) : Dynamic;
	
	/*
	* Returns the number of pairs in storage
	*/
	@:overload @:public public function size() : Int;
	
	/*
	* Returns true if we have a value for the key
	*/
	@:overload @:public public function containsKey(key : Dynamic) : Bool;
	
	/*
	* Removes the key and its value
	* Returns the value for the pair removed
	*/
	@:overload @:public public function remove(key : Dynamic) : Dynamic;
	
	/**
	* Removes all the mappings.
	*/
	@:overload @:public public function clear() : Void;
	
	/*
	* Returns a clone of the <code>ArrayTable</code>.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns the keys of the table, or <code>null</code> if there
	* are currently no bindings.
	* @param keys  array of keys
	* @return an array of bindings
	*/
	@:overload @:public public function getKeys(keys : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	
}
