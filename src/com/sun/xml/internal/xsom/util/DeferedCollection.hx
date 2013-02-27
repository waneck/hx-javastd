package com.sun.xml.internal.xsom.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DeferedCollection<T> implements java.util.Collection<T>
{
	@:overload public function new(result : java.util.Iterator<T>) : Void;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function size() : Int;
	
	@:overload public function contains(o : Dynamic) : Bool;
	
	@:overload public function containsAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function iterator() : java.util.Iterator<T>;
	
	@:overload public function toArray() : java.NativeArray<Dynamic>;
	
	@:overload public function toArray<T>(a : java.NativeArray<T>) : java.NativeArray<T>;
	
	@:overload public function add(o : T) : Bool;
	
	@:overload public function remove(o : Dynamic) : Bool;
	
	@:overload public function addAll(c : java.util.Collection<T>) : Bool;
	
	@:overload public function removeAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function retainAll(c : java.util.Collection<Dynamic>) : Bool;
	
	@:overload public function clear() : Void;
	
	
}
