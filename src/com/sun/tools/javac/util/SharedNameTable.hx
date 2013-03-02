package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SharedNameTable extends com.sun.tools.javac.util.Name.Name_Table
{
	@:overload @:synchronized public static function create(names : com.sun.tools.javac.util.Names) : com.sun.tools.javac.util.SharedNameTable;
	
	/** The shared byte array holding all encountered names.
	*/
	public var bytes : java.NativeArray<java.StdTypes.Int8>;
	
	/** Allocator
	*  @param names The main name table
	*  @param hashSize the (constant) size to be used for the hash table
	*                  needs to be a power of two.
	*  @param nameSize the initial size of the name table.
	*/
	@:overload public function new(names : com.sun.tools.javac.util.Names, hashSize : Int, nameSize : Int) : Void;
	
	@:overload public function new(names : com.sun.tools.javac.util.Names) : Void;
	
	@:overload public function fromChars(cs : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : com.sun.tools.javac.util.Name;
	
	@:overload public function fromUtf(cs : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : com.sun.tools.javac.util.Name;
	
	@:overload public function dispose() : Void;
	
	
}
@:native('com$sun$tools$javac$util$SharedNameTable$NameImpl') @:internal extern class SharedNameTable_NameImpl extends javax.lang.model.element.Name
{
	@:overload public function getIndex() : Int;
	
	@:overload public function getByteLength() : Int;
	
	@:overload public function getByteAt(i : Int) : java.StdTypes.Int8;
	
	@:overload public function getByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getByteOffset() : Int;
	
	/** Return the hash value of this name.
	*/
	@:overload public function hashCode() : Int;
	
	/** Is this name equal to other?
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	
}
