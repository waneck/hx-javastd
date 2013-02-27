package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class FixedList<E> implements java.util.List<E>
{
	@:overload private function new(capacity : Int) : Void;
	
	@:overload public function size() : Int;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function contains(o : Dynamic) : Bool;
	
	@:overload public function iterator() : java.util.Iterator<E>;
	
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	@:overload public function add(e : E) : Bool;
	
	@:overload public function remove(o : Dynamic) : Bool;
	
	@:overload public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function addAll(c : java.util.Collection<E>) : Bool;
	
	@:overload public function addAll(index : Int, c : java.util.Collection<E>) : Bool;
	
	@:overload public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function clear() : Void;
	
	@:overload public function get(index : Int) : E;
	
	@:overload public function set(index : Int, element : E) : E;
	
	@:overload public function add(index : Int, element : E) : Void;
	
	@:overload public function remove(index : Int) : E;
	
	@:overload public function indexOf(o : Dynamic) : Int;
	
	@:overload public function lastIndexOf(o : Dynamic) : Int;
	
	@:overload public function listIterator() : java.util.ListIterator<E>;
	
	@:overload public function listIterator(index : Int) : java.util.ListIterator<E>;
	
	@:overload public function subList(fromIndex : Int, toIndex : Int) : java.util.List<E>;
	
	@:overload public function toString() : String;
	
	
}
