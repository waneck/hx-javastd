package javax.swing;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MultiUIDefaults extends javax.swing.UIDefaults
{
	@:overload public function new(defaults : java.NativeArray<javax.swing.UIDefaults>) : Void;
	
	@:overload public function new() : Void;
	
	@:overload override public function get(key : Dynamic) : Dynamic;
	
	@:overload override public function get(key : Dynamic, l : java.util.Locale) : Dynamic;
	
	@:overload override public function size() : Int;
	
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function keys() : java.util.Enumeration<Dynamic>;
	
	@:overload override public function elements() : java.util.Enumeration<Dynamic>;
	
	@:overload override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<Dynamic, Dynamic>>;
	
	@:overload override private function getUIError(msg : String) : Void;
	
	@:overload override public function remove(key : Dynamic) : Dynamic;
	
	@:overload override public function clear() : Void;
	
	@:overload @:synchronized override public function toString() : String;
	
	
}
@:native('javax$swing$MultiUIDefaults$MultiUIDefaultsEnumerator') @:internal extern class MultiUIDefaults_MultiUIDefaultsEnumerator implements java.util.Enumeration<Dynamic>
{
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	
}
@:native('javax$swing$MultiUIDefaults$MultiUIDefaultsEnumerator$Type') extern enum MultiUIDefaults_MultiUIDefaultsEnumerator_Type
{
	KEYS;
	ELEMENTS;
	
}

