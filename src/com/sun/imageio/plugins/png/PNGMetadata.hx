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
	@:native('nativeMetadataFormatName') public static var _nativeMetadataFormatName(default, null) : String;
	
	@:native('nativeMetadataFormatClassName') private static var _nativeMetadataFormatClassName(default, null) : String;
	
	public static var IHDR_colorTypeNames(default, null) : java.NativeArray<String>;
	
	public static var IHDR_numChannels(default, null) : java.NativeArray<Int>;
	
	public static var IHDR_bitDepths(default, null) : java.NativeArray<String>;
	
	public static var IHDR_compressionMethodNames(default, null) : java.NativeArray<String>;
	
	public static var IHDR_filterMethodNames(default, null) : java.NativeArray<String>;
	
	public static var IHDR_interlaceMethodNames(default, null) : java.NativeArray<String>;
	
	public static var iCCP_compressionMethodNames(default, null) : java.NativeArray<String>;
	
	public static var zTXt_compressionMethodNames(default, null) : java.NativeArray<String>;
	
	public static var PHYS_UNIT_UNKNOWN(default, null) : Int;
	
	public static var PHYS_UNIT_METER(default, null) : Int;
	
	public static var unitSpecifierNames(default, null) : java.NativeArray<String>;
	
	public static var renderingIntentNames(default, null) : java.NativeArray<String>;
	
	public static var colorSpaceTypeNames(default, null) : java.NativeArray<String>;
	
	public var IHDR_present : Bool;
	
	public var IHDR_width : Int;
	
	public var IHDR_height : Int;
	
	public var IHDR_bitDepth : Int;
	
	public var IHDR_colorType : Int;
	
	public var IHDR_compressionMethod : Int;
	
	public var IHDR_filterMethod : Int;
	
	public var IHDR_interlaceMethod : Int;
	
	public var PLTE_present : Bool;
	
	public var PLTE_red : java.NativeArray<java.StdTypes.Int8>;
	
	public var PLTE_green : java.NativeArray<java.StdTypes.Int8>;
	
	public var PLTE_blue : java.NativeArray<java.StdTypes.Int8>;
	
	public var PLTE_order : java.NativeArray<Int>;
	
	public var bKGD_present : Bool;
	
	public var bKGD_colorType : Int;
	
	public var bKGD_index : Int;
	
	public var bKGD_gray : Int;
	
	public var bKGD_red : Int;
	
	public var bKGD_green : Int;
	
	public var bKGD_blue : Int;
	
	public var cHRM_present : Bool;
	
	public var cHRM_whitePointX : Int;
	
	public var cHRM_whitePointY : Int;
	
	public var cHRM_redX : Int;
	
	public var cHRM_redY : Int;
	
	public var cHRM_greenX : Int;
	
	public var cHRM_greenY : Int;
	
	public var cHRM_blueX : Int;
	
	public var cHRM_blueY : Int;
	
	public var gAMA_present : Bool;
	
	public var gAMA_gamma : Int;
	
	public var hIST_present : Bool;
	
	public var hIST_histogram : java.NativeArray<java.StdTypes.Char16>;
	
	public var iCCP_present : Bool;
	
	public var iCCP_profileName : String;
	
	public var iCCP_compressionMethod : Int;
	
	public var iCCP_compressedProfile : java.NativeArray<java.StdTypes.Int8>;
	
	public var iTXt_keyword : java.util.ArrayList<String>;
	
	public var iTXt_compressionFlag : java.util.ArrayList<Null<Bool>>;
	
	public var iTXt_compressionMethod : java.util.ArrayList<Null<Int>>;
	
	public var iTXt_languageTag : java.util.ArrayList<String>;
	
	public var iTXt_translatedKeyword : java.util.ArrayList<String>;
	
	public var iTXt_text : java.util.ArrayList<String>;
	
	public var pHYs_present : Bool;
	
	public var pHYs_pixelsPerUnitXAxis : Int;
	
	public var pHYs_pixelsPerUnitYAxis : Int;
	
	public var pHYs_unitSpecifier : Int;
	
	public var sBIT_present : Bool;
	
	public var sBIT_colorType : Int;
	
	public var sBIT_grayBits : Int;
	
	public var sBIT_redBits : Int;
	
	public var sBIT_greenBits : Int;
	
	public var sBIT_blueBits : Int;
	
	public var sBIT_alphaBits : Int;
	
	public var sPLT_present : Bool;
	
	public var sPLT_paletteName : String;
	
	public var sPLT_sampleDepth : Int;
	
	public var sPLT_red : java.NativeArray<Int>;
	
	public var sPLT_green : java.NativeArray<Int>;
	
	public var sPLT_blue : java.NativeArray<Int>;
	
	public var sPLT_alpha : java.NativeArray<Int>;
	
	public var sPLT_frequency : java.NativeArray<Int>;
	
	public var sRGB_present : Bool;
	
	public var sRGB_renderingIntent : Int;
	
	public var tEXt_keyword : java.util.ArrayList<String>;
	
	public var tEXt_text : java.util.ArrayList<String>;
	
	public var tIME_present : Bool;
	
	public var tIME_year : Int;
	
	public var tIME_month : Int;
	
	public var tIME_day : Int;
	
	public var tIME_hour : Int;
	
	public var tIME_minute : Int;
	
	public var tIME_second : Int;
	
	public var tRNS_present : Bool;
	
	public var tRNS_colorType : Int;
	
	public var tRNS_alpha : java.NativeArray<java.StdTypes.Int8>;
	
	public var tRNS_gray : Int;
	
	public var tRNS_red : Int;
	
	public var tRNS_green : Int;
	
	public var tRNS_blue : Int;
	
	public var zTXt_keyword : java.util.ArrayList<String>;
	
	public var zTXt_compressionMethod : java.util.ArrayList<Null<Int>>;
	
	public var zTXt_text : java.util.ArrayList<String>;
	
	public var unknownChunkType : java.util.ArrayList<String>;
	
	public var unknownChunkData : java.util.ArrayList<java.NativeArray<java.StdTypes.Int8>>;
	
	@:overload public function new() : Void;
	
	@:overload public function new(metadata : javax.imageio.metadata.IIOMetadata) : Void;
	
	/**
	* Sets the IHDR_bitDepth and IHDR_colorType variables.
	* The <code>numBands</code> parameter is necessary since
	* we may only be writing a subset of the image bands.
	*/
	@:overload public function initialize(imageType : javax.imageio.ImageTypeSpecifier, numBands : Int) : Void;
	
	@:overload override public function isReadOnly() : Bool;
	
	@:overload public function clone() : Dynamic;
	
	@:overload override public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	@:overload override public function getStandardChromaNode() : IIOMetadataNode;
	
	@:overload override public function getStandardCompressionNode() : IIOMetadataNode;
	
	@:overload override public function getStandardDataNode() : IIOMetadataNode;
	
	@:overload override public function getStandardDimensionNode() : IIOMetadataNode;
	
	@:overload override public function getStandardDocumentNode() : IIOMetadataNode;
	
	@:overload override public function getStandardTextNode() : IIOMetadataNode;
	
	@:overload override public function getStandardTransparencyNode() : IIOMetadataNode;
	
	@:overload override public function mergeTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	@:overload override public function reset() : Void;
	
	
}
