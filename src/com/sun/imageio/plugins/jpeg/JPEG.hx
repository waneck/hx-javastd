package com.sun.imageio.plugins.jpeg;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JPEG
{
	/** For temporary use in arithmetic coding */
	@:public @:static @:final public static var TEM(default, null) : Int;
	
	/** Baseline DCT */
	@:public @:static @:final public static var SOF0(default, null) : Int;
	
	/** Extended Sequential DCT */
	@:public @:static @:final public static var SOF1(default, null) : Int;
	
	/** Progressive DCT */
	@:public @:static @:final public static var SOF2(default, null) : Int;
	
	/** Lossless Sequential */
	@:public @:static @:final public static var SOF3(default, null) : Int;
	
	/** Define Huffman Tables */
	@:public @:static @:final public static var DHT(default, null) : Int;
	
	/** Differential Sequential DCT */
	@:public @:static @:final public static var SOF5(default, null) : Int;
	
	/** Differential Progressive DCT */
	@:public @:static @:final public static var SOF6(default, null) : Int;
	
	/** Differential Lossless */
	@:public @:static @:final public static var SOF7(default, null) : Int;
	
	/** Reserved for JPEG extensions */
	@:public @:static @:final public static var JPG(default, null) : Int;
	
	/** Extended Sequential DCT, Arithmetic coding */
	@:public @:static @:final public static var SOF9(default, null) : Int;
	
	/** Progressive DCT, Arithmetic coding */
	@:public @:static @:final public static var SOF10(default, null) : Int;
	
	/** Lossless Sequential, Arithmetic coding */
	@:public @:static @:final public static var SOF11(default, null) : Int;
	
	/** Define Arithmetic conditioning tables */
	@:public @:static @:final public static var DAC(default, null) : Int;
	
	/** Differential Sequential DCT, Arithmetic coding */
	@:public @:static @:final public static var SOF13(default, null) : Int;
	
	/** Differential Progressive DCT, Arithmetic coding */
	@:public @:static @:final public static var SOF14(default, null) : Int;
	
	/** Differential Lossless, Arithmetic coding */
	@:public @:static @:final public static var SOF15(default, null) : Int;
	
	@:public @:static @:final public static var RST0(default, null) : Int;
	
	@:public @:static @:final public static var RST1(default, null) : Int;
	
	@:public @:static @:final public static var RST2(default, null) : Int;
	
	@:public @:static @:final public static var RST3(default, null) : Int;
	
	@:public @:static @:final public static var RST4(default, null) : Int;
	
	@:public @:static @:final public static var RST5(default, null) : Int;
	
	@:public @:static @:final public static var RST6(default, null) : Int;
	
	@:public @:static @:final public static var RST7(default, null) : Int;
	
	/** Number of restart markers */
	@:public @:static @:final public static var RESTART_RANGE(default, null) : Int;
	
	/** Start of Image */
	@:public @:static @:final public static var SOI(default, null) : Int;
	
	/** End of Image */
	@:public @:static @:final public static var EOI(default, null) : Int;
	
	/** Start of Scan */
	@:public @:static @:final public static var SOS(default, null) : Int;
	
	/** Define Quantisation Tables */
	@:public @:static @:final public static var DQT(default, null) : Int;
	
	/** Define Number of lines */
	@:public @:static @:final public static var DNL(default, null) : Int;
	
	/** Define Restart Interval */
	@:public @:static @:final public static var DRI(default, null) : Int;
	
	/** Define Heirarchical progression */
	@:public @:static @:final public static var DHP(default, null) : Int;
	
	/** Expand reference image(s) */
	@:public @:static @:final public static var EXP(default, null) : Int;
	
	/** APP0 used by JFIF */
	@:public @:static @:final public static var APP0(default, null) : Int;
	
	@:public @:static @:final public static var APP1(default, null) : Int;
	
	@:public @:static @:final public static var APP2(default, null) : Int;
	
	@:public @:static @:final public static var APP3(default, null) : Int;
	
	@:public @:static @:final public static var APP4(default, null) : Int;
	
	@:public @:static @:final public static var APP5(default, null) : Int;
	
	@:public @:static @:final public static var APP6(default, null) : Int;
	
	@:public @:static @:final public static var APP7(default, null) : Int;
	
	@:public @:static @:final public static var APP8(default, null) : Int;
	
	@:public @:static @:final public static var APP9(default, null) : Int;
	
	@:public @:static @:final public static var APP10(default, null) : Int;
	
	@:public @:static @:final public static var APP11(default, null) : Int;
	
	@:public @:static @:final public static var APP12(default, null) : Int;
	
	@:public @:static @:final public static var APP13(default, null) : Int;
	
	/** APP14 used by Adobe */
	@:public @:static @:final public static var APP14(default, null) : Int;
	
	@:public @:static @:final public static var APP15(default, null) : Int;
	
	/** Comment marker */
	@:public @:static @:final public static var COM(default, null) : Int;
	
	/** The X and Y units simply indicate the aspect ratio of the pixels. */
	@:public @:static @:final public static var DENSITY_UNIT_ASPECT_RATIO(default, null) : Int;
	
	/** Pixel density is in pixels per inch. */
	@:public @:static @:final public static var DENSITY_UNIT_DOTS_INCH(default, null) : Int;
	
	/** Pixel density is in pixels per centemeter. */
	@:public @:static @:final public static var DENSITY_UNIT_DOTS_CM(default, null) : Int;
	
	/** The max known value for DENSITY_UNIT */
	@:public @:static @:final public static var NUM_DENSITY_UNIT(default, null) : Int;
	
	@:public @:static @:final public static var ADOBE_IMPOSSIBLE(default, null) : Int;
	
	@:public @:static @:final public static var ADOBE_UNKNOWN(default, null) : Int;
	
	@:public @:static @:final public static var ADOBE_YCC(default, null) : Int;
	
	@:public @:static @:final public static var ADOBE_YCCK(default, null) : Int;
	
	@:public @:static @:final public static var vendor(default, null) : String;
	
	@:public @:static @:final public static var version(default, null) : String;
	
	@:public @:static @:final public static var names(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var suffixes(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var MIMETypes(default, null) : java.NativeArray<String>;
	
	@:public @:static @:final public static var nativeImageMetadataFormatName(default, null) : String;
	
	@:public @:static @:final public static var nativeImageMetadataFormatClassName(default, null) : String;
	
	@:public @:static @:final public static var nativeStreamMetadataFormatName(default, null) : String;
	
	@:public @:static @:final public static var nativeStreamMetadataFormatClassName(default, null) : String;
	
	@:public @:static @:final public static var JCS_UNKNOWN(default, null) : Int;
	
	@:public @:static @:final public static var JCS_GRAYSCALE(default, null) : Int;
	
	@:public @:static @:final public static var JCS_RGB(default, null) : Int;
	
	@:public @:static @:final public static var JCS_YCbCr(default, null) : Int;
	
	@:public @:static @:final public static var JCS_CMYK(default, null) : Int;
	
	@:public @:static @:final public static var JCS_YCC(default, null) : Int;
	
	@:public @:static @:final public static var JCS_RGBA(default, null) : Int;
	
	@:public @:static @:final public static var JCS_YCbCrA(default, null) : Int;
	
	@:public @:static @:final public static var JCS_YCCA(default, null) : Int;
	
	@:public @:static @:final public static var JCS_YCCK(default, null) : Int;
	
	@:public @:static @:final public static var NUM_JCS_CODES(default, null) : Int;
	
	/** IJG can handle up to 4-channel JPEGs */
	@:public @:static @:final public static var bandOffsets(default, null) : java.NativeArray<java.NativeArray<Int>>;
	
	@:public @:static @:final public static var bOffsRGB(default, null) : java.NativeArray<Int>;
	
	@:public @:static @:final public static var DEFAULT_QUALITY(default, null) : Single;
	
	
}
/* These are kept in the inner class to avoid static initialization
* of the CMM class until someone actually needs it.
* (e.g. do not init CMM on the request for jpeg mime types)
*/
@:native('com$sun$imageio$plugins$jpeg$JPEG$JCS') extern class JPEG_JCS
{
	@:public @:static @:final public static var sRGB(default, null) : java.awt.color.ColorSpace;
	
	@:overload @:public @:static public static function getYCC() : java.awt.color.ColorSpace;
	
	
}
