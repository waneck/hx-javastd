package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PropMap implements java.util.SortedMap<String, String>
{
	@:overload @:public public function put(key : String, value : String) : String;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function isEmpty() : Bool;
	
	@:overload @:public public function containsKey(key : Dynamic) : Bool;
	
	@:overload @:public public function containsValue(value : Dynamic) : Bool;
	
	@:overload @:public public function get(key : Dynamic) : String;
	
	@:overload @:public public function remove(key : Dynamic) : String;
	
	@:overload @:public public function putAll(m : java.util.Map<String, String>) : Void;
	
	@:overload @:public public function clear() : Void;
	
	@:overload @:public public function keySet() : java.util.Set<String>;
	
	@:overload @:public public function values() : java.util.Collection<String>;
	
	@:overload @:public public function entrySet() : java.util.Set<java.util.Map.Map_Entry<String, String>>;
	
	@:overload @:public public function comparator() : java.util.Comparator<String>;
	
	@:overload @:public public function subMap(fromKey : String, toKey : String) : java.util.SortedMap<String, String>;
	
	@:overload @:public public function headMap(toKey : String) : java.util.SortedMap<String, String>;
	
	@:overload @:public public function tailMap(fromKey : String) : java.util.SortedMap<String, String>;
	
	@:overload @:public public function firstKey() : String;
	
	@:overload @:public public function lastKey() : String;
	
	
}
