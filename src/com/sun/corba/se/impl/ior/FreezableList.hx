package com.sun.corba.se.impl.ior;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class FreezableList extends java.util.AbstractList<Dynamic>
{
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function new(delegate : java.util.List<Dynamic>, immutable : Bool) : Void;
	
	@:overload public function new(delegate : java.util.List<Dynamic>) : Void;
	
	@:overload public function makeImmutable() : Void;
	
	@:overload public function isImmutable() : Bool;
	
	@:overload public function makeElementsImmutable() : Void;
	
	@:overload override public function size() : Int;
	
	@:overload public function get(index : Int) : Dynamic;
	
	@:overload public function set(index : Int, element : Dynamic) : Dynamic;
	
	@:overload public function add(index : Int, element : Dynamic) : Void;
	
	@:overload public function remove(index : Int) : Dynamic;
	
	@:overload public function subList(fromIndex : Int, toIndex : Int) : java.util.List<Dynamic>;
	
	
}
