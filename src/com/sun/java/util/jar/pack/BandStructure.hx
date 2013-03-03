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
	@:overload @:abstract @:protected private function getCPIndex(tag : java.StdTypes.Int8) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index;
	
	/** Call this exactly once, early, to specify the archive major version. */
	@:overload @:public public function initPackageMajver(packageMajver : Int) : Void;
	
	@:overload @:public public function getPackageMajver() : Int;
	
	@:overload @:protected private function new() : Void;
	
	@:overload @:public @:static public static function codingForIndex(i : Int) : com.sun.java.util.jar.pack.Coding;
	
	@:overload @:public @:static public static function indexOf(c : com.sun.java.util.jar.pack.Coding) : Int;
	
	@:overload @:public @:static public static function getBasicCodings() : java.NativeArray<com.sun.java.util.jar.pack.Coding>;
	
	@:protected private var bandHeaderBytes : java.NativeArray<java.StdTypes.Int8>;
	
	@:protected private var bandHeaderBytePos : Int;
	
	@:protected private var bandHeaderBytePos0 : Int;
	
	@:overload @:protected private function getBandHeader(XB : Int, regularCoding : com.sun.java.util.jar.pack.Coding) : com.sun.java.util.jar.pack.CodingMethod;
	
	@:overload @:public @:static public static function parseMetaCoding(bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, dflt : com.sun.java.util.jar.pack.Coding, res : java.NativeArray<com.sun.java.util.jar.pack.CodingMethod>) : Int;
	
	@:public @:static @:final public static var NO_PHASE(default, null) : Int;
	
	@:public @:static @:final public static var COLLECT_PHASE(default, null) : Int;
	
	@:public @:static @:final public static var FROZEN_PHASE(default, null) : Int;
	
	@:public @:static @:final public static var WRITE_PHASE(default, null) : Int;
	
	@:public @:static @:final public static var EXPECT_PHASE(default, null) : Int;
	
	@:public @:static @:final public static var READ_PHASE(default, null) : Int;
	
	@:public @:static @:final public static var DISBURSE_PHASE(default, null) : Int;
	
	@:public @:static @:final public static var DONE_PHASE(default, null) : Int;
	
	@:overload @:protected private function getCodingChooser() : com.sun.java.util.jar.pack.CodingChooser;
	
	@:overload @:public public function chooseCoding(values : java.NativeArray<Int>, start : Int, end : Int, regular : com.sun.java.util.jar.pack.Coding, bandName : String, sizes : java.NativeArray<Int>) : com.sun.java.util.jar.pack.CodingMethod;
	
	@:overload @:protected @:static private static function decodeEscapeValue(X : Int, regularCoding : com.sun.java.util.jar.pack.Coding) : Int;
	
	@:overload @:protected @:static private static function encodeEscapeValue(XB : Int, regularCoding : com.sun.java.util.jar.pack.Coding) : Int;
	
	@:protected private var archiveOptions : Int;
	
	@:protected private var archiveSize0 : haxe.Int64;
	
	@:protected private var archiveSize1 : haxe.Int64;
	
	@:protected private var archiveNextCount : Int;
	
	/** Given CP indexes, distribute tag-specific indexes to bands. */
	@:overload @:protected private function setBandIndexes() : Void;
	
	@:overload @:protected private function setBandIndex(b : com.sun.java.util.jar.pack.BandStructure.BandStructure_CPRefBand, which : java.StdTypes.Int8) : Void;
	
	@:overload @:protected private function setConstantValueIndex(f : com.sun.java.util.jar.pack.Package.Package_Class_Field) : Void;
	
	@:protected private var metadataBands : java.NativeArray<com.sun.java.util.jar.pack.BandStructure.BandStructure_MultiBand>;
	
	@:public @:static @:final public static var ADH_CONTEXT_MASK(default, null) : Int;
	
	@:public @:static @:final public static var ADH_BIT_SHIFT(default, null) : Int;
	
	@:public @:static @:final public static var ADH_BIT_IS_LSB(default, null) : Int;
	
	@:public @:static @:final public static var ATTR_INDEX_OVERFLOW(default, null) : Int;
	
	@:public public var attrIndexLimit : java.NativeArray<Int>;
	
	@:protected private var attrFlagMask : java.NativeArray<haxe.Int64>;
	
	@:protected private var attrDefSeen : java.NativeArray<haxe.Int64>;
	
	@:protected private var attrOverflowMask : java.NativeArray<Int>;
	
	@:protected private var attrClassFileVersionMask : Int;
	
	@:protected private var attrBandTable : java.util.Map<com.sun.java.util.jar.pack.Attribute.Attribute_Layout, java.NativeArray<com.sun.java.util.jar.pack.BandStructure.BandStructure_Band>>;
	
	@:protected @:final private var attrCodeEmpty(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	@:protected @:final private var attrInnerClassesEmpty(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	@:protected @:final private var attrClassFileVersion(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	@:protected @:final private var attrConstantValue(default, null) : com.sun.java.util.jar.pack.Attribute.Attribute_Layout;
	
	@:protected private var attrDefs : java.util.List<java.util.List<com.sun.java.util.jar.pack.Attribute.Attribute_Layout>>;
	
	@:overload @:protected private function initAttrIndexLimit() : Void;
	
	@:overload @:protected private function haveFlagsHi(ctype : Int) : Bool;
	
	@:overload @:protected private function getPredefinedAttrs(ctype : Int) : java.util.List<com.sun.java.util.jar.pack.Attribute.Attribute_Layout>;
	
	@:overload @:protected private function isPredefinedAttr(ctype : Int, ai : Int) : Bool;
	
	@:overload @:protected private function adjustSpecialAttrMasks() : Void;
	
	@:overload @:protected private function makeClassFileVersionAttr(minver : Int, majver : Int) : com.sun.java.util.jar.pack.Attribute;
	
	@:overload @:protected private function parseClassFileVersionAttr(attr : com.sun.java.util.jar.pack.Attribute) : java.NativeArray<java.StdTypes.Int16>;
	
	@:protected private var attrBands : java.NativeArray<com.sun.java.util.jar.pack.BandStructure.BandStructure_MultiBand>;
	
	@:overload @:protected private function setAttributeLayoutIndex(def : com.sun.java.util.jar.pack.Attribute.Attribute_Layout, index : Int) : Int;
	
	@:public @:final public var shortCodeHeader_h_limit(default, null) : Int;
	
	@:overload @:protected private function putLabel(bc_label : com.sun.java.util.jar.pack.BandStructure.BandStructure_IntBand, c : com.sun.java.util.jar.pack.Code, pc : Int, targetPC : Int) : Void;
	
	@:overload @:protected private function getLabel(bc_label : com.sun.java.util.jar.pack.BandStructure.BandStructure_IntBand, c : com.sun.java.util.jar.pack.Code, pc : Int) : Int;
	
	@:overload @:protected private function getCPRefOpBand(bc : Int) : com.sun.java.util.jar.pack.BandStructure.BandStructure_CPRefBand;
	
	@:overload @:protected private function selfOpRefBand(self_bc : Int) : com.sun.java.util.jar.pack.BandStructure.BandStructure_CPRefBand;
	
	@:overload @:protected @:static private static function testBit(flags : Int, bitMask : Int) : Bool;
	
	@:overload @:protected @:static private static function setBit(flags : Int, bitMask : Int, z : Bool) : Int;
	
	@:overload @:protected @:static private static function testBit(flags : haxe.Int64, bitMask : haxe.Int64) : Bool;
	
	@:overload @:protected @:static private static function setBit(flags : haxe.Int64, bitMask : haxe.Int64, z : Bool) : haxe.Int64;
	
	@:overload @:protected @:static private static function realloc(a : java.NativeArray<Dynamic>, len : Int) : java.NativeArray<Dynamic>;
	
	@:overload @:protected @:static private static function realloc(a : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	@:overload @:protected @:static private static function realloc(a : java.NativeArray<Int>, len : Int) : java.NativeArray<Int>;
	
	@:overload @:protected @:static private static function realloc(a : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload @:protected @:static private static function realloc(a : java.NativeArray<java.StdTypes.Int8>, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:protected @:static private static function realloc(a : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
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
	@:final @:public public var regularCoding(default, null) : com.sun.java.util.jar.pack.Coding;
	
	@:final @:public public var seqForDebug(default, null) : Int;
	
	@:public public var elementCountForDebug : Int;
	
	@:overload @:protected private function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding) : Void;
	
	@:overload @:public public function init() : com.sun.java.util.jar.pack.BandStructure.BandStructure_Band;
	
	/** Return -1 if data buffer not allocated, else max length. */
	@:overload @:public @:abstract public function capacity() : Int;
	
	/** Allocate data buffer to specified length. */
	@:overload @:protected @:abstract private function setCapacity(cap : Int) : Void;
	
	/** Return current number of values in buffer, which must exist. */
	@:overload @:public @:abstract public function length() : Int;
	
	@:overload @:protected @:abstract private function valuesRemainingForDebug() : Int;
	
	@:overload @:public @:final public function valuesExpected() : Int;
	
	/** Write out bytes, encoding the values. */
	@:overload @:public @:final public function writeTo(out : java.io.OutputStream) : Void;
	
	@:overload @:public @:final public function outputSize() : haxe.Int64;
	
	@:overload @:protected @:abstract private function computeOutputSize() : haxe.Int64;
	
	@:overload @:abstract @:protected private function writeDataTo(out : java.io.OutputStream) : Void;
	
	@:overload @:protected private function doneWriting() : Void;
	
	/** Read in bytes, decoding the values. */
	@:overload @:public @:final public function readFrom(_in : java.io.InputStream) : Void;
	
	@:overload @:abstract @:protected private function readDataFrom(_in : java.io.InputStream) : Void;
	
	@:overload @:protected private function readyToDisburse() : Void;
	
	@:overload @:public public function doneDisbursing() : Void;
	
	@:overload @:public @:final public function doneWithUnusedBand() : Void;
	
	@:overload @:protected private function setPhase(newPhase : Int) : Void;
	
	@:protected private var lengthForDebug : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$ValueBand') @:internal extern class BandStructure_ValueBand extends com.sun.java.util.jar.pack.BandStructure.BandStructure_Band
{
	@:overload @:protected private function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding) : Void;
	
	@:overload @:public override public function capacity() : Int;
	
	/** Declare predicted or needed capacity. */
	@:overload @:protected override private function setCapacity(cap : Int) : Void;
	
	@:overload @:public override public function length() : Int;
	
	@:overload @:protected override private function valuesRemainingForDebug() : Int;
	
	@:overload @:protected private function valueAtForDebug(i : Int) : Int;
	
	@:overload @:protected private function initializeValues(values : java.NativeArray<Int>) : Void;
	
	/** Collect one value, or store one decoded value. */
	@:overload @:protected private function addValue(x : Int) : Void;
	
	@:overload @:protected private function chooseBandCodings() : Void;
	
	@:overload @:protected override private function computeOutputSize() : haxe.Int64;
	
	@:overload @:protected private function computeEscapeSize() : Int;
	
	@:overload @:protected override private function writeDataTo(out : java.io.OutputStream) : Void;
	
	@:overload @:protected override private function readDataFrom(_in : java.io.InputStream) : Void;
	
	@:overload @:public override public function doneDisbursing() : Void;
	
	/** Disburse one value. */
	@:overload @:protected private function getValue() : Int;
	
	/** Reset for another pass over the same value set. */
	@:overload @:public public function resetForSecondPass() : Void;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$ByteBand') @:internal extern class BandStructure_ByteBand extends com.sun.java.util.jar.pack.BandStructure.BandStructure_Band
{
	@:overload @:public public function new(name : String) : Void;
	
	@:overload @:public override public function capacity() : Int;
	
	@:overload @:protected override private function setCapacity(cap : Int) : Void;
	
	@:overload @:public public function destroy() : Void;
	
	@:overload @:public override public function length() : Int;
	
	@:overload @:public public function reset() : Void;
	
	@:overload @:protected override private function valuesRemainingForDebug() : Int;
	
	@:overload @:protected private function chooseBandCodings() : Void;
	
	@:overload @:protected override private function computeOutputSize() : haxe.Int64;
	
	@:overload @:public override public function writeDataTo(out : java.io.OutputStream) : Void;
	
	@:overload @:public override public function readDataFrom(_in : java.io.InputStream) : Void;
	
	@:overload @:public override public function readyToDisburse() : Void;
	
	@:overload @:public override public function doneDisbursing() : Void;
	
	@:overload @:public public function setInputStreamFrom(_in : java.io.InputStream) : Void;
	
	@:overload @:public public function collectorStream() : java.io.OutputStream;
	
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	@:overload @:public public function getByte() : Int;
	
	@:overload @:public public function putByte(b : Int) : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$IntBand') @:internal extern class BandStructure_IntBand extends com.sun.java.util.jar.pack.BandStructure.BandStructure_ValueBand
{
	@:overload @:public public function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding) : Void;
	
	@:overload @:public public function putInt(x : Int) : Void;
	
	@:overload @:public public function getInt() : Int;
	
	/** Return the sum of all values in this band. */
	@:overload @:public public function getIntTotal() : Int;
	
	/** Return the occurrence count of a specific value in this band. */
	@:overload @:public public function getIntCount(value : Int) : Int;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$CPRefBand') @:internal extern class BandStructure_CPRefBand extends com.sun.java.util.jar.pack.BandStructure.BandStructure_ValueBand
{
	@:overload @:public public function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding, cpTag : java.StdTypes.Int8, nullOK : Bool) : Void;
	
	@:overload @:public public function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding, cpTag : java.StdTypes.Int8) : Void;
	
	@:overload @:public public function new(name : String, regularCoding : com.sun.java.util.jar.pack.Coding, undef : Dynamic) : Void;
	
	@:overload @:public public function setIndex(index : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	@:overload @:protected override private function readDataFrom(_in : java.io.InputStream) : Void;
	
	/** Write a constant pool reference. */
	@:overload @:public public function putRef(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry) : Void;
	
	@:overload @:public public function putRef(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry, index : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : Void;
	
	@:overload @:public public function putRef(e : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry, cptag : java.StdTypes.Int8) : Void;
	
	@:overload @:public public function getRef() : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload @:public public function getRef(index : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Index) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	@:overload @:public public function getRef(cptag : java.StdTypes.Int8) : com.sun.java.util.jar.pack.ConstantPool.ConstantPool_Entry;
	
	
}
@:native('com$sun$java$util$jar$pack$BandStructure$MultiBand') @:internal extern class BandStructure_MultiBand extends com.sun.java.util.jar.pack.BandStructure.BandStructure_Band
{
	@:overload @:public override public function init() : com.sun.java.util.jar.pack.BandStructure.BandStructure_Band;
	
	@:overload @:public override public function capacity() : Int;
	
	@:overload @:public override public function setCapacity(cap : Int) : Void;
	
	@:overload @:public override public function length() : Int;
	
	@:overload @:public override public function valuesRemainingForDebug() : Int;
	
	@:overload @:protected private function chooseBandCodings() : Void;
	
	@:overload @:protected override private function computeOutputSize() : haxe.Int64;
	
	@:overload @:protected override private function writeDataTo(out : java.io.OutputStream) : Void;
	
	@:overload @:protected override private function readDataFrom(_in : java.io.InputStream) : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
/**
* An output stream which counts the number of bytes written.
*/
@:native('com$sun$java$util$jar$pack$BandStructure$ByteCounter') @:internal extern class BandStructure_ByteCounter extends java.io.FilterOutputStream
{
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	@:overload @:public public function getCount() : haxe.Int64;
	
	@:overload @:public public function setCount(c : haxe.Int64) : Void;
	
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
