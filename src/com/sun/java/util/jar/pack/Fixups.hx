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
@:internal extern class Fixups extends java.util.AbstractCollection<com.sun.java.util.jar.pack.Fixups.Fixups_Fixup>
{
	@:overload @:public override public function size() : Int;
	
	@:overload @:public public function trimToSize() : Void;
	
	@:overload @:public public function visitRefs(refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function setBytes(newBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:public @:static @:final public static var U2_FORMAT(default, null) : Int;
	
	@:public @:static @:final public static var U1_FORMAT(default, null) : Int;
	
	@:overload @:public override public function iterator() : java.util.Iterator<com.sun.java.util.jar.pack.Fixups.Fixups_Fixup>;
	
	@:overload @:public public function add(location : Int, format : Int, entry : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Void;
	
	@:overload @:public public function add(f : com.sun.java.util.jar.pack.Fixups.Fixups_Fixup) : Bool;
	
	@:overload @:public override public function addAll(c : java.util.Collection<com.sun.java.util.jar.pack.Fixups.Fixups_Fixup>) : Bool;
	
	@:native('add') @:overload @:public @:static public static function _add(prevFixups : Dynamic, bytes : java.NativeArray<java.StdTypes.Int8>, loc : Int, fmt : Int, e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Dynamic;
	
	@:native('setBytes') @:overload @:public @:static public static function _setBytes(fixups : Dynamic, bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:native('trimToSize') @:overload @:public @:static public static function _trimToSize(fixups : Dynamic) : Dynamic;
	
	@:native('visitRefs') @:overload @:public @:static public static function _visitRefs(fixups : Dynamic, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:native('finishRefs') @:overload @:public @:static public static function _finishRefs(fixups : Dynamic, bytes : java.NativeArray<java.StdTypes.Int8>, ix : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	
}
/** Simple and necessary tuple to present each fixup. */
@:native('com$sun$java$util$jar$pack$Fixups$Fixup') extern class Fixups_Fixup implements java.lang.Comparable<com.sun.java.util.jar.pack.Fixups.Fixups_Fixup>
{
	@:overload @:public public function new(loc : Int, fmt : Int, entry : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Void;
	
	@:overload @:public public function location() : Int;
	
	@:overload @:public public function format() : Int;
	
	@:overload @:public public function entry() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload @:public public function compareTo(that : com.sun.java.util.jar.pack.Fixups.Fixups_Fixup) : Int;
	
	@:overload @:public public function equals(x : Dynamic) : Bool;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$Fixups$Itr') @:internal extern class Fixups_Itr implements java.util.Iterator<com.sun.java.util.jar.pack.Fixups.Fixups_Fixup>
{
	@:overload @:public public function hasNext() : Bool;
	
	@:overload @:public public function remove() : Void;
	
	@:overload @:public public function next() : com.sun.java.util.jar.pack.Fixups.Fixups_Fixup;
	
	
}
