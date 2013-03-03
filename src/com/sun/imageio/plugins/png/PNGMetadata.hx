package com.sun.imageio.plugins.png;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class PNGMetadata extends javax.imageio.metadata.IIOMetadata implements java.lang.Cloneable
{
	@:native('nativeMetadataFormatName') @:public @:static @:final public static var _nativeMetadataFormatName(default, null) : String;
	
	@:native('nativeMetadataFormatClassName') @:protected @:static @:final private static var _nativeMetadataFormatClassName(default, null) : String;
	
	@:public @:static @:final public static var IHDR_colorTypeNames(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var IHDR_numChannels(default, null) : java.NativeArray<Int>;
	
	@:public @:static @:final public static var IHDR_bitDepths(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var IHDR_compressionMethodNames(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var IHDR_filterMethodNames(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var IHDR_interlaceMethodNames(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var iCCP_compressionMethodNames(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var zTXt_compressionMethodNames(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var PHYS_UNIT_UNKNOWN(default, null) : Int;
	
	@:public @:static @:final public static var PHYS_UNIT_METER(default, null) : Int;
	
	@:public @:static @:final public static var unitSpecifierNames(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var renderingIntentNames(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var colorSpaceTypeNames(default, null) : java.NativeArray<String>;
	
	@:public public var IHDR_present : Bool;
	
	@:public public var IHDR_width : Int;
	
	@:public public var IHDR_height : Int;
	
	@:public public var IHDR_bitDepth : Int;
	
	@:public public var IHDR_colorType : Int;
	
	@:public public var IHDR_compressionMethod : Int;
	
	@:public public var IHDR_filterMethod : Int;
	
	@:public public var IHDR_interlaceMethod : Int;
	
	@:public public var PLTE_present : Bool;
	
	@:public public var PLTE_red : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var PLTE_green : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var PLTE_blue : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var PLTE_order : java.NativeArray<Int>;
	
	@:public public var bKGD_present : Bool;
	
	@:public public var bKGD_colorType : Int;
	
	@:public public var bKGD_index : Int;
	
	@:public public var bKGD_gray : Int;
	
	@:public public var bKGD_red : Int;
	
	@:public public var bKGD_green : Int;
	
	@:public public var bKGD_blue : Int;
	
	@:public public var cHRM_present : Bool;
	
	@:public public var cHRM_whitePointX : Int;
	
	@:public public var cHRM_whitePointY : Int;
	
	@:public public var cHRM_redX : Int;
	
	@:public public var cHRM_redY : Int;
	
	@:public public var cHRM_greenX : Int;
	
	@:public public var cHRM_greenY : Int;
	
	@:public public var cHRM_blueX : Int;
	
	@:public public var cHRM_blueY : Int;
	
	@:public public var gAMA_present : Bool;
	
	@:public public var gAMA_gamma : Int;
	
	@:public public var hIST_present : Bool;
	
	@:public public var hIST_histogram : java.NativeArray<java.StdTypes.Char16>;
	
	@:public public var iCCP_present : Bool;
	
	@:public public var iCCP_profileName : String;
	
	@:public public var iCCP_compressionMethod : Int;
	
	@:public public var iCCP_compressedProfile : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var iTXt_keyword : java.util.ArrayList<String>;
	
	@:public public var iTXt_compressionFlag : java.util.ArrayList<Null<Bool>>;
	
	@:public public var iTXt_compressionMethod : java.util.ArrayList<Null<Int>>;
	
	@:public public var iTXt_languageTag : java.util.ArrayList<String>;
	
	@:public public var iTXt_translatedKeyword : java.util.ArrayList<String>;
	
	@:public public var iTXt_text : java.util.ArrayList<String>;
	
	@:public public var pHYs_present : Bool;
	
	@:public public var pHYs_pixelsPerUnitXAxis : Int;
	
	@:public public var pHYs_pixelsPerUnitYAxis : Int;
	
	@:public public var pHYs_unitSpecifier : Int;
	
	@:public public var sBIT_present : Bool;
	
	@:public public var sBIT_colorType : Int;
	
	@:public public var sBIT_grayBits : Int;
	
	@:public public var sBIT_redBits : Int;
	
	@:public public var sBIT_greenBits : Int;
	
	@:public public var sBIT_blueBits : Int;
	
	@:public public var sBIT_alphaBits : Int;
	
	@:public public var sPLT_present : Bool;
	
	@:public public var sPLT_paletteName : String;
	
	@:public public var sPLT_sampleDepth : Int;
	
	@:public public var sPLT_red : java.NativeArray<Int>;
	
	@:public public var sPLT_green : java.NativeArray<Int>;
	
	@:public public var sPLT_blue : java.NativeArray<Int>;
	
	@:public public var sPLT_alpha : java.NativeArray<Int>;
	
	@:public public var sPLT_frequency : java.NativeArray<Int>;
	
	@:public public var sRGB_present : Bool;
	
	@:public public var sRGB_renderingIntent : Int;
	
	@:public public var tEXt_keyword : java.util.ArrayList<String>;
	
	@:public public var tEXt_text : java.util.ArrayList<String>;
	
	@:public public var tIME_present : Bool;
	
	@:public public var tIME_year : Int;
	
	@:public public var tIME_month : Int;
	
	@:public public var tIME_day : Int;
	
	@:public public var tIME_hour : Int;
	
	@:public public var tIME_minute : Int;
	
	@:public public var tIME_second : Int;
	
	@:public public var tRNS_present : Bool;
	
	@:public public var tRNS_colorType : Int;
	
	@:public public var tRNS_alpha : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var tRNS_gray : Int;
	
	@:public public var tRNS_red : Int;
	
	@:public public var tRNS_green : Int;
	
	@:public public var tRNS_blue : Int;
	
	@:public public var zTXt_keyword : java.util.ArrayList<String>;
	
	@:public public var zTXt_compressionMethod : java.util.ArrayList<Null<Int>>;
	
	@:public public var zTXt_text : java.util.ArrayList<String>;
	
	@:public public var unknownChunkType : java.util.ArrayList<String>;
	
	@:public public var unknownChunkData : java.util.ArrayList<java.NativeArray<java.StdTypes.Int8>>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(metadata : javax.imageio.metadata.IIOMetadata) : Void;
	
	/**
	* Sets the IHDR_bitDepth and IHDR_colorType variables.
	* The <code>numBands</code> parameter is necessary since
	* we may only be writing a subset of the image bands.
	*/
	@:overload @:public public function initialize(imageType : javax.imageio.ImageTypeSpecifier, numBands : Int) : Void;
	
	@:overload @:public override public function isReadOnly() : Bool;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public override public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	@:overload @:public override public function getStandardChromaNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardCompressionNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardDataNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardDimensionNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardDocumentNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardTextNode() : IIOMetadataNode;
	
	@:overload @:public override public function getStandardTransparencyNode() : IIOMetadataNode;
	
	@:overload @:public override public function mergeTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	
}
