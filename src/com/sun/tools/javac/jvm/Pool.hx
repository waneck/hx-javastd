package com.sun.tools.javac.jvm;
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
/** An internal structure that corresponds to the constant pool of a classfile.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Pool
{
	@:public @:static @:final public static var MAX_ENTRIES(default, null) : Int;
	
	@:public @:static @:final public static var MAX_STRING_LENGTH(default, null) : Int;
	
	/** Construct a pool with given number of elements and element array.
	*/
	@:overload @:public public function new(pp : Int, pool : java.NativeArray<Dynamic>) : Void;
	
	/** Construct an empty pool.
	*/
	@:overload @:public public function new() : Void;
	
	/** Return the number of entries in the constant pool.
	*/
	@:overload @:public public function numEntries() : Int;
	
	/** Remove everything from this pool.
	*/
	@:overload @:public public function reset() : Void;
	
	/** Place an object in the pool, unless it is already there.
	*  If object is a symbol also enter its owner unless the owner is a
	*  package.  Return the object's index in the pool.
	*/
	@:overload @:public public function put(value : Dynamic) : Int;
	
	/** Return the given object's index in the pool,
	*  or -1 if object is not in there.
	*/
	@:overload @:public public function get(o : Dynamic) : Int;
	
	
}
@:native('com$sun$tools$javac$jvm$Pool$Method') @:internal extern class Pool_Method extends DelegatedSymbol
{
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
@:native('com$sun$tools$javac$jvm$Pool$Variable') @:internal extern class Pool_Variable extends DelegatedSymbol
{
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
