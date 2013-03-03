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
@:internal extern class Attribute implements java.lang.Comparable<com.sun.java.util.jar.pack.Attribute>
{
	@:overload @:public public function name() : String;
	
	@:overload @:public public function layout() : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	@:overload @:public public function bytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function getNameRef() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload @:public public function new(def : com.sun.java.util.jar.pack.Attribute.Attribute_Layout, bytes : java.NativeArray<java.StdTypes.Int8>, fixups : Dynamic) : Void;
	
	@:overload @:public public function new(def : com.sun.java.util.jar.pack.Attribute.Attribute_Layout, bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function addContent(bytes : java.NativeArray<java.StdTypes.Int8>, fixups : Dynamic) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function addContent(bytes : java.NativeArray<java.StdTypes.Int8>) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function finishRefs(ix : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	@:overload @:public public function isCanonical() : Bool;
	
	@:overload @:public public function compareTo(that : com.sun.java.util.jar.pack.Attribute) : Int;
	
	@:overload @:public @:static public static function getCanonList(al : java.util.List<com.sun.java.util.jar.pack.Attribute>) : java.util.List<com.sun.java.util.jar.pack.Attribute>;
	
	@:overload @:public @:static public static function find(ctype : Int, name : String, layout : String) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public @:static public static function keyForLookup(ctype : Int, name : String) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	@:overload @:public @:static public static function lookup(defs : java.util.Map<com.sun.java.util.jar.pack.Attribute.Attribute_Layout, com.sun.java.util.jar.pack.Attribute>, ctype : Int, name : String) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public @:static public static function define(defs : java.util.Map<com.sun.java.util.jar.pack.Attribute.Attribute_Layout, com.sun.java.util.jar.pack.Attribute>, ctype : Int, name : String, layout : String) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public @:static public static function contextName(ctype : Int) : String;
	
	@:overload @:public public function parse(holder : com.sun.java.util.jar.pack.Attribute.Attribute_Holder, bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, len : Int, out : com.sun.java.util.jar.pack.Attribute.Attribute_ValueStream) : Void;
	
	@:overload @:public public function unparse(_in : com.sun.java.util.jar.pack.Attribute.Attribute_ValueStream, out : java.io.ByteArrayOutputStream) : Dynamic;
	
	@:overload @:public public function toString() : String;
	
	/** Remove any informal "pretty printing" from the layout string.
	*  Removes blanks and control chars.
	*  Removes '#' comments (to end of line).
	*  Replaces '\c' by the decimal code of the character c.
	*  Replaces '0xNNN' by the decimal code of the hex number NNN.
	*/
	@:overload @:static @:public public static function normalizeLayoutString(layout : String) : String;
	
	
}
/** Base class for any attributed object (Class, Field, Method, Code).
*  Flags are included because they are used to help transmit the
*  presence of attributes.  That is, flags are a mix of modifier
*  bits and attribute indicators.
*/
@:native('com$sun$java$util$jar$pack$Attribute$Holder') extern class Attribute_Holder
{
	@:overload @:protected @:abstract private function getCPMap() : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	@:protected private var flags : Int;
	
	@:protected private var attributes : java.util.List<com.sun.java.util.jar.pack.Attribute>;
	
	@:overload @:public public function attributeSize() : Int;
	
	@:overload @:public public function trimToSize() : Void;
	
	@:overload @:public public function addAttribute(a : com.sun.java.util.jar.pack.Attribute) : Void;
	
	@:overload @:public public function removeAttribute(a : com.sun.java.util.jar.pack.Attribute) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function getAttribute(n : Int) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:protected private function visitRefs(mode : Int, refs : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload @:public public function getAttributes() : java.util.List<com.sun.java.util.jar.pack.Attribute>;
	
	@:overload @:public public function setAttributes(attrList : java.util.List<com.sun.java.util.jar.pack.Attribute>) : Void;
	
	@:overload @:public public function getAttribute(attrName : String) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function getAttribute(attrDef : com.sun.java.util.jar.pack.Attribute.Attribute_Layout) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function removeAttribute(attrName : String) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function removeAttribute(attrDef : com.sun.java.util.jar.pack.Attribute.Attribute_Layout) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function strip(attrName : String) : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$Attribute$ValueStream') extern class Attribute_ValueStream
{
	@:overload @:public public function getInt(bandIndex : Int) : Int;
	
	@:overload @:public public function putInt(bandIndex : Int, value : Int) : Void;
	
	@:overload @:public public function getRef(bandIndex : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload @:public public function putRef(bandIndex : Int, ref : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Void;
	
	@:overload @:public public function decodeBCI(bciCode : Int) : Int;
	
	@:overload @:public public function encodeBCI(bci : Int) : Int;
	
	@:overload @:public public function noteBackCall(whichCallable : Int) : Void;
	
	
}
/** A "class" of attributes, characterized by a context-type, name
*  and format.  The formats are specified in a "little language".
*/
@:native('com$sun$java$util$jar$pack$Attribute$Layout') extern class Attribute_Layout implements java.lang.Comparable<com.sun.java.util.jar.pack.Attribute.Attribute_Layout>
{
	@:overload @:public public function ctype() : Int;
	
	@:overload @:public public function name() : String;
	
	@:overload @:public public function layout() : String;
	
	@:overload @:public public function canonicalInstance() : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function getNameRef() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload @:public public function isEmpty() : Bool;
	
	@:overload @:public public function new(ctype : Int, name : String, layout : String) : Void;
	
	@:overload @:public public function addContent(bytes : java.NativeArray<java.StdTypes.Int8>, fixups : Dynamic) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function addContent(bytes : java.NativeArray<java.StdTypes.Int8>) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:public public function equals(x : Dynamic) : Bool;
	
	@:overload @:public public function equals(that : com.sun.java.util.jar.pack.Attribute.Attribute_Layout) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function compareTo(that : com.sun.java.util.jar.pack.Attribute.Attribute_Layout) : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function hasCallables() : Bool;
	
	@:overload @:public public function getCallables() : java.NativeArray<com.sun.java.util.jar.pack.Attribute.Attribute_Layout_Element>;
	
	@:overload @:public public function getEntryPoint() : java.NativeArray<com.sun.java.util.jar.pack.Attribute.Attribute_Layout_Element>;
	
	/** Return a sequence of tokens from the given attribute bytes.
	*  Sequence elements will be 1-1 correspondent with my layout tokens.
	*/
	@:overload @:public public function parse(holder : com.sun.java.util.jar.pack.Attribute.Attribute_Holder, bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, len : Int, out : com.sun.java.util.jar.pack.Attribute.Attribute_ValueStream) : Void;
	
	/** Given a sequence of tokens, return the attribute bytes.
	*  Sequence elements must be 1-1 correspondent with my layout tokens.
	*  The returned object is a cookie for Fixups.finishRefs, which
	*  must be used to harden any references into integer indexes.
	*/
	@:overload @:public public function unparse(_in : com.sun.java.util.jar.pack.Attribute.Attribute_ValueStream, out : java.io.ByteArrayOutputStream) : Dynamic;
	
	@:overload @:public public function layoutForPackageMajver(majver : Int) : String;
	
	
}
@:native('com$sun$java$util$jar$pack$Attribute$Layout$Element') extern class Attribute_Layout_Element
{
	@:overload @:public public function hasBand() : Bool;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$Attribute$FormatException') extern class Attribute_FormatException extends java.io.IOException
{
	@:overload @:public public function new(message : String, ctype : Int, name : String, layout : String) : Void;
	
	@:overload @:public public function new(message : String, ctype : Int, name : String) : Void;
	
	
}
