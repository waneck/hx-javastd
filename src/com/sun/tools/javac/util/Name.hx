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
/** An abstraction for internal compiler strings. They are stored in
*  Utf8 format. Names are stored in a Name.Table, and are unique within
*  that table.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Name implements javax.lang.model.element.Name
{
	@:public @:final public var table(default, null) : com.sun.tools.javac.util.Name.Name_Table;
	
	@:overload @:protected private function new(table : com.sun.tools.javac.util.Name.Name_Table) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function contentEquals(cs : java.lang.CharSequence) : Bool;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function length() : Int;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	/** Return the concatenation of this name and name `n'.
	*/
	@:overload @:public public function append(n : javax.lang.model.element.Name) : javax.lang.model.element.Name;
	
	/** Return the concatenation of this name, the given ASCII
	*  character, and name `n'.
	*/
	@:overload @:public public function append(c : java.StdTypes.Char16, n : javax.lang.model.element.Name) : javax.lang.model.element.Name;
	
	/** An arbitrary but consistent complete order among all Names.
	*/
	@:overload @:public public function compareTo(other : javax.lang.model.element.Name) : Int;
	
	/** Return true if this is the empty name.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/** Returns last occurrence of byte b in this name, -1 if not found.
	*/
	@:overload @:public public function lastIndexOf(b : java.StdTypes.Int8) : Int;
	
	/** Does this name start with prefix?
	*/
	@:overload @:public public function startsWith(prefix : javax.lang.model.element.Name) : Bool;
	
	/** Returns the sub-name starting at position start, up to and
	*  excluding position end.
	*/
	@:overload @:public public function subName(start : Int, end : Int) : javax.lang.model.element.Name;
	
	/** Return the string representation of this name.
	*/
	@:overload @:public public function toString() : String;
	
	/** Return the Utf8 representation of this name.
	*/
	@:overload @:public public function toUtf() : java.NativeArray<java.StdTypes.Int8>;
	
	/* Get a "reasonably small" value that uniquely identifies this name
	* within its name table.
	*/
	@:overload @:public @:abstract public function getIndex() : Int;
	
	/** Get the length (in bytes) of this name.
	*/
	@:overload @:public @:abstract public function getByteLength() : Int;
	
	/** Returns i'th byte of this name.
	*/
	@:overload @:public @:abstract public function getByteAt(i : Int) : java.StdTypes.Int8;
	
	/** Copy all bytes of this name to buffer cs, starting at start.
	*/
	@:overload @:public public function getBytes(cs : java.NativeArray<java.StdTypes.Int8>, start : Int) : Void;
	
	/** Get the underlying byte array for this name. The contents of the
	* array must not be modified.
	*/
	@:overload @:public @:abstract public function getByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/** Get the start offset of this name within its byte array.
	*/
	@:overload @:public @:abstract public function getByteOffset() : Int;
	
	
}
/** An abstraction for the hash table used to create unique Name instances.
*/
@:native('com$sun$tools$javac$util$Name$Table') extern class Name_Table
{
	/** Standard name table.
	*/
	@:public @:final public var names(default, null) : com.sun.tools.javac.util.Names;
	
	/** Get the name from the characters in cs[start..start+len-1].
	*/
	@:overload @:public @:abstract public function fromChars(cs : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : javax.lang.model.element.Name;
	
	/** Get the name for the characters in string s.
	*/
	@:overload @:public public function fromString(s : String) : javax.lang.model.element.Name;
	
	/** Get the name for the bytes in array cs.
	*  Assume that bytes are in utf8 format.
	*/
	@:overload @:public public function fromUtf(cs : java.NativeArray<java.StdTypes.Int8>) : javax.lang.model.element.Name;
	
	/** get the name for the bytes in cs[start..start+len-1].
	*  Assume that bytes are in utf8 format.
	*/
	@:overload @:public @:abstract public function fromUtf(cs : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : javax.lang.model.element.Name;
	
	/** Release any resources used by this table.
	*/
	@:overload @:public @:abstract public function dispose() : Void;
	
	/** The hashcode of a name.
	*/
	@:overload @:protected @:static private static function hashValue(bytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Int;
	
	/** Compare two subarrays
	*/
	@:overload @:protected @:static private static function equals(bytes1 : java.NativeArray<java.StdTypes.Int8>, offset1 : Int, bytes2 : java.NativeArray<java.StdTypes.Int8>, offset2 : Int, length : Int) : Bool;
	
	
}
