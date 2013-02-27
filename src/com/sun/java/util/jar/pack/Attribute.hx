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
/**
* Represents an attribute in a class-file.
* Takes care to remember where constant pool indexes occur.
* Implements the "little language" of Pack200 for describing
* attribute layouts.
* @author John Rose
*/
@:internal extern class Attribute implements java.lang.Comparable<Attribute>
{
	@:overload public function name() : String;
	
	@:overload public function layout() : Attribute_Layout;
	
	@:overload public function bytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function size() : Int;
	
	@:overload public function getNameRef() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload public function new(def : Attribute_Layout, bytes : java.NativeArray<java.StdTypes.Int8>, fixups : Dynamic) : Void;
	
	@:overload public function new(def : Attribute_Layout, bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function addContent(bytes : java.NativeArray<java.StdTypes.Int8>, fixups : Dynamic) : Attribute;
	
	@:overload public function addContent(bytes : java.NativeArray<java.StdTypes.Int8>) : Attribute;
	
	@:overload public function finishRefs(ix : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	@:overload public function isCanonical() : Bool;
	
	@:overload public function compareTo(that : Attribute) : Int;
	
	@:overload public static function getCanonList(al : java.util.List<Attribute>) : java.util.List<Attribute>;
	
	@:overload public static function find(ctype : Int, name : String, layout : String) : Attribute;
	
	@:overload public static function keyForLookup(ctype : Int, name : String) : Attribute_Layout;
	
	@:overload public static function lookup(defs : java.util.Map<Attribute_Layout, Attribute>, ctype : Int, name : String) : Attribute;
	
	@:overload public static function define(defs : java.util.Map<Attribute_Layout, Attribute>, ctype : Int, name : String, layout : String) : Attribute;
	
	@:overload public static function contextName(ctype : Int) : String;
	
	@:overload public function parse(holder : Attribute_Holder, bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, len : Int, out : Attribute_ValueStream) : Void;
	
	@:overload public function unparse(_in : Attribute_ValueStream, out : java.io.ByteArrayOutputStream) : Dynamic;
	
	@:overload public function toString() : String;
	
	/** Remove any informal "pretty printing" from the layout string.
	*  Removes blanks and control chars.
	*  Removes '#' comments (to end of line).
	*  Replaces '\c' by the decimal code of the character c.
	*  Replaces '0xNNN' by the decimal code of the hex number NNN.
	*/
	@:overload public static function normalizeLayoutString(layout : String) : String;
	
	
}
/** Base class for any attributed object (Class, Field, Method, Code).
*  Flags are included because they are used to help transmit the
*  presence of attributes.  That is, flags are a mix of modifier
*  bits and attribute indicators.
*/
@:native('com$sun$java$util$jar$pack$Attribute$Holder') extern class Attribute_Holder
{
	@:overload @:abstract private function getCPMap() : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	private var flags : Int;
	
	private var attributes : java.util.List<Attribute>;
	
	@:overload public function attributeSize() : Int;
	
	@:overload public function trimToSize() : Void;
	
	@:overload public function addAttribute(a : Attribute) : Void;
	
	@:overload public function removeAttribute(a : Attribute) : Attribute;
	
	@:overload public function getAttribute(n : Int) : Attribute;
	
	@:overload private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload public function getAttributes() : java.util.List<Attribute>;
	
	@:overload public function setAttributes(attrList : java.util.List<Attribute>) : Void;
	
	@:overload public function getAttribute(attrName : String) : Attribute;
	
	@:overload public function getAttribute(attrDef : Attribute_Layout) : Attribute;
	
	@:overload public function removeAttribute(attrName : String) : Attribute;
	
	@:overload public function removeAttribute(attrDef : Attribute_Layout) : Attribute;
	
	@:overload public function strip(attrName : String) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$Attribute$ValueStream') extern class Attribute_ValueStream
{
	@:overload public function getInt(bandIndex : Int) : Int;
	
	@:overload public function putInt(bandIndex : Int, value : Int) : Void;
	
	@:overload public function getRef(bandIndex : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload public function putRef(bandIndex : Int, ref : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Void;
	
	@:overload public function decodeBCI(bciCode : Int) : Int;
	
	@:overload public function encodeBCI(bci : Int) : Int;
	
	@:overload public function noteBackCall(whichCallable : Int) : Void;
	
	
}
/** A "class" of attributes, characterized by a context-type, name
*  and format.  The formats are specified in a "little language".
*/
@:native('com$sun$java$util$jar$pack$Attribute$Layout') extern class Attribute_Layout implements java.lang.Comparable<Attribute_Layout>
{
	@:overload public function ctype() : Int;
	
	@:overload public function name() : String;
	
	@:overload public function layout() : String;
	
	@:overload public function canonicalInstance() : Attribute;
	
	@:overload public function getNameRef() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function new(ctype : Int, name : String, layout : String) : Void;
	
	@:overload public function addContent(bytes : java.NativeArray<java.StdTypes.Int8>, fixups : Dynamic) : Attribute;
	
	@:overload public function addContent(bytes : java.NativeArray<java.StdTypes.Int8>) : Attribute;
	
	@:overload public function equals(x : Dynamic) : Bool;
	
	@:overload public function equals(that : Attribute_Layout) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function compareTo(that : Attribute_Layout) : Int;
	
	@:overload public function toString() : String;
	
	@:overload public function hasCallables() : Bool;
	
	@:overload public function getCallables() : java.NativeArray<Attribute_Layout_Element>;
	
	@:overload public function getEntryPoint() : java.NativeArray<Attribute_Layout_Element>;
	
	/** Return a sequence of tokens from the given attribute bytes.
	*  Sequence elements will be 1-1 correspondent with my layout tokens.
	*/
	@:overload public function parse(holder : Attribute_Holder, bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, len : Int, out : Attribute_ValueStream) : Void;
	
	/** Given a sequence of tokens, return the attribute bytes.
	*  Sequence elements must be 1-1 correspondent with my layout tokens.
	*  The returned object is a cookie for Fixups.finishRefs, which
	*  must be used to harden any references into integer indexes.
	*/
	@:overload public function unparse(_in : Attribute_ValueStream, out : java.io.ByteArrayOutputStream) : Dynamic;
	
	@:overload public function layoutForPackageMajver(majver : Int) : String;
	
	
}
@:native('com$sun$java$util$jar$pack$Attribute$Layout$Element') extern class Attribute_Layout_Element
{
	@:overload public function hasBand() : Bool;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$Attribute$FormatException') extern class Attribute_FormatException extends java.io.IOException
{
	@:overload public function new(message : String, ctype : Int, name : String, layout : String) : Void;
	
	@:overload public function new(message : String, ctype : Int, name : String) : Void;
	
	
}
