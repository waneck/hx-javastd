package java.awt;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PageAttributes implements java.lang.Cloneable
{
	/**
	* Constructs a PageAttributes instance with default values for every
	* attribute.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a PageAttributes instance which is a copy of the supplied
	* PageAttributes.
	*
	* @param   obj the PageAttributes to copy.
	*/
	@:overload @:public public function new(obj : java.awt.PageAttributes) : Void;
	
	/**
	* Constructs a PageAttributes instance with the specified values for
	* every attribute.
	*
	* @param   color ColorType.COLOR or ColorType.MONOCHROME.
	* @param   media one of the constant fields of the MediaType class.
	* @param   orientationRequested OrientationRequestedType.PORTRAIT or
	*          OrientationRequestedType.LANDSCAPE.
	* @param   origin OriginType.PHYSICAL or OriginType.PRINTABLE
	* @param   printQuality PrintQualityType.DRAFT, PrintQualityType.NORMAL,
	*          or PrintQualityType.HIGH
	* @param   printerResolution an integer array of 3 elements. The first
	*          element must be greater than 0. The second element must be
	*          must be greater than 0. The third element must be either
	*          <code>3</code> or <code>4</code>.
	* @throws  IllegalArgumentException if one or more of the above
	*          conditions is violated.
	*/
	@:overload @:public public function new(color : java.awt.PageAttributes.PageAttributes_ColorType, media : java.awt.PageAttributes.PageAttributes_MediaType, orientationRequested : java.awt.PageAttributes.PageAttributes_OrientationRequestedType, origin : java.awt.PageAttributes.PageAttributes_OriginType, printQuality : java.awt.PageAttributes.PageAttributes_PrintQualityType, printerResolution : java.NativeArray<Int>) : Void;
	
	/**
	* Creates and returns a copy of this PageAttributes.
	*
	* @return  the newly created copy. It is safe to cast this Object into
	*          a PageAttributes.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Sets all of the attributes of this PageAttributes to the same values as
	* the attributes of obj.
	*
	* @param   obj the PageAttributes to copy.
	*/
	@:overload @:public public function set(obj : java.awt.PageAttributes) : Void;
	
	/**
	* Returns whether pages using these attributes will be rendered in
	* color or monochrome. This attribute is updated to the value chosen
	* by the user.
	*
	* @return  ColorType.COLOR or ColorType.MONOCHROME.
	*/
	@:overload @:public public function getColor() : java.awt.PageAttributes.PageAttributes_ColorType;
	
	/**
	* Specifies whether pages using these attributes will be rendered in
	* color or monochrome. Not specifying this attribute is equivalent to
	* specifying ColorType.MONOCHROME.
	*
	* @param   color ColorType.COLOR or ColorType.MONOCHROME.
	* @throws  IllegalArgumentException if color is null.
	*/
	@:overload @:public public function setColor(color : java.awt.PageAttributes.PageAttributes_ColorType) : Void;
	
	/**
	* Returns the paper size for pages using these attributes. This
	* attribute is updated to the value chosen by the user.
	*
	* @return  one of the constant fields of the MediaType class.
	*/
	@:overload @:public public function getMedia() : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* Specifies the desired paper size for pages using these attributes. The
	* actual paper size will be determined by the limitations of the target
	* printer. If an exact match cannot be found, an implementation will
	* choose the closest possible match. Not specifying this attribute is
	* equivalent to specifying the default size for the default locale. The
	* default size for locales in the United States and Canada is
	* MediaType.NA_LETTER. The default size for all other locales is
	* MediaType.ISO_A4.
	*
	* @param   media one of the constant fields of the MediaType class.
	* @throws  IllegalArgumentException if media is null.
	*/
	@:overload @:public public function setMedia(media : java.awt.PageAttributes.PageAttributes_MediaType) : Void;
	
	/**
	* Sets the paper size for pages using these attributes to the default
	* size for the default locale. The default size for locales in the
	* United States and Canada is MediaType.NA_LETTER. The default size for
	* all other locales is MediaType.ISO_A4.
	*/
	@:overload @:public public function setMediaToDefault() : Void;
	
	/**
	* Returns the print orientation for pages using these attributes. This
	* attribute is updated to the value chosen by the user.
	*
	* @return  OrientationRequestedType.PORTRAIT or
	*          OrientationRequestedType.LANDSCAPE.
	*/
	@:overload @:public public function getOrientationRequested() : java.awt.PageAttributes.PageAttributes_OrientationRequestedType;
	
	/**
	* Specifies the print orientation for pages using these attributes. Not
	* specifying the property is equivalent to specifying
	* OrientationRequestedType.PORTRAIT.
	*
	* @param   orientationRequested OrientationRequestedType.PORTRAIT or
	*          OrientationRequestedType.LANDSCAPE.
	* @throws  IllegalArgumentException if orientationRequested is null.
	*/
	@:overload @:public public function setOrientationRequested(orientationRequested : java.awt.PageAttributes.PageAttributes_OrientationRequestedType) : Void;
	
	/**
	* Specifies the print orientation for pages using these attributes.
	* Specifying <code>3</code> denotes portrait. Specifying <code>4</code>
	* denotes landscape. Specifying any other value will generate an
	* IllegalArgumentException. Not specifying the property is equivalent
	* to calling setOrientationRequested(OrientationRequestedType.PORTRAIT).
	*
	* @param   orientationRequested <code>3</code> or <code>4</code>
	* @throws  IllegalArgumentException if orientationRequested is not
	*          <code>3</code> or <code>4</code>
	*/
	@:overload @:public public function setOrientationRequested(orientationRequested : Int) : Void;
	
	/**
	* Sets the print orientation for pages using these attributes to the
	* default. The default orientation is portrait.
	*/
	@:overload @:public public function setOrientationRequestedToDefault() : Void;
	
	/**
	* Returns whether drawing at (0, 0) to pages using these attributes
	* draws at the upper-left corner of the physical page, or at the
	* upper-left corner of the printable area. (Note that these locations
	* could be equivalent.) This attribute cannot be modified by,
	* and is not subject to any limitations of, the implementation or the
	* target printer.
	*
	* @return  OriginType.PHYSICAL or OriginType.PRINTABLE
	*/
	@:overload @:public public function getOrigin() : java.awt.PageAttributes.PageAttributes_OriginType;
	
	/**
	* Specifies whether drawing at (0, 0) to pages using these attributes
	* draws at the upper-left corner of the physical page, or at the
	* upper-left corner of the printable area. (Note that these locations
	* could be equivalent.) Not specifying the property is equivalent to
	* specifying OriginType.PHYSICAL.
	*
	* @param   origin OriginType.PHYSICAL or OriginType.PRINTABLE
	* @throws  IllegalArgumentException if origin is null.
	*/
	@:overload @:public public function setOrigin(origin : java.awt.PageAttributes.PageAttributes_OriginType) : Void;
	
	/**
	* Returns the print quality for pages using these attributes. This
	* attribute is updated to the value chosen by the user.
	*
	* @return  PrintQualityType.DRAFT, PrintQualityType.NORMAL, or
	*          PrintQualityType.HIGH
	*/
	@:overload @:public public function getPrintQuality() : java.awt.PageAttributes.PageAttributes_PrintQualityType;
	
	/**
	* Specifies the print quality for pages using these attributes. Not
	* specifying the property is equivalent to specifying
	* PrintQualityType.NORMAL.
	*
	* @param   printQuality PrintQualityType.DRAFT, PrintQualityType.NORMAL,
	*          or PrintQualityType.HIGH
	* @throws  IllegalArgumentException if printQuality is null.
	*/
	@:overload @:public public function setPrintQuality(printQuality : java.awt.PageAttributes.PageAttributes_PrintQualityType) : Void;
	
	/**
	* Specifies the print quality for pages using these attributes.
	* Specifying <code>3</code> denotes draft. Specifying <code>4</code>
	* denotes normal. Specifying <code>5</code> denotes high. Specifying
	* any other value will generate an IllegalArgumentException. Not
	* specifying the property is equivalent to calling
	* setPrintQuality(PrintQualityType.NORMAL).
	*
	* @param   printQuality <code>3</code>, <code>4</code>, or <code>5</code>
	* @throws  IllegalArgumentException if printQuality is not <code>3
	*          </code>, <code>4</code>, or <code>5</code>
	*/
	@:overload @:public public function setPrintQuality(printQuality : Int) : Void;
	
	/**
	* Sets the print quality for pages using these attributes to the default.
	* The default print quality is normal.
	*/
	@:overload @:public public function setPrintQualityToDefault() : Void;
	
	/**
	* Returns the print resolution for pages using these attributes.
	* Index 0 of the array specifies the cross feed direction resolution
	* (typically the horizontal resolution). Index 1 of the array specifies
	* the feed direction resolution (typically the vertical resolution).
	* Index 2 of the array specifies whether the resolutions are in dots per
	* inch or dots per centimeter. <code>3</code> denotes dots per inch.
	* <code>4</code> denotes dots per centimeter.
	*
	* @return  an integer array of 3 elements. The first
	*          element must be greater than 0. The second element must be
	*          must be greater than 0. The third element must be either
	*          <code>3</code> or <code>4</code>.
	*/
	@:overload @:public public function getPrinterResolution() : java.NativeArray<Int>;
	
	/**
	* Specifies the desired print resolution for pages using these attributes.
	* The actual resolution will be determined by the limitations of the
	* implementation and the target printer. Index 0 of the array specifies
	* the cross feed direction resolution (typically the horizontal
	* resolution). Index 1 of the array specifies the feed direction
	* resolution (typically the vertical resolution). Index 2 of the array
	* specifies whether the resolutions are in dots per inch or dots per
	* centimeter. <code>3</code> denotes dots per inch. <code>4</code>
	* denotes dots per centimeter. Note that the 1.1 printing implementation
	* (Toolkit.getPrintJob) requires that the feed and cross feed resolutions
	* be the same. Not specifying the property is equivalent to calling
	* setPrinterResolution(72).
	*
	* @param   printerResolution an integer array of 3 elements. The first
	*          element must be greater than 0. The second element must be
	*          must be greater than 0. The third element must be either
	*          <code>3</code> or <code>4</code>.
	* @throws  IllegalArgumentException if one or more of the above
	*          conditions is violated.
	*/
	@:overload @:public public function setPrinterResolution(printerResolution : java.NativeArray<Int>) : Void;
	
	/**
	* Specifies the desired cross feed and feed print resolutions in dots per
	* inch for pages using these attributes. The same value is used for both
	* resolutions. The actual resolutions will be determined by the
	* limitations of the implementation and the target printer. Not
	* specifying the property is equivalent to specifying <code>72</code>.
	*
	* @param   printerResolution an integer greater than 0.
	* @throws  IllegalArgumentException if printerResolution is less than or
	*          equal to 0.
	*/
	@:overload @:public public function setPrinterResolution(printerResolution : Int) : Void;
	
	/**
	* Sets the printer resolution for pages using these attributes to the
	* default. The default is 72 dpi for both the feed and cross feed
	* resolutions.
	*/
	@:overload @:public public function setPrinterResolutionToDefault() : Void;
	
	/**
	* Determines whether two PageAttributes are equal to each other.
	* <p>
	* Two PageAttributes are equal if and only if each of their attributes are
	* equal. Attributes of enumeration type are equal if and only if the
	* fields refer to the same unique enumeration object. This means that
	* an aliased media is equal to its underlying unique media. Printer
	* resolutions are equal if and only if the feed resolution, cross feed
	* resolution, and units are equal.
	*
	* @param   obj the object whose equality will be checked.
	* @return  whether obj is equal to this PageAttribute according to the
	*          above criteria.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this PageAttributes.
	*
	* @return  the hash code.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string representation of this PageAttributes.
	*
	* @return  the string representation.
	*/
	@:overload @:public public function toString() : String;
	
	
}
/**
* A type-safe enumeration of possible color states.
* @since 1.3
*/
@:require(java3) @:native('java$awt$PageAttributes$ColorType') extern class PageAttributes_ColorType extends java.awt.AttributeValue
{
	/**
	* The ColorType instance to use for specifying color printing.
	*/
	@:public @:static @:final public static var COLOR(default, null) : java.awt.PageAttributes.PageAttributes_ColorType;
	
	/**
	* The ColorType instance to use for specifying monochrome printing.
	*/
	@:public @:static @:final public static var MONOCHROME(default, null) : java.awt.PageAttributes.PageAttributes_ColorType;
	
	
}
/**
* A type-safe enumeration of possible paper sizes. These sizes are in
* compliance with IPP 1.1.
* @since 1.3
*/
@:require(java3) @:native('java$awt$PageAttributes$MediaType') extern class PageAttributes_MediaType extends java.awt.AttributeValue
{
	/**
	* The MediaType instance for ISO/DIN & JIS 4A0, 1682 x 2378 mm.
	*/
	@:public @:static @:final public static var ISO_4A0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS 2A0, 1189 x 1682 mm.
	*/
	@:public @:static @:final public static var ISO_2A0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A0, 841 x 1189 mm.
	*/
	@:public @:static @:final public static var ISO_A0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A1, 594 x 841 mm.
	*/
	@:public @:static @:final public static var ISO_A1(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A2, 420 x 594 mm.
	*/
	@:public @:static @:final public static var ISO_A2(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A3, 297 x 420 mm.
	*/
	@:public @:static @:final public static var ISO_A3(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A4, 210 x 297 mm.
	*/
	@:public @:static @:final public static var ISO_A4(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A5, 148 x 210 mm.
	*/
	@:public @:static @:final public static var ISO_A5(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A6, 105 x 148 mm.
	*/
	@:public @:static @:final public static var ISO_A6(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A7, 74 x 105 mm.
	*/
	@:public @:static @:final public static var ISO_A7(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A8, 52 x 74 mm.
	*/
	@:public @:static @:final public static var ISO_A8(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A9, 37 x 52 mm.
	*/
	@:public @:static @:final public static var ISO_A9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN & JIS A10, 26 x 37 mm.
	*/
	@:public @:static @:final public static var ISO_A10(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B0, 1000 x 1414 mm.
	*/
	@:public @:static @:final public static var ISO_B0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B1, 707 x 1000 mm.
	*/
	@:public @:static @:final public static var ISO_B1(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B2, 500 x 707 mm.
	*/
	@:public @:static @:final public static var ISO_B2(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B3, 353 x 500 mm.
	*/
	@:public @:static @:final public static var ISO_B3(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B4, 250 x 353 mm.
	*/
	@:public @:static @:final public static var ISO_B4(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B5, 176 x 250 mm.
	*/
	@:public @:static @:final public static var ISO_B5(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B6, 125 x 176 mm.
	*/
	@:public @:static @:final public static var ISO_B6(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B7, 88 x 125 mm.
	*/
	@:public @:static @:final public static var ISO_B7(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B8, 62 x 88 mm.
	*/
	@:public @:static @:final public static var ISO_B8(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B9, 44 x 62 mm.
	*/
	@:public @:static @:final public static var ISO_B9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN B10, 31 x 44 mm.
	*/
	@:public @:static @:final public static var ISO_B10(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B0, 1030 x 1456 mm.
	*/
	@:public @:static @:final public static var JIS_B0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B1, 728 x 1030 mm.
	*/
	@:public @:static @:final public static var JIS_B1(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B2, 515 x 728 mm.
	*/
	@:public @:static @:final public static var JIS_B2(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B3, 364 x 515 mm.
	*/
	@:public @:static @:final public static var JIS_B3(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B4, 257 x 364 mm.
	*/
	@:public @:static @:final public static var JIS_B4(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B5, 182 x 257 mm.
	*/
	@:public @:static @:final public static var JIS_B5(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B6, 128 x 182 mm.
	*/
	@:public @:static @:final public static var JIS_B6(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B7, 91 x 128 mm.
	*/
	@:public @:static @:final public static var JIS_B7(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B8, 64 x 91 mm.
	*/
	@:public @:static @:final public static var JIS_B8(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B9, 45 x 64 mm.
	*/
	@:public @:static @:final public static var JIS_B9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for JIS B10, 32 x 45 mm.
	*/
	@:public @:static @:final public static var JIS_B10(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C0, 917 x 1297 mm.
	*/
	@:public @:static @:final public static var ISO_C0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C1, 648 x 917 mm.
	*/
	@:public @:static @:final public static var ISO_C1(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C2, 458 x 648 mm.
	*/
	@:public @:static @:final public static var ISO_C2(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C3, 324 x 458 mm.
	*/
	@:public @:static @:final public static var ISO_C3(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C4, 229 x 324 mm.
	*/
	@:public @:static @:final public static var ISO_C4(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C5, 162 x 229 mm.
	*/
	@:public @:static @:final public static var ISO_C5(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C6, 114 x 162 mm.
	*/
	@:public @:static @:final public static var ISO_C6(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C7, 81 x 114 mm.
	*/
	@:public @:static @:final public static var ISO_C7(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C8, 57 x 81 mm.
	*/
	@:public @:static @:final public static var ISO_C8(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C9, 40 x 57 mm.
	*/
	@:public @:static @:final public static var ISO_C9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO/DIN C10, 28 x 40 mm.
	*/
	@:public @:static @:final public static var ISO_C10(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for ISO Designated Long, 110 x 220 mm.
	*/
	@:public @:static @:final public static var ISO_DESIGNATED_LONG(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Executive, 7 1/4 x 10 1/2 in.
	*/
	@:public @:static @:final public static var EXECUTIVE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Folio, 8 1/2 x 13 in.
	*/
	@:public @:static @:final public static var FOLIO(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Invoice, 5 1/2 x 8 1/2 in.
	*/
	@:public @:static @:final public static var INVOICE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Ledger, 11 x 17 in.
	*/
	@:public @:static @:final public static var LEDGER(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American Letter, 8 1/2 x 11 in.
	*/
	@:public @:static @:final public static var NA_LETTER(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American Legal, 8 1/2 x 14 in.
	*/
	@:public @:static @:final public static var NA_LEGAL(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Quarto, 215 x 275 mm.
	*/
	@:public @:static @:final public static var QUARTO(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Engineering A, 8 1/2 x 11 in.
	*/
	@:public @:static @:final public static var A(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Engineering B, 11 x 17 in.
	*/
	@:public @:static @:final public static var B(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Engineering C, 17 x 22 in.
	*/
	@:public @:static @:final public static var C(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Engineering D, 22 x 34 in.
	*/
	@:public @:static @:final public static var D(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Engineering E, 34 x 44 in.
	*/
	@:public @:static @:final public static var E(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American 10 x 15 in.
	*/
	@:public @:static @:final public static var NA_10X15_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American 10 x 14 in.
	*/
	@:public @:static @:final public static var NA_10X14_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American 10 x 13 in.
	*/
	@:public @:static @:final public static var NA_10X13_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American 9 x 12 in.
	*/
	@:public @:static @:final public static var NA_9X12_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American 9 x 11 in.
	*/
	@:public @:static @:final public static var NA_9X11_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American 7 x 9 in.
	*/
	@:public @:static @:final public static var NA_7X9_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American 6 x 9 in.
	*/
	@:public @:static @:final public static var NA_6X9_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American #9 Business Envelope,
	* 3 7/8 x 8 7/8 in.
	*/
	@:public @:static @:final public static var NA_NUMBER_9_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American #10 Business Envelope,
	* 4 1/8 x 9 1/2 in.
	*/
	@:public @:static @:final public static var NA_NUMBER_10_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American #11 Business Envelope,
	* 4 1/2 x 10 3/8 in.
	*/
	@:public @:static @:final public static var NA_NUMBER_11_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American #12 Business Envelope,
	* 4 3/4 x 11 in.
	*/
	@:public @:static @:final public static var NA_NUMBER_12_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for North American #14 Business Envelope,
	* 5 x 11 1/2 in.
	*/
	@:public @:static @:final public static var NA_NUMBER_14_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Invitation Envelope, 220 x 220 mm.
	*/
	@:public @:static @:final public static var INVITE_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Italy Envelope, 110 x 230 mm.
	*/
	@:public @:static @:final public static var ITALY_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for Monarch Envelope, 3 7/8 x 7 1/2 in.
	*/
	@:public @:static @:final public static var MONARCH_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* The MediaType instance for 6 3/4 envelope, 3 5/8 x 6 1/2 in.
	*/
	@:public @:static @:final public static var PERSONAL_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A0.
	*/
	@:public @:static @:final public static var A0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A1.
	*/
	@:public @:static @:final public static var A1(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A2.
	*/
	@:public @:static @:final public static var A2(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A3.
	*/
	@:public @:static @:final public static var A3(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A4.
	*/
	@:public @:static @:final public static var A4(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A5.
	*/
	@:public @:static @:final public static var A5(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A6.
	*/
	@:public @:static @:final public static var A6(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A7.
	*/
	@:public @:static @:final public static var A7(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A8.
	*/
	@:public @:static @:final public static var A8(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A9.
	*/
	@:public @:static @:final public static var A9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_A10.
	*/
	@:public @:static @:final public static var A10(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B0.
	*/
	@:public @:static @:final public static var B0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B1.
	*/
	@:public @:static @:final public static var B1(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B2.
	*/
	@:public @:static @:final public static var B2(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B3.
	*/
	@:public @:static @:final public static var B3(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B4.
	*/
	@:public @:static @:final public static var B4(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B4.
	*/
	@:public @:static @:final public static var ISO_B4_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B5.
	*/
	@:public @:static @:final public static var B5(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B5.
	*/
	@:public @:static @:final public static var ISO_B5_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B6.
	*/
	@:public @:static @:final public static var B6(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B7.
	*/
	@:public @:static @:final public static var B7(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B8.
	*/
	@:public @:static @:final public static var B8(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B9.
	*/
	@:public @:static @:final public static var B9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_B10.
	*/
	@:public @:static @:final public static var B10(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C0.
	*/
	@:public @:static @:final public static var C0(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C0.
	*/
	@:public @:static @:final public static var ISO_C0_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C1.
	*/
	@:public @:static @:final public static var C1(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C1.
	*/
	@:public @:static @:final public static var ISO_C1_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C2.
	*/
	@:public @:static @:final public static var C2(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C2.
	*/
	@:public @:static @:final public static var ISO_C2_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C3.
	*/
	@:public @:static @:final public static var C3(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C3.
	*/
	@:public @:static @:final public static var ISO_C3_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C4.
	*/
	@:public @:static @:final public static var C4(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C4.
	*/
	@:public @:static @:final public static var ISO_C4_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C5.
	*/
	@:public @:static @:final public static var C5(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C5.
	*/
	@:public @:static @:final public static var ISO_C5_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C6.
	*/
	@:public @:static @:final public static var C6(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C6.
	*/
	@:public @:static @:final public static var ISO_C6_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C7.
	*/
	@:public @:static @:final public static var C7(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C7.
	*/
	@:public @:static @:final public static var ISO_C7_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C8.
	*/
	@:public @:static @:final public static var C8(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C8.
	*/
	@:public @:static @:final public static var ISO_C8_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C9.
	*/
	@:public @:static @:final public static var C9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C9.
	*/
	@:public @:static @:final public static var ISO_C9_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C10.
	*/
	@:public @:static @:final public static var C10(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_C10.
	*/
	@:public @:static @:final public static var ISO_C10_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ISO_DESIGNATED_LONG.
	*/
	@:public @:static @:final public static var ISO_DESIGNATED_LONG_ENVELOPE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for INVOICE.
	*/
	@:public @:static @:final public static var STATEMENT(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for LEDGER.
	*/
	@:public @:static @:final public static var TABLOID(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_LETTER.
	*/
	@:public @:static @:final public static var LETTER(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_LETTER.
	*/
	@:public @:static @:final public static var NOTE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_LEGAL.
	*/
	@:public @:static @:final public static var LEGAL(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_10X15_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_10X15(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_10X14_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_10X14(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_10X13_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_10X13(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_9X12_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_9X12(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_9X11_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_9X11(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_7X9_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_7X9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_6X9_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_6X9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_NUMBER_9_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_9(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_NUMBER_10_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_10(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_NUMBER_11_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_11(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_NUMBER_12_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_12(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for NA_NUMBER_14_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_14(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for INVITE_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_INVITE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ITALY_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_ITALY(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for MONARCH_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_MONARCH(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for PERSONAL_ENVELOPE.
	*/
	@:public @:static @:final public static var ENV_PERSONAL(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for INVITE_ENVELOPE.
	*/
	@:public @:static @:final public static var INVITE(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for ITALY_ENVELOPE.
	*/
	@:public @:static @:final public static var ITALY(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for MONARCH_ENVELOPE.
	*/
	@:public @:static @:final public static var MONARCH(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	/**
	* An alias for PERSONAL_ENVELOPE.
	*/
	@:public @:static @:final public static var PERSONAL(default, null) : java.awt.PageAttributes.PageAttributes_MediaType;
	
	
}
/**
* A type-safe enumeration of possible orientations. These orientations
* are in partial compliance with IPP 1.1.
* @since 1.3
*/
@:require(java3) @:native('java$awt$PageAttributes$OrientationRequestedType') extern class PageAttributes_OrientationRequestedType extends java.awt.AttributeValue
{
	/**
	* The OrientationRequestedType instance to use for specifying a
	* portrait orientation.
	*/
	@:public @:static @:final public static var PORTRAIT(default, null) : java.awt.PageAttributes.PageAttributes_OrientationRequestedType;
	
	/**
	* The OrientationRequestedType instance to use for specifying a
	* landscape orientation.
	*/
	@:public @:static @:final public static var LANDSCAPE(default, null) : java.awt.PageAttributes.PageAttributes_OrientationRequestedType;
	
	
}
/**
* A type-safe enumeration of possible origins.
* @since 1.3
*/
@:require(java3) @:native('java$awt$PageAttributes$OriginType') extern class PageAttributes_OriginType extends java.awt.AttributeValue
{
	/**
	* The OriginType instance to use for specifying a physical origin.
	*/
	@:public @:static @:final public static var PHYSICAL(default, null) : java.awt.PageAttributes.PageAttributes_OriginType;
	
	/**
	* The OriginType instance to use for specifying a printable origin.
	*/
	@:public @:static @:final public static var PRINTABLE(default, null) : java.awt.PageAttributes.PageAttributes_OriginType;
	
	
}
/**
* A type-safe enumeration of possible print qualities. These print
* qualities are in compliance with IPP 1.1.
* @since 1.3
*/
@:require(java3) @:native('java$awt$PageAttributes$PrintQualityType') extern class PageAttributes_PrintQualityType extends java.awt.AttributeValue
{
	/**
	* The PrintQualityType instance to use for specifying a high print
	* quality.
	*/
	@:public @:static @:final public static var HIGH(default, null) : java.awt.PageAttributes.PageAttributes_PrintQualityType;
	
	/**
	* The PrintQualityType instance to use for specifying a normal print
	* quality.
	*/
	@:public @:static @:final public static var NORMAL(default, null) : java.awt.PageAttributes.PageAttributes_PrintQualityType;
	
	/**
	* The PrintQualityType instance to use for specifying a draft print
	* quality.
	*/
	@:public @:static @:final public static var DRAFT(default, null) : java.awt.PageAttributes.PageAttributes_PrintQualityType;
	
	
}
