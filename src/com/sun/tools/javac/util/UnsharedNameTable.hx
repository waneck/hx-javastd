package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class UnsharedNameTable extends com.sun.tools.javac.util.Name.Name_Table
{
	/**
	* Implementation of Name.Table that stores names in individual arrays
	* using weak references. It is recommended for use when a single shared
	* byte array is unsuitable.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	@:overload @:static @:public public static function create(names : com.sun.tools.javac.util.Names) : com.sun.tools.javac.util.Name.Name_Table;
	
	/** Index counter for names in this table.
	*/
	@:public public var index : Int;
	
	/** Allocator
	*  @param names The main name table
	*  @param hashSize the (constant) size to be used for the hash table
	*                  needs to be a power of two.
	*/
	@:overload @:public public function new(names : com.sun.tools.javac.util.Names, hashSize : Int) : Void;
	
	@:overload @:public public function new(names : com.sun.tools.javac.util.Names) : Void;
	
	@:overload @:public override public function fromChars(cs : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function fromUtf(cs : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : com.sun.tools.javac.util.Name;
	
	@:overload @:public override public function dispose() : Void;
	
	
}
@:native('com$sun$tools$javac$util$UnsharedNameTable$HashEntry') @:internal extern class UnsharedNameTable_HashEntry extends java.lang.ref.WeakReference<com.sun.tools.javac.util.UnsharedNameTable.UnsharedNameTable_NameImpl>
{
	
}
@:native('com$sun$tools$javac$util$UnsharedNameTable$NameImpl') @:internal extern class UnsharedNameTable_NameImpl extends javax.lang.model.element.Name
{
	@:overload @:public public function getIndex() : Int;
	
	@:overload @:public public function getByteLength() : Int;
	
	@:overload @:public public function getByteAt(i : Int) : java.StdTypes.Int8;
	
	@:overload @:public public function getByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getByteOffset() : Int;
	
	
}
