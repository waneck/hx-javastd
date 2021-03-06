package sun.java2d.loops;
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
extern class SurfaceType
{
	/**
	* surface is unknown color model or sample model.
	*/
	@:public @:static @:final public static var DESC_ANY(default, null) : String;
	
	/**
	* common surface formats defined in BufferedImage
	*/
	@:public @:static @:final public static var DESC_INT_RGB(default, null) : String;
	
	@:public @:static @:final public static var DESC_INT_ARGB(default, null) : String;
	
	@:public @:static @:final public static var DESC_INT_ARGB_PRE(default, null) : String;
	
	@:public @:static @:final public static var DESC_INT_BGR(default, null) : String;
	
	@:public @:static @:final public static var DESC_3BYTE_BGR(default, null) : String;
	
	@:public @:static @:final public static var DESC_4BYTE_ABGR(default, null) : String;
	
	@:public @:static @:final public static var DESC_4BYTE_ABGR_PRE(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_565_RGB(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_555_RGB(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_555_RGBx(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_4444_ARGB(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_GRAY(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_INDEXED(default, null) : String;
	
	@:public @:static @:final public static var DESC_USHORT_GRAY(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_BINARY(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_INDEXED(default, null) : String;
	
	/**
	* wildcard format which indicates that the GraphicsPrimitive
	* is independent of the color model on an IntegerComponent
	* sample model surface
	*/
	@:public @:static @:final public static var DESC_ANY_INT(default, null) : String;
	
	/**
	* wildcard format which indicates that the GraphicsPrimitive
	* is independent of the color model on a ShortComponent
	* sample model surface
	*/
	@:public @:static @:final public static var DESC_ANY_SHORT(default, null) : String;
	
	/**
	* wildcard format which indicates that the GraphicsPrimitive
	* is independent of the color model on a ByteComponent
	* sample model surface
	*/
	@:public @:static @:final public static var DESC_ANY_BYTE(default, null) : String;
	
	/**
	* wildcard format which indicates that the GraphicsPrimitive
	* operates on a surface with 3 component interleaved Raster and
	* sample model and a ComponentColorModel with an arbitrary ordering
	* of the RGB channels
	*/
	@:public @:static @:final public static var DESC_ANY_3BYTE(default, null) : String;
	
	/**
	* wildcard format which indicates that the GraphicsPrimitive
	* operates on a surface with 4 component interleaved Raster and
	* sample model and a ComponentColorModel with an arbitrary ordering
	* of the ARGB channels
	*/
	@:public @:static @:final public static var DESC_ANY_4BYTE(default, null) : String;
	
	/**
	* wildcard format which indicates that the GraphicsPrimitive
	* operates on a surface with a single component IntegerComponent
	* sample model and a DirectColorModel with an arbitrary ordering
	* of the RGB channels
	*/
	@:public @:static @:final public static var DESC_ANY_INT_DCM(default, null) : String;
	
	/**
	* additional IntegerComponent types common on Windows
	*/
	@:public @:static @:final public static var DESC_INT_RGBx(default, null) : String;
	
	@:public @:static @:final public static var DESC_INT_BGRx(default, null) : String;
	
	/**
	* additional 3 byte format common on Windows
	*/
	@:public @:static @:final public static var DESC_3BYTE_RGB(default, null) : String;
	
	/**
	* common formats for BITMASK transparency.
	*/
	@:public @:static @:final public static var DESC_INT_ARGB_BM(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_INDEXED_BM(default, null) : String;
	
	/**
	* Opaque 8-bit indexed images
	*/
	@:public @:static @:final public static var DESC_BYTE_INDEXED_OPAQUE(default, null) : String;
	
	/**
	* Special Gray Scale types for rendering loops.  Really indexed
	* types, but colormap has all gray values.
	*/
	@:public @:static @:final public static var DESC_INDEX8_GRAY(default, null) : String;
	
	@:public @:static @:final public static var DESC_INDEX12_GRAY(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_BINARY_1BIT(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_BINARY_2BIT(default, null) : String;
	
	@:public @:static @:final public static var DESC_BYTE_BINARY_4BIT(default, null) : String;
	
	/**
	* Special type for describing the sources of loops that render the
	* current foreground color or paint instead of copying colors from
	* a source surface.
	*/
	@:public @:static @:final public static var DESC_ANY_PAINT(default, null) : String;
	
	@:public @:static @:final public static var DESC_ANY_COLOR(default, null) : String;
	
	@:public @:static @:final public static var DESC_OPAQUE_COLOR(default, null) : String;
	
	@:public @:static @:final public static var DESC_GRADIENT_PAINT(default, null) : String;
	
	@:public @:static @:final public static var DESC_OPAQUE_GRADIENT_PAINT(default, null) : String;
	
	@:public @:static @:final public static var DESC_TEXTURE_PAINT(default, null) : String;
	
	@:public @:static @:final public static var DESC_OPAQUE_TEXTURE_PAINT(default, null) : String;
	
	@:public @:static @:final public static var DESC_LINEAR_GRADIENT_PAINT(default, null) : String;
	
	@:public @:static @:final public static var DESC_OPAQUE_LINEAR_GRADIENT_PAINT(default, null) : String;
	
	@:public @:static @:final public static var DESC_RADIAL_GRADIENT_PAINT(default, null) : String;
	
	@:public @:static @:final public static var DESC_OPAQUE_RADIAL_GRADIENT_PAINT(default, null) : String;
	
	/**
	* The root SurfaceType object for all chains of surface descriptions.
	* The root uses the default PixelConverter object, which uses a given
	* ColorModel object to calculate its pixelFor() values when asked.
	* Any SurfaceType objects that are not created with a specific
	* PixelConverter object will inherit this behavior from the root.
	*/
	@:public @:static @:final public static var Any(default, null) : sun.java2d.loops.SurfaceType;
	
	/*
	* START OF SurfaceType OBJECTS FOR THE VARIOUS CONSTANTS
	*/
	@:public @:static @:final public static var AnyInt(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var AnyShort(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var AnyByte(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var AnyByteBinary(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Any3Byte(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Any4Byte(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var AnyDcm(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Custom(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntRgb(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntArgb(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntArgbPre(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntBgr(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ThreeByteBgr(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var FourByteAbgr(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var FourByteAbgrPre(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Ushort565Rgb(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Ushort555Rgb(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Ushort555Rgbx(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Ushort4444Argb(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var UshortIndexed(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteGray(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var UshortGray(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteBinary1Bit(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteBinary2Bit(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteBinary4Bit(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteIndexed(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntRgbx(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntBgrx(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ThreeByteRgb(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var IntArgbBm(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteIndexedBm(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var ByteIndexedOpaque(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Index8Gray(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var Index12Gray(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var AnyPaint(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var AnyColor(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var OpaqueColor(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var GradientPaint(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var OpaqueGradientPaint(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var LinearGradientPaint(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var OpaqueLinearGradientPaint(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var RadialGradientPaint(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var OpaqueRadialGradientPaint(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var TexturePaint(default, null) : sun.java2d.loops.SurfaceType;
	
	@:public @:static @:final public static var OpaqueTexturePaint(default, null) : sun.java2d.loops.SurfaceType;
	
	/**
	* Return a new SurfaceType object which uses this object as its
	* more general "supertype" descriptor.  If no operation can be
	* found that manipulates the type of surface described more exactly
	* by desc, then this object will define the more relaxed specification
	* of the surface that can be used to find a more general operator.
	*/
	@:overload @:public public function deriveSubType(desc : String) : sun.java2d.loops.SurfaceType;
	
	@:overload @:public public function deriveSubType(desc : String, pixelConverter : sun.awt.image.PixelConverter) : sun.java2d.loops.SurfaceType;
	
	@:protected private var pixelConverter : sun.awt.image.PixelConverter;
	
	@:overload @:public @:synchronized @:static @:final public static function makeUniqueID(desc : String) : Int;
	
	@:overload @:public public function getUniqueID() : Int;
	
	@:overload @:public public function getDescriptor() : String;
	
	@:overload @:public public function getSuperType() : sun.java2d.loops.SurfaceType;
	
	@:overload @:public public function getPixelConverter() : sun.awt.image.PixelConverter;
	
	@:overload @:public public function pixelFor(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload @:public public function rgbFor(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload @:public public function getAlphaMask() : Int;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function toString() : String;
	
	
}
