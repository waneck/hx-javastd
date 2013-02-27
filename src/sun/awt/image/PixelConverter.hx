package sun.awt.image;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class PixelConverter
{
	/**
	* Default object, used as a fallback for any surface types where
	* we do not know enough about the surface to calculate the
	* conversions directly.  We use the ColorModel object to assist
	* us in these cases.
	*/
	public static var instance(default, null) : PixelConverter;
	
	private var alphaMask : Int;
	
	@:overload private function new() : Void;
	
	@:overload public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload @:final public function getAlphaMask() : Int;
	
	
}
/**
* Subclasses of PixelConverter.  These subclasses are
* specific to surface types where we can definitively
* calculate the conversions.  Note that some conversions
* are lossy; that is, we cannot necessarily convert a
* value and then convert it back and wind up with the
* original value.  For example, an rgb value  that has
* an alpha != 1 cannot be converted to an Xrgb pixel
* without losing the information in the alpha component.
*
* The conversion strategies associated with the ThreeByte*
* and FourByte* surface types swap the components around
* due to the ordering used when the bytes are stored.  The
* low order byte of a packed-byte pixel will be the first
* byte stored and the high order byte will be the last byte
* stored.  For example, the ThreeByteBgr surface type is
* associated with an Xrgb conversion object because the
* three bytes are stored as follows:
*   pixels[0] = b;    // low order byte of an Xrgb pixel
*   pixels[1] = g;
*   pixels[2] = r;    // high order byte of an Xrgb pixel
*/
@:native('sun$awt$image$PixelConverter$Rgbx') extern class PixelConverter_Rgbx extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Xrgb') extern class PixelConverter_Xrgb extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Argb') extern class PixelConverter_Argb extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Ushort565Rgb') extern class PixelConverter_Ushort565Rgb extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Ushort555Rgbx') extern class PixelConverter_Ushort555Rgbx extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Ushort555Rgb') extern class PixelConverter_Ushort555Rgb extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Ushort4444Argb') extern class PixelConverter_Ushort4444Argb extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Xbgr') extern class PixelConverter_Xbgr extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Bgrx') extern class PixelConverter_Bgrx extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$Rgba') extern class PixelConverter_Rgba extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$RgbaPre') extern class PixelConverter_RgbaPre extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$ArgbPre') extern class PixelConverter_ArgbPre extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$ArgbBm') extern class PixelConverter_ArgbBm extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$ByteGray') extern class PixelConverter_ByteGray extends PixelConverter
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
@:native('sun$awt$image$PixelConverter$UshortGray') extern class PixelConverter_UshortGray extends PixelConverter_ByteGray
{
	public static var instance(default, null) : PixelConverter;
	
	@:overload override public function rgbToPixel(rgb : Int, cm : java.awt.image.ColorModel) : Int;
	
	@:overload override public function pixelToRgb(pixel : Int, cm : java.awt.image.ColorModel) : Int;
	
	
}
