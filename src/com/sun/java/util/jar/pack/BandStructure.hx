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
* Define the structure and ordering of "bands" in a packed file.
* @author John Rose
*/
@:internal extern class BandStructure
{
	@:overload @:abstract private function getCPIndex(tag : java.StdTypes.Int8) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index;
	
	/** Call this exactly once, early, to specify the archive major version. */
	@:overload public function initPackageMajver(packageMajver : Int) : Void;
	
	@:overload public function getPackageMajver() : Int;
	
	@:overload private function new() : Void;
	
	@:overload public static function codingForIndex(i : Int) : com.sun.java.util.jar.pack.Coding;
	
	@:overload public static function indexOf(c : com.sun.java.util.jar.pack.Coding) : Int;
	
	@:overload public static function getBasicCodings() : java.NativeArray<com.sun.java.util.jar.pack.Coding>;
	
	private var bandHeaderBytes : java.NativeArray<java.StdTypes.Int8>;
	
	private var bandHeaderBytePos : Int;
	
	private var bandHeaderBytePos0 : Int;
	
	@:overload private function getBandHeader(XB : Int, regularCoding : com.sun.java.util.jar.pack.Coding) : com.sun.java.util.jar.pack.CodingMethod;
	
	@:overload public static function parseMetaCoding(bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, dflt : com.sun.java.util.jar.pack.Coding, res : java.NativeArray<com.sun.java.util.jar.pack.CodingMethod>) : Int;
	
	public static var NO_PHASE(default, null) : Int;
	
	public static var COLLECT_PHASE(default, null) : Int;
	
	public static var FROZEN_PHASE(default, null) : Int;
	
	public static var WRITE_PHASE(default, null) : Int;
	
	public static var EXPECT_PHASE(default, null) : Int;
	
	public static var READ_PHASE(default, null) : Int;
	
	public static var DISBURSE_PHASE(default, null) : Int;
	
	public static var DONE_PHASE(default, null) : Int;
	
	@:overload private function getCodingChooser() : com.sun.java.util.jar.pack.CodingChooser;
	
	@:overload public function chooseCoding(values : java.NativeArray<Int>, start : Int, end : Int, regular : com.sun.java.util.jar.pack.Coding, bandName : String, sizes : java.NativeArray<Int>) : com.sun.java.util.jar.pack.CodingMethod;
	
	@:overload private static function decodeEscapeValue(X : Int, regularCoding : com.sun.java.util.jar.pack.Coding) : Int;
	
	@:overload private static function encodeEscapeValue(XB : Int, regularCoding : com.sun.java.util.jar.pack.Coding) : Int;
	
	private var archiveOptions : Int;
	
	private var archiveSize0 : haxe.Int64;
	
	private var archiveSize1 : haxe.Int64;
	
	private var archiveNextCount : Int;
	
	/** Given CP indexes, distribute tag-specific indexes to bands. */
	@:overload private function setBandIndexes() : Void;
	
	@:overload private function setBandIndex(b : BandStructure_CPRefBand, which : java.StdTypes.Int8) : Void;
	
	@:overload private function setConstantValueIndex(f : com.sun.java.util.jar.pack.Package.Package_Class_Field) : Void;
	
	private var metadataBands : java.NativeArray<BandStructure_MultiBand>;
	
	public static var ADH_CONTEXT_MASK(default, null) : Int;
	
	public static var ADH_BIT_SHIFT(default, null) : Int;
	
	public static var ADH_BIT_IS_LSB(default, null) : Int;
	
	public static var ATTR_INDEX_OVERFLOW(default, null) : Int;
	
	public var attrIndexLimit : java.NativeArray<Int>;
	
	private var attrFlagMask : java.NativeArray<haxe.Int64>;
	
	private var attrDefSeen : java.NativeArray<haxe.Int64>;
	
	private var attrOverflowMask : java.NativeArray<Int>;
	
	private var attrClassFileVersionMask : Int;
	
	private var attrBandTable : java.util.Map<com.sun.java.util.jar.pack.Attribute.Attribute_Layout, java.NativeArray<BandStructure_Band>>;
	
	private var attrCodeEmpty(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	private var attrInnerClassesEmpty(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	private var attrClassFileVersion(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	private var attrConstantValue(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	private var attrDefs : java.util.List<java.util.List<com.sun.java.util.jar.pack.Attribute.Attribute_Layout>>;
	
	@:overload private function initAttrIndexLimit() : Void;
	
	@:overload private function haveFlagsHi(ctype : Int) : Bool;
	
	@:overload private function getPredefinedAttrs(ctype : Int) : java.util.List<com.sun.java.util.jar.pack.Attribute.Attribute_Layout>;
	
	@:overload private function isPredefinedAttr(ctype : Int, ai : Int) : Bool;
	
	@:overload private function adjustSpecialAttrMasks() : Void;
	
	@:overload private function makeClassFileVersionAttr(minver : Int, majver : Int) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload private function parseClassFileVersionAttr(attr : com.sun.java.util.jar.pack.Attribute) : java.NativeArray<java.StdTypes.Int16>;
	
	private var attrBands : java.NativeArray<BandStructure_MultiBand>;
	
	@:overload private function setAttributeLayoutIndex(def : com.sun.java.util.jar.pack.Attribute.Attribute_Layout, index : Int) : Int;
	
	public var shortCodeHeader_h_limit(default, null) : Int;
	
	@:overload private function putLabel(bc_label : BandStructure_IntBand, c : com.sun.java.util.jar.pack.Code, pc : Int, targetPC : Int) : Void;
	
	@:overload private function getLabel(bc_label : BandStructure_IntBand, c : com.sun.java.util.jar.pack.Code, pc : Int) : Int;
	
	@:overload private function getCPRefOpBand(bc : Int) : BandStructure_CPRefBand;
	
	@:overload private function selfOpRefBand(self_bc : Int) : BandStructure_CPRefBand;
	
	@:overload private static function testBit(flags : Int, bitMask : Int) : Bool;
	
	@:overload private static function setBit(flags : Int, bitMask : Int, z : Bool) : Int;
	
	@:overload private static function testBit(flags : haxe.Int64, bitMask : haxe.Int64) : Bool;
	
	@:overload private static function setBit(flags : haxe.Int64, bitMask : haxe.Int64, z : Bool) : haxe.Int64;
	
	@:overload private static function realloc(a : java.NativeArray<Dynamic>, len : Int) : java.NativeArray<Dynamic>;
	
	@:overload private static function realloc(a : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	@:overload private static function realloc(a : java.NativeArray<Int>, len : Int) : java.NativeArray<Int>;
	
	@:overload private static function realloc(a : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload private static function realloc(a : java.NativeArray<java.StdTypes.Int8>, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private static function realloc(a : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/** The packed file is divided up into a number of segments.
*  Most segments are typed as ValueBand, strongly-typed sequences
*  of integer values, all interpreted in a single way.
*  A few segments are ByteBands, which hetergeneous sequences
*  of bytes.
*
*  The two phases for writing a packed file are COLLECT and WRITE.
*  1. When writing a packed file, each band collects
*  data in an ad-hoc order.
*  2. At the end, each band is assigned a coding scheme,
*  and then all the bands are written in their global order.
*
*  The three phases for reading a packed file are EXPECT, READ,
*  and DISBURSE.
*  1. For each band, the expected number of integers  is determined.
*  2. The data is actually read from the file into the band.
*  3. The band pays out its values as requested, in an ad hoc order.
*
*  When the last phase of a band is done, it is marked so (DONE).
*  Clearly, these phases must be properly ordered WRT each other.
*/
@:native('com$sun$java$util$jar$pack$BandStructure$Band') @:internal extern class BandStructure_Band
{
	public var regularCoding(default, null) : com.sun.java.util.jar.pack.Coding;
	
	public var seqForDebug(default, null) : Int;
	
	public var elementCountForDebug : Int;
	
	@:overload private function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding) : Void;
	
	@:overload public function init() : BandStructure_Band;
	
	/** Return -1 if data buffer not allocated, else max length. */
	@:overload @:abstract public function capacity() : Int;
	
	/** Allocate data buffer to specified length. */
	@:overload @:abstract private function setCapacity(cap : Int) : Void;
	
	/** Return current number of values in buffer, which must exist. */
	@:overload @:abstract public function length() : Int;
	
	@:overload @:abstract private function valuesRemainingForDebug() : Int;
	
	@:overload @:final public function valuesExpected() : Int;
	
	/** Write out bytes, encoding the values. */
	@:overload @:final public function writeTo(out : java.io.OutputStream) : Void;
	
	@:overload @:final public function outputSize() : haxe.Int64;
	
	@:overload @:abstract private function computeOutputSize() : haxe.Int64;
	
	@:overload @:abstract private function writeDataTo(out : java.io.OutputStream) : Void;
	
	@:overload private function doneWriting() : Void;
	
	/** Read in bytes, decoding the values. */
	@:overload @:final public function readFrom(_in : java.io.InputStream) : Void;
	
	@:overload @:abstract private function readDataFrom(_in : java.io.InputStream) : Void;
	
	@:overload private function readyToDisburse() : Void;
	
	@:overload public function doneDisbursing() : Void;
	
	@:overload @:final public function doneWithUnusedBand() : Void;
	
	@:overload private function setPhase(newPhase : Int) : Void;
	
	private var lengthForDebug : Int;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$ValueBand') @:internal extern class BandStructure_ValueBand extends BandStructure_Band
{
	@:overload private function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding) : Void;
	
	@:overload override public function capacity() : Int;
	
	/** Declare predicted or needed capacity. */
	@:overload override private function setCapacity(cap : Int) : Void;
	
	@:overload override public function length() : Int;
	
	@:overload override private function valuesRemainingForDebug() : Int;
	
	@:overload private function valueAtForDebug(i : Int) : Int;
	
	@:overload private function initializeValues(values : java.NativeArray<Int>) : Void;
	
	/** Collect one value, or store one decoded value. */
	@:overload private function addValue(x : Int) : Void;
	
	@:overload override private function chooseBandCodings() : Void;
	
	@:overload override private function computeOutputSize() : haxe.Int64;
	
	@:overload private function computeEscapeSize() : Int;
	
	@:overload override private function writeDataTo(out : java.io.OutputStream) : Void;
	
	@:overload override private function readDataFrom(_in : java.io.InputStream) : Void;
	
	@:overload override public function doneDisbursing() : Void;
	
	/** Disburse one value. */
	@:overload private function getValue() : Int;
	
	/** Reset for another pass over the same value set. */
	@:overload public function resetForSecondPass() : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$ByteBand') @:internal extern class BandStructure_ByteBand extends BandStructure_Band
{
	@:overload public function new(name : String) : Void;
	
	@:overload override public function capacity() : Int;
	
	@:overload override private function setCapacity(cap : Int) : Void;
	
	@:overload public function destroy() : Void;
	
	@:overload override public function length() : Int;
	
	@:overload public function reset() : Void;
	
	@:overload override private function valuesRemainingForDebug() : Int;
	
	@:overload override private function chooseBandCodings() : Void;
	
	@:overload override private function computeOutputSize() : haxe.Int64;
	
	@:overload override public function writeDataTo(out : java.io.OutputStream) : Void;
	
	@:overload override public function readDataFrom(_in : java.io.InputStream) : Void;
	
	@:overload override public function readyToDisburse() : Void;
	
	@:overload override public function doneDisbursing() : Void;
	
	@:overload public function setInputStreamFrom(_in : java.io.InputStream) : Void;
	
	@:overload public function collectorStream() : java.io.OutputStream;
	
	@:overload public function getInputStream() : java.io.InputStream;
	
	@:overload public function getByte() : Int;
	
	@:overload public function putByte(b : Int) : Void;
	
	@:overload override public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$IntBand') @:internal extern class BandStructure_IntBand extends BandStructure_ValueBand
{
	@:overload public function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding) : Void;
	
	@:overload public function putInt(x : Int) : Void;
	
	@:overload public function getInt() : Int;
	
	/** Return the sum of all values in this band. */
	@:overload public function getIntTotal() : Int;
	
	/** Return the occurrence count of a specific value in this band. */
	@:overload public function getIntCount(value : Int) : Int;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$CPRefBand') @:internal extern class BandStructure_CPRefBand extends BandStructure_ValueBand
{
	@:overload public function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding, cpTag : java.StdTypes.Int8, nullOK : Bool) : Void;
	
	@:overload public function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding, cpTag : java.StdTypes.Int8) : Void;
	
	@:overload public function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding, undef : Dynamic) : Void;
	
	@:overload public function setIndex(index : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	@:overload override private function readDataFrom(_in : java.io.InputStream) : Void;
	
	/** Write a constant pool reference. */
	@:overload public function putRef(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Void;
	
	@:overload public function putRef(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry, index : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	@:overload public function putRef(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry, cptag : java.StdTypes.Int8) : Void;
	
	@:overload public function getRef() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload public function getRef(index : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload public function getRef(cptag : java.StdTypes.Int8) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$MultiBand') @:internal extern class BandStructure_MultiBand extends BandStructure_Band
{
	@:overload override public function init() : BandStructure_Band;
	
	@:overload override public function capacity() : Int;
	
	@:overload override public function setCapacity(cap : Int) : Void;
	
	@:overload override public function length() : Int;
	
	@:overload override public function valuesRemainingForDebug() : Int;
	
	@:overload override private function chooseBandCodings() : Void;
	
	@:overload override private function computeOutputSize() : haxe.Int64;
	
	@:overload override private function writeDataTo(out : java.io.OutputStream) : Void;
	
	@:overload override private function readDataFrom(_in : java.io.InputStream) : Void;
	
	@:overload override public function toString() : String;
	
	
}
/**
* An output stream which counts the number of bytes written.
*/
@:native('com$sun$java$util$jar$pack$BandStructure$ByteCounter') @:internal extern class BandStructure_ByteCounter extends java.io.FilterOutputStream
{
	@:overload public function new(out : java.io.OutputStream) : Void;
	
	@:overload public function getCount() : haxe.Int64;
	
	@:overload public function setCount(c : haxe.Int64) : Void;
	
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload public function toString() : String;
	
	
}
