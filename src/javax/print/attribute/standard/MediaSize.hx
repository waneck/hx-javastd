package javax.print.attribute.standard;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MediaSize extends javax.print.attribute.Size2DSyntax implements javax.print.attribute.Attribute
{
	/**
	* Construct a new media size attribute from the given floating-point
	* values.
	*
	* @param  x  X dimension.
	* @param  y  Y dimension.
	* @param  units
	*     Unit conversion factor, e.g. <CODE>Size2DSyntax.INCH</CODE> or
	*     <CODE>Size2DSyntax.MM</CODE>.
	*
	* @exception  IllegalArgumentException
	*   (Unchecked exception) Thrown if <CODE>x</CODE> < 0 or <CODE>y</CODE>
	*     < 0 or <CODE>units</CODE> < 1 or <CODE>x</CODE> > <CODE>y</CODE>.
	*/
	@:overload public function new(x : Single, y : Single, units : Int) : Void;
	
	/**
	* Construct a new media size attribute from the given integer values.
	*
	* @param  x  X dimension.
	* @param  y  Y dimension.
	* @param  units
	*     Unit conversion factor, e.g. <CODE>Size2DSyntax.INCH</CODE> or
	*     <CODE>Size2DSyntax.MM</CODE>.
	*
	* @exception  IllegalArgumentException
	*   (Unchecked exception) Thrown if <CODE>x</CODE> < 0 or <CODE>y</CODE>
	*     < 0 or <CODE>units</CODE> < 1 or <CODE>x</CODE> > <CODE>y</CODE>.
	*/
	@:overload public function new(x : Int, y : Int, units : Int) : Void;
	
	/**
	* Construct a new media size attribute from the given floating-point
	* values.
	*
	* @param  x  X dimension.
	* @param  y  Y dimension.
	* @param  units
	*     Unit conversion factor, e.g. <CODE>Size2DSyntax.INCH</CODE> or
	*     <CODE>Size2DSyntax.MM</CODE>.
	* @param media a media name to associate with this MediaSize
	*
	* @exception  IllegalArgumentException
	*   (Unchecked exception) Thrown if <CODE>x</CODE> < 0 or <CODE>y</CODE>
	*     < 0 or <CODE>units</CODE> < 1 or <CODE>x</CODE> > <CODE>y</CODE>.
	*/
	@:overload public function new(x : Single, y : Single, units : Int, media : javax.print.attribute.standard.MediaSizeName) : Void;
	
	/**
	* Construct a new media size attribute from the given integer values.
	*
	* @param  x  X dimension.
	* @param  y  Y dimension.
	* @param  units
	*     Unit conversion factor, e.g. <CODE>Size2DSyntax.INCH</CODE> or
	*     <CODE>Size2DSyntax.MM</CODE>.
	* @param media a media name to associate with this MediaSize
	*
	* @exception  IllegalArgumentException
	*   (Unchecked exception) Thrown if <CODE>x</CODE> < 0 or <CODE>y</CODE>
	*     < 0 or <CODE>units</CODE> < 1 or <CODE>x</CODE> > <CODE>y</CODE>.
	*/
	@:overload public function new(x : Int, y : Int, units : Int, media : javax.print.attribute.standard.MediaSizeName) : Void;
	
	/**
	* Get the media name, if any, for this size.
	*
	* @return the name for this media size, or null if no name was
	* associated with this size (an anonymous size).
	*/
	@:overload public function getMediaSizeName() : javax.print.attribute.standard.MediaSizeName;
	
	/**
	* Get the MediaSize for the specified named media.
	*
	* @param media - the name of the media for which the size is sought
	* @return size of the media, or null if this media is not associated
	* with any size.
	*/
	@:overload public static function getMediaSizeForName(media : javax.print.attribute.standard.MediaSizeName) : javax.print.attribute.standard.MediaSize;
	
	/**
	* The specified dimensions are used to locate a matching MediaSize
	* instance from amongst all the standard MediaSize instances.
	* If there is no exact match, the closest match is used.
	* <p>
	* The MediaSize is in turn used to locate the MediaSizeName object.
	* This method may return null if the closest matching MediaSize
	* has no corresponding Media instance.
	* <p>
	* This method is useful for clients which have only dimensions and
	* want to find a Media which corresponds to the dimensions.
	* @param x - X dimension
	* @param y - Y dimension.
	* @param  units
	*     Unit conversion factor, e.g. <CODE>Size2DSyntax.INCH</CODE> or
	*     <CODE>Size2DSyntax.MM</CODE>
	* @return MediaSizeName matching these dimensions, or null.
	* @exception IllegalArgumentException if x <= 0, y <= 0, or units < 1
	*
	*/
	@:overload public static function findMedia(x : Single, y : Single, units : Int) : javax.print.attribute.standard.MediaSizeName;
	
	/**
	* Returns whether this media size attribute is equivalent to the passed
	* in object.
	* To be equivalent, all of the following conditions must be true:
	* <OL TYPE=1>
	* <LI>
	* <CODE>object</CODE> is not null.
	* <LI>
	* <CODE>object</CODE> is an instance of class MediaSize.
	* <LI>
	* This media size attribute's X dimension is equal to
	* <CODE>object</CODE>'s X dimension.
	* <LI>
	* This media size attribute's Y dimension is equal to
	* <CODE>object</CODE>'s Y dimension.
	* </OL>
	*
	* @param  object  Object to compare to.
	*
	* @return  True if <CODE>object</CODE> is equivalent to this media size
	*          attribute, false otherwise.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Get the printing attribute class which is to be used as the "category"
	* for this printing attribute value.
	* <P>
	* For class MediaSize and any vendor-defined subclasses, the category is
	* class MediaSize itself.
	*
	* @return  Printing attribute class (category), an instance of class
	*          {@link java.lang.Class java.lang.Class}.
	*/
	@:overload @:final public function getCategory() : Class<javax.print.attribute.Attribute>;
	
	/**
	* Get the name of the category of which this attribute value is an
	* instance.
	* <P>
	* For class MediaSize and any vendor-defined subclasses, the category
	* name is <CODE>"media-size"</CODE>.
	*
	* @return  Attribute category name.
	*/
	@:overload @:final public function getName() : String;
	
	
}
/**
* Class MediaSize.ISO includes {@link MediaSize MediaSize} values for ISO
* media.
* <P>
*/
@:native('javax$print$attribute$standard$MediaSize$ISO') extern class MediaSize_ISO
{
	/**
	* Specifies the ISO A0 size, 841 mm by 1189 mm.
	*/
	public static var A0(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A1 size, 594 mm by 841 mm.
	*/
	public static var A1(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A2 size, 420 mm by 594 mm.
	*/
	public static var A2(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A3 size, 297 mm by 420 mm.
	*/
	public static var A3(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A4 size, 210 mm by 297 mm.
	*/
	public static var A4(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A5 size, 148 mm by 210 mm.
	*/
	public static var A5(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A6 size, 105 mm by 148 mm.
	*/
	public static var A6(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A7 size, 74 mm by 105 mm.
	*/
	public static var A7(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A8 size, 52 mm by 74 mm.
	*/
	public static var A8(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A9 size, 37 mm by 52 mm.
	*/
	public static var A9(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO A10 size, 26 mm by 37 mm.
	*/
	public static var A10(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B0 size, 1000 mm by 1414 mm.
	*/
	public static var B0(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B1 size, 707 mm by 1000 mm.
	*/
	public static var B1(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B2 size, 500 mm by 707 mm.
	*/
	public static var B2(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B3 size, 353 mm by 500 mm.
	*/
	public static var B3(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B4 size, 250 mm by 353 mm.
	*/
	public static var B4(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B5 size, 176 mm by 250 mm.
	*/
	public static var B5(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B6 size, 125 mm by 176 mm.
	*/
	public static var B6(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B7 size, 88 mm by 125 mm.
	*/
	public static var B7(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B8 size, 62 mm by 88 mm.
	*/
	public static var B8(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B9 size, 44 mm by 62 mm.
	*/
	public static var B9(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO B10 size, 31 mm by 44 mm.
	*/
	public static var B10(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO C3 size, 324 mm by 458 mm.
	*/
	public static var C3(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO C4 size, 229 mm by 324 mm.
	*/
	public static var C4(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO C5 size, 162 mm by 229 mm.
	*/
	public static var C5(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO C6 size, 114 mm by 162 mm.
	*/
	public static var C6(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ISO Designated Long size, 110 mm by 220 mm.
	*/
	public static var DESIGNATED_LONG(default, null) : javax.print.attribute.standard.MediaSize;
	
	
}
/**
* Class MediaSize.JIS includes {@link MediaSize MediaSize} values for JIS
* (Japanese) media.      *
*/
@:native('javax$print$attribute$standard$MediaSize$JIS') extern class MediaSize_JIS
{
	/**
	* Specifies the JIS B0 size, 1030 mm by 1456 mm.
	*/
	public static var B0(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B1 size, 728 mm by 1030 mm.
	*/
	public static var B1(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B2 size, 515 mm by 728 mm.
	*/
	public static var B2(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B3 size, 364 mm by 515 mm.
	*/
	public static var B3(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B4 size, 257 mm by 364 mm.
	*/
	public static var B4(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B5 size, 182 mm by 257 mm.
	*/
	public static var B5(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B6 size, 128 mm by 182 mm.
	*/
	public static var B6(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B7 size, 91 mm by 128 mm.
	*/
	public static var B7(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B8 size, 64 mm by 91 mm.
	*/
	public static var B8(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B9 size, 45 mm by 64 mm.
	*/
	public static var B9(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS B10 size, 32 mm by 45 mm.
	*/
	public static var B10(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Chou ("long") #1 envelope size, 142 mm by 332 mm.
	*/
	public static var CHOU_1(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Chou ("long") #2 envelope size, 119 mm by 277 mm.
	*/
	public static var CHOU_2(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Chou ("long") #3 envelope size, 120 mm by 235 mm.
	*/
	public static var CHOU_3(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Chou ("long") #4 envelope size, 90 mm by 205 mm.
	*/
	public static var CHOU_4(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Chou ("long") #30 envelope size, 92 mm by 235 mm.
	*/
	public static var CHOU_30(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Chou ("long") #40 envelope size, 90 mm by 225 mm.
	*/
	public static var CHOU_40(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #0 envelope size, 287 mm by 382 mm.
	*/
	public static var KAKU_0(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #1 envelope size, 270 mm by 382 mm.
	*/
	public static var KAKU_1(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #2 envelope size, 240 mm by 332 mm.
	*/
	public static var KAKU_2(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #3 envelope size, 216 mm by 277 mm.
	*/
	public static var KAKU_3(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #4 envelope size, 197 mm by 267 mm.
	*/
	public static var KAKU_4(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #5 envelope size, 190 mm by 240 mm.
	*/
	public static var KAKU_5(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #6 envelope size, 162 mm by 229 mm.
	*/
	public static var KAKU_6(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #7 envelope size, 142 mm by 205 mm.
	*/
	public static var KAKU_7(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #8 envelope size, 119 mm by 197 mm.
	*/
	public static var KAKU_8(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") #20 envelope size, 229 mm by 324 mm.
	*/
	public static var KAKU_20(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS Kaku ("square") A4 envelope size, 228 mm by 312 mm.
	*/
	public static var KAKU_A4(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS You ("Western") #1 envelope size, 120 mm by 176 mm.
	*/
	public static var YOU_1(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS You ("Western") #2 envelope size, 114 mm by 162 mm.
	*/
	public static var YOU_2(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS You ("Western") #3 envelope size, 98 mm by 148 mm.
	*/
	public static var YOU_3(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS You ("Western") #4 envelope size, 105 mm by 235 mm.
	*/
	public static var YOU_4(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS You ("Western") #5 envelope size, 95 mm by 217 mm.
	*/
	public static var YOU_5(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS You ("Western") #6 envelope size, 98 mm by 190 mm.
	*/
	public static var YOU_6(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the JIS You ("Western") #7 envelope size, 92 mm by 165 mm.
	*/
	public static var YOU_7(default, null) : javax.print.attribute.standard.MediaSize;
	
	
}
/**
* Class MediaSize.NA includes {@link MediaSize MediaSize} values for North
* American media.
*/
@:native('javax$print$attribute$standard$MediaSize$NA') extern class MediaSize_NA
{
	/**
	* Specifies the North American letter size, 8.5 inches by 11 inches.
	*/
	public static var LETTER(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American legal size, 8.5 inches by 14 inches.
	*/
	public static var LEGAL(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 5 inch by 7 inch paper.
	*/
	public static var NA_5X7(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 8 inch by 10 inch paper.
	*/
	public static var NA_8X10(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American Number 9 business envelope size,
	* 3.875 inches by 8.875 inches.
	*/
	public static var NA_NUMBER_9_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American Number 10 business envelope size,
	* 4.125 inches by 9.5 inches.
	*/
	public static var NA_NUMBER_10_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American Number 11 business envelope size,
	* 4.5 inches by 10.375 inches.
	*/
	public static var NA_NUMBER_11_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American Number 12 business envelope size,
	* 4.75 inches by 11 inches.
	*/
	public static var NA_NUMBER_12_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American Number 14 business envelope size,
	* 5 inches by 11.5 inches.
	*/
	public static var NA_NUMBER_14_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 6 inch by 9 inch envelope size.
	*/
	public static var NA_6X9_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 7 inch by 9 inch envelope size.
	*/
	public static var NA_7X9_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 9 inch by 11 inch envelope size.
	*/
	public static var NA_9x11_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 9 inch by 12 inch envelope size.
	*/
	public static var NA_9x12_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 10 inch by 13 inch envelope size.
	*/
	public static var NA_10x13_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 10 inch by 14 inch envelope size.
	*/
	public static var NA_10x14_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the North American 10 inch by 15 inch envelope size.
	*/
	public static var NA_10X15_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	
}
/**
* Class MediaSize.Engineering includes {@link MediaSize MediaSize} values
* for engineering media.
*/
@:native('javax$print$attribute$standard$MediaSize$Engineering') extern class MediaSize_Engineering
{
	/**
	* Specifies the engineering A size, 8.5 inch by 11 inch.
	*/
	public static var A(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the engineering B size, 11 inch by 17 inch.
	*/
	public static var B(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the engineering C size, 17 inch by 22 inch.
	*/
	public static var C(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the engineering D size, 22 inch by 34 inch.
	*/
	public static var D(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the engineering E size, 34 inch by 44 inch.
	*/
	public static var E(default, null) : javax.print.attribute.standard.MediaSize;
	
	
}
/**
* Class MediaSize.Other includes {@link MediaSize MediaSize} values for
* miscellaneous media.
*/
@:native('javax$print$attribute$standard$MediaSize$Other') extern class MediaSize_Other
{
	/**
	* Specifies the executive size, 7.25 inches by 10.5 inches.
	*/
	public static var EXECUTIVE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the ledger size, 11 inches by 17 inches.
	*/
	public static var LEDGER(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the tabloid size, 11 inches by 17 inches.
	* @since 1.5
	*/
	@:require(java5) public static var TABLOID(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the invoice size, 5.5 inches by 8.5 inches.
	*/
	public static var INVOICE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the folio size, 8.5 inches by 13 inches.
	*/
	public static var FOLIO(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the quarto size, 8.5 inches by 10.83 inches.
	*/
	public static var QUARTO(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the Italy envelope size, 110 mm by 230 mm.
	*/
	public static var ITALY_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the Monarch envelope size, 3.87 inch by 7.5 inch.
	*/
	public static var MONARCH_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the Personal envelope size, 3.625 inch by 6.5 inch.
	*/
	public static var PERSONAL_ENVELOPE(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the Japanese postcard size, 100 mm by 148 mm.
	*/
	public static var JAPANESE_POSTCARD(default, null) : javax.print.attribute.standard.MediaSize;
	
	/**
	* Specifies the Japanese Double postcard size, 148 mm by 200 mm.
	*/
	public static var JAPANESE_DOUBLE_POSTCARD(default, null) : javax.print.attribute.standard.MediaSize;
	
	
}
