package sun.net.httpserver;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UnmodifiableHeaders extends com.sun.net.httpserver.Headers
{
	@:overload override public function size() : Int;
	
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function containsKey(key : Dynamic) : Bool;
	
	@:overload override public function containsValue(value : Dynamic) : Bool;
	
	@:overload override public function get(key : Dynamic) : java.util.List<String>;
	
	@:overload override public function getFirst(key : String) : String;
	
	@:overload override public function put(key : String, value : java.util.List<String>) : java.util.List<String>;
	
	@:overload override public function add(key : String, value : String) : Void;
	
	@:overload override public function set(key : String, value : String) : Void;
	
	@:overload override public function remove(key : Dynamic) : java.util.List<String>;
	
	@:overload override public function putAll(t : java.util.Map<String, java.util.List<String>>) : Void;
	
	@:overload override public function clear() : Void;
	
	@:overload override public function keySet() : java.util.Set<String>;
	
	@:overload override public function values() : java.util.Collection<java.util.List<String>>;
	
	/* TODO check that contents of set are not modifable : security */
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<String, java.util.List<String>>>;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	
}
