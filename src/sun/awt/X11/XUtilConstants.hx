package sun.awt.X11;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XUtilConstants
{
	/*
	* Bitmask returned by XParseGeometry().  Each bit tells if the corresponding
	* value (x, y, width, height) was found in the parsed string.
	*/
	@:public @:static @:final public static var NoValue(default, null) : Int;
	
	@:public @:static @:final public static var XValue(default, null) : Int;
	
	@:public @:static @:final public static var YValue(default, null) : Int;
	
	@:public @:static @:final public static var WidthValue(default, null) : Int;
	
	@:public @:static @:final public static var HeightValue(default, null) : Int;
	
	@:public @:static @:final public static var AllValues(default, null) : Int;
	
	@:public @:static @:final public static var XNegative(default, null) : Int;
	
	@:public @:static @:final public static var YNegative(default, null) : Int;
	
	/* flags argument in size hints */
	@:public @:static @:final public static var USPosition(default, null) : haxe.Int64;
	
	/* user specified x, y */
	@:public @:static @:final public static var USSize(default, null) : haxe.Int64;
	
	/* user specified width, height */
	@:public @:static @:final public static var PPosition(default, null) : haxe.Int64;
	
	/* program specified position */
	@:public @:static @:final public static var PSize(default, null) : haxe.Int64;
	
	/* program specified size */
	@:public @:static @:final public static var PMinSize(default, null) : haxe.Int64;
	
	/* program specified minimum size */
	@:public @:static @:final public static var PMaxSize(default, null) : haxe.Int64;
	
	/* program specified maximum size */
	@:public @:static @:final public static var PResizeInc(default, null) : haxe.Int64;
	
	/* program specified resize increments */
	@:public @:static @:final public static var PAspect(default, null) : haxe.Int64;
	
	/* program specified min and max aspect ratios */
	@:public @:static @:final public static var PBaseSize(default, null) : haxe.Int64;
	
	/* program specified base for incrementing */
	@:public @:static @:final public static var PWinGravity(default, null) : haxe.Int64;
	
	/* obsolete */
	@:public @:static @:final public static var PAllHints(default, null) : haxe.Int64;
	
	/* definition for flags of XWMHints */
	@:public @:static @:final public static var InputHint(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var StateHint(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var IconPixmapHint(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var IconWindowHint(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var IconPositionHint(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var IconMaskHint(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var WindowGroupHint(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var AllHints(default, null) : haxe.Int64;
	
	@:public @:static @:final public static var XUrgencyHint(default, null) : haxe.Int64;
	
	/* definitions for initial window state */
	@:public @:static @:final public static var WithdrawnState(default, null) : Int;
	
	/* for windows that are not mapped */
	@:public @:static @:final public static var NormalState(default, null) : Int;
	
	/* most applications want to start this way */
	@:public @:static @:final public static var IconicState(default, null) : Int;
	
	/*
	* Obsolete states no longer defined by ICCCM
	*/
	@:public @:static @:final public static var DontCareState(default, null) : Int;
	
	/* don't know or care */
	@:public @:static @:final public static var ZoomState(default, null) : Int;
	
	/* application believes it is seldom used; some wm's may put it on inactive menu */
	@:public @:static @:final public static var InactiveState(default, null) : Int;
	
	@:public @:static @:final public static var XNoMemory(default, null) : Int;
	
	@:public @:static @:final public static var XLocaleNotSupported(default, null) : Int;
	
	@:public @:static @:final public static var XConverterNotFound(default, null) : Int;
	
	/* Return values from XRectInRegion() */
	@:public @:static @:final public static var RectangleOut(default, null) : Int;
	
	@:public @:static @:final public static var RectangleIn(default, null) : Int;
	
	@:public @:static @:final public static var RectanglePart(default, null) : Int;
	
	/*
	* Information used by the visual utility routines to find desired visual
	* type from the many visuals a display may support.
	*/
	@:public @:static @:final public static var VisualNoMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualIDMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualScreenMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualDepthMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualClassMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualRedMaskMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualGreenMaskMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualBlueMaskMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualColormapSizeMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualBitsPerRGBMask(default, null) : Int;
	
	@:public @:static @:final public static var VisualAllMask(default, null) : Int;
	
	/*
	* return codes for XReadBitmapFile and XWriteBitmapFile
	*/
	@:public @:static @:final public static var BitmapSuccess(default, null) : Int;
	
	@:public @:static @:final public static var BitmapOpenFailed(default, null) : Int;
	
	@:public @:static @:final public static var BitmapFileInvalid(default, null) : Int;
	
	@:public @:static @:final public static var BitmapNoMemory(default, null) : Int;
	
	/* Associative lookup table return codes */
	@:public @:static @:final public static var XCSUCCESS(default, null) : Int;
	
	/* No error. */
	@:public @:static @:final public static var XCNOMEM(default, null) : Int;
	
	/* Out of memory */
	@:public @:static @:final public static var XCNOENT(default, null) : Int;
	
	
}
