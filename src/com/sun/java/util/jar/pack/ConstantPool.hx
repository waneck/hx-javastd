package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Representation of constant pool entries and indexes.
* @author John Rose
*/
@:internal extern class ConstantPool
{
	/** Factory for Utf8 string constants.
	*  Used for well-known strings like "SourceFile", "<init>", etc.
	*  Also used to back up more complex constant pool entries, like Class.
	*/
	@:overload @:synchronized public static function getUtf8Entry(value : String) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Utf8Entry;
	
	/** Factory for Class constants. */
	@:overload @:synchronized public static function getClassEntry(name : String) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_ClassEntry;
	
	/** Factory for literal constants (String, Integer, etc.). */
	@:overload @:synchronized public static function getLiteralEntry(value : java.lang.Comparable<Dynamic>) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_LiteralEntry;
	
	/** Factory for literal constants (String, Integer, etc.). */
	@:overload @:synchronized public static function getStringEntry(value : String) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_StringEntry;
	
	/** Factory for signature (type) constants. */
	@:overload @:synchronized public static function getSignatureEntry(type : String) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_SignatureEntry;
	
	@:overload public static function getSignatureEntry(formRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Utf8Entry, classRefs : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_ClassEntry>) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_SignatureEntry;
	
	/** Factory for descriptor (name-and-type) constants. */
	@:overload @:synchronized public static function getDescriptorEntry(nameRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Utf8Entry, typeRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_SignatureEntry) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_DescriptorEntry;
	
	@:overload public static function getDescriptorEntry(nameRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Utf8Entry, typeRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Utf8Entry) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_DescriptorEntry;
	
	/** Factory for member reference constants. */
	@:overload @:synchronized public static function getMemberEntry(tag : java.StdTypes.Int8, classRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_ClassEntry, descRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_DescriptorEntry) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_MemberEntry;
	
	private static var noRefs(default, null) : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	private static var noClassRefs(default, null) : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_ClassEntry>;
	
	@:overload public static function makeIndex(debugName : String, cpMap : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index;
	
	@:overload public static function makeIndex(debugName : String, cpMapList : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index;
	
	/** Sort this index (destructively) into canonical order. */
	@:overload public static function sort(ix : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	/** Return a set of indexes partitioning these entries.
	*  The keys array must of length this.size(), and marks entries.
	*  The result array is as long as one plus the largest key value.
	*  Entries with a negative key are dropped from the partition.
	*/
	@:overload public static function partition(ix : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index, keys : java.NativeArray<Int>) : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index>;
	
	@:overload public static function partitionByTag(ix : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index>;
	
	/** Close the set cpRefs under the getRef(*) relation.
	*  Also, if flattenSigs, replace all signatures in cpRefs
	*  by their equivalent Utf8s.
	*  Also, discard null from cpRefs.
	*/
	@:overload public static function completeReferencesIn(cpRefs : java.util.Set<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>, flattenSigs : Bool) : Void;
	
	@:overload public static function tagName(tag : Int) : String;
	
	
}
/** Entries in the constant pool. */
@:native('com$sun$java$util$jar$pack$ConstantPool$Entry') extern class ConstantPool_Entry implements java.lang.Comparable<Dynamic>
{
	private var tag(default, null) : java.StdTypes.Int8;
	
	private var valueHash : Int;
	
	@:overload private function new(tag : java.StdTypes.Int8) : Void;
	
	@:overload @:final public function getTag() : java.StdTypes.Int8;
	
	@:overload public function getRef(i : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload public function eq(that : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Bool;
	
	@:overload @:abstract public function equals(o : Dynamic) : Bool;
	
	@:overload @:final public function hashCode() : Int;
	
	@:overload @:abstract private function computeValueHash() : Int;
	
	@:overload @:abstract public function compareTo(o : Dynamic) : Int;
	
	@:overload private function superCompareTo(o : Dynamic) : Int;
	
	@:overload @:final public function isDoubleWord() : Bool;
	
	@:overload @:final public function tagMatches(tag : Int) : Bool;
	
	@:overload public function toString() : String;
	
	@:overload @:abstract public function stringValue() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$ConstantPool$Utf8Entry') extern class ConstantPool_Utf8Entry extends com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry
{
	@:overload override private function computeValueHash() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function compareTo(o : Dynamic) : Int;
	
	@:overload override public function stringValue() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$ConstantPool$LiteralEntry') extern class ConstantPool_LiteralEntry extends com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry
{
	@:overload private function new(tag : java.StdTypes.Int8) : Void;
	
	@:overload @:abstract public function literalValue() : java.lang.Comparable<Dynamic>;
	
	
}
@:native('com$sun$java$util$jar$pack$ConstantPool$NumberEntry') extern class ConstantPool_NumberEntry extends com.sun.java.util.jar.pack.ConstantPool.ConstantPool_LiteralEntry
{
	@:overload override private function computeValueHash() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function compareTo(o : Dynamic) : Int;
	
	@:overload public function numberValue() : java.lang.Number;
	
	@:overload override public function literalValue() : java.lang.Comparable<Dynamic>;
	
	@:overload override public function stringValue() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$ConstantPool$StringEntry') extern class ConstantPool_StringEntry extends com.sun.java.util.jar.pack.ConstantPool.ConstantPool_LiteralEntry
{
	@:overload override public function getRef(i : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload override private function computeValueHash() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function compareTo(o : Dynamic) : Int;
	
	@:overload override public function literalValue() : java.lang.Comparable<Dynamic>;
	
	@:overload override public function stringValue() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$ConstantPool$ClassEntry') extern class ConstantPool_ClassEntry extends com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry
{
	@:overload override public function getRef(i : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload override private function computeValueHash() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function compareTo(o : Dynamic) : Int;
	
	@:overload override public function stringValue() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$ConstantPool$DescriptorEntry') extern class ConstantPool_DescriptorEntry extends com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry
{
	@:overload override public function getRef(i : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload override private function computeValueHash() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function compareTo(o : Dynamic) : Int;
	
	@:overload override public function stringValue() : String;
	
	@:overload public function prettyString() : String;
	
	@:overload public function isMethod() : Bool;
	
	@:overload public function getLiteralTag() : java.StdTypes.Int8;
	
	
}
@:native('com$sun$java$util$jar$pack$ConstantPool$MemberEntry') extern class ConstantPool_MemberEntry extends com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry
{
	@:overload override public function getRef(i : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload override private function computeValueHash() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function compareTo(o : Dynamic) : Int;
	
	@:overload override public function stringValue() : String;
	
	@:overload public function isMethod() : Bool;
	
	
}
@:native('com$sun$java$util$jar$pack$ConstantPool$SignatureEntry') extern class ConstantPool_SignatureEntry extends com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry
{
	@:overload override public function getRef(i : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload override private function computeValueHash() : Int;
	
	@:overload public function asUtf8Entry() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Utf8Entry;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	@:overload override public function compareTo(o : Dynamic) : Int;
	
	@:overload override public function stringValue() : String;
	
	@:overload public function computeSize(countDoublesTwice : Bool) : Int;
	
	@:overload public function isMethod() : Bool;
	
	@:overload public function getLiteralTag() : java.StdTypes.Int8;
	
	@:overload public function prettyString() : String;
	
	
}
/** An Index is a mapping between CP entries and small integers. */
@:native('com$sun$java$util$jar$pack$ConstantPool$Index') extern class ConstantPool_Index extends java.util.AbstractList<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>
{
	private var debugName : String;
	
	private var cpMap : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	private var flattenSigs : Bool;
	
	@:overload private function getMap() : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	@:overload private function new(debugName : String) : Void;
	
	@:overload private function new(debugName : String, cpMap : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload private function setMap(cpMap : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload private function new(debugName : String, cpMapList : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload private function setMap(cpMapList : java.util.Collection<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : Void;
	
	@:overload public function size() : Int;
	
	@:overload public function get(i : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload public function getEntry(i : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload public function contains(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Bool;
	
	@:overload public function indexOf(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Int;
	
	@:overload public function lastIndexOf(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Int;
	
	@:overload public function assertIsSorted() : Bool;
	
	private var indexKey : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	private var indexValue : java.NativeArray<Int>;
	
	@:overload private function clearIndex() : Void;
	
	@:overload public function toArray(a : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>) : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	@:overload public function toArray() : java.NativeArray<com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry>;
	
	@:overload public function clone() : Dynamic;
	
	@:overload public function toString() : String;
	
	@:overload public function dumpString() : String;
	
	
}
/** Coherent group of constant pool indexes. */
@:native('com$sun$java$util$jar$pack$ConstantPool$IndexGroup') extern class ConstantPool_IndexGroup
{
	/** Index of all CP entries of all types, in definition order. */
	@:overload public function getUntypedIndex() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index;
	
	@:overload public function untypedIndexOf(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Int;
	
	@:overload public function initIndexByTag(tag : java.StdTypes.Int8, ix : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	/** Index of all CP entries of a given tag. */
	@:overload public function getIndexByTag(tag : java.StdTypes.Int8) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index;
	
	/** Index of all CP entries of a given tag and class. */
	@:overload public function getMemberIndex(tag : java.StdTypes.Int8, classRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_ClassEntry) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index;
	
	@:overload public function getOverloadingIndex(methodRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_MemberEntry) : Int;
	
	@:overload public function getOverloadingForIndex(tag : java.StdTypes.Int8, classRef : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_ClassEntry, name : String, which : Int) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_MemberEntry;
	
	@:overload public function haveNumbers() : Bool;
	
	
}
