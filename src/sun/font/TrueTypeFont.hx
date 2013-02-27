package sun.font;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TrueTypeFont extends sun.font.FileFont
{
	/* -- Tags for required TrueType tables */
	public static var cmapTag(default, null) : Int;
	
	public static var glyfTag(default, null) : Int;
	
	public static var headTag(default, null) : Int;
	
	public static var hheaTag(default, null) : Int;
	
	public static var hmtxTag(default, null) : Int;
	
	public static var locaTag(default, null) : Int;
	
	public static var maxpTag(default, null) : Int;
	
	public static var nameTag(default, null) : Int;
	
	public static var postTag(default, null) : Int;
	
	public static var os_2Tag(default, null) : Int;
	
	/* -- Tags for opentype related tables */
	public static var GDEFTag(default, null) : Int;
	
	public static var GPOSTag(default, null) : Int;
	
	public static var GSUBTag(default, null) : Int;
	
	public static var mortTag(default, null) : Int;
	
	/* -- Tags for non-standard tables */
	public static var fdscTag(default, null) : Int;
	
	public static var fvarTag(default, null) : Int;
	
	public static var featTag(default, null) : Int;
	
	public static var EBLCTag(default, null) : Int;
	
	public static var gaspTag(default, null) : Int;
	
	/* --  Other tags */
	public static var ttcfTag(default, null) : Int;
	
	public static var v1ttTag(default, null) : Int;
	
	public static var trueTag(default, null) : Int;
	
	public static var ottoTag(default, null) : Int;
	
	/* -- ID's used in the 'name' table */
	public static var MS_PLATFORM_ID(default, null) : Int;
	
	/* MS locale id for US English is the "default" */
	public static var ENGLISH_LOCALE_ID(default, null) : java.StdTypes.Int16;
	
	public static var FAMILY_NAME_ID(default, null) : Int;
	
	public static var FULL_NAME_ID(default, null) : Int;
	
	public static var POSTSCRIPT_NAME_ID(default, null) : Int;
	
	/**
	* - does basic verification of the file
	* - reads the header table for this font (within a collection)
	* - reads the names (full, family).
	* - determines the style of the font.
	* - initializes the CMAP
	* @throws FontFormatException - if the font can't be opened
	* or fails verification,  or there's no usable cmap
	*/
	@:overload public function new(platname : String, nativeNames : Dynamic, fIndex : Int, javaRasterizer : Bool) : Void;
	
	/* Enable natives just for fonts picked up from the platform that
	* may have external bitmaps on Solaris. Could do this just for
	* the fonts that are specified in font configuration files which
	* would lighten the burden (think about that).
	* The EBLCTag is used to skip natives for fonts that contain embedded
	* bitmaps as there's no need to use X11 for those fonts.
	* Skip all the latin fonts as they don't need this treatment.
	* Further refine this to fonts that are natively accessible (ie
	* as PCF bitmap fonts on the X11 font path).
	* This method is called when creating the first strike for this font.
	*/
	@:overload override private function checkUseNatives() : Bool;
	
	@:overload @:synchronized override private function close() : Void;
	
	@:overload private function init(fIndex : Int) : Void;
	
	/* Theoretically, reserved bits must not be set, include symbol bits */
	public static var reserved_bits1(default, null) : Int;
	
	public static var reserved_bits2(default, null) : Int;
	
	@:overload public function getFullName() : String;
	
	/* This probably won't get called but is there to support the
	* contract() of setStyle() defined in the superclass.
	*/
	@:overload override private function setStyle() : Void;
	
	@:overload override public function getStyleMetrics(pointSize : Single, metrics : java.NativeArray<Single>, offset : Int) : Void;
	
	@:overload private function initNames() : Void;
	
	/* Return the requested name in the requested locale, for the
	* MS platform ID. If the requested locale isn't found, return US
	* English, if that isn't found, return null and let the caller
	* figure out how to handle that.
	*/
	@:overload private function lookupName(findLocaleID : java.StdTypes.Int16, findNameID : Int) : String;
	
	/**
	* @return number of logical fonts. Is "1" for all but TTC files
	*/
	@:overload public function getFontCount() : Int;
	
	@:overload @:synchronized override private function getScaler() : sun.font.FontScaler;
	
	/* Postscript name is rarely requested. Don't waste cycles locating it
	* as part of font creation, nor storage to hold it. Get it only on demand.
	*/
	@:overload override public function getPostscriptName() : String;
	
	@:overload override public function getFontName(locale : java.util.Locale) : String;
	
	@:overload override public function getFamilyName(locale : java.util.Locale) : String;
	
	@:overload override public function getMapper() : sun.font.CharToGlyphMapper;
	
	/* This duplicates initNames() but that has to run fast as its used
	* during typical start-up and the information here is likely never
	* needed.
	*/
	@:overload private function initAllNames(requestedID : Int, names : java.util.HashSet<Dynamic>) : Void;
	
	/* This is to obtain info from the TT 'gasp' (grid-fitting and
	* scan-conversion procedure) table which specifies three combinations:
	* Hint, Smooth (greyscale), Hint and Smooth.
	* In this simplified scheme we don't distinguish the latter two. We
	* hint even at small sizes, so as to preserve metrics consistency.
	* If the information isn't available default values are substituted.
	* The more precise defaults we'd do if we distinguished the cases are:
	* Bold (no other style) fonts :
	* 0-8 : Smooth ( do grey)
	* 9+  : Hint + smooth (gridfit + grey)
	* Plain, Italic and Bold-Italic fonts :
	* 0-8 : Smooth ( do grey)
	* 9-17 : Hint (gridfit)
	* 18+  : Hint + smooth (gridfit + grey)
	* The defaults should rarely come into play as most TT fonts provide
	* better defaults.
	* REMIND: consider unpacking the table into an array of booleans
	* for faster use.
	*/
	@:overload override public function useAAForPtSize(ptsize : Int) : Bool;
	
	@:overload override public function hasSupplementaryChars() : Bool;
	
	@:overload public function toString() : String;
	
	
}
@:native('sun$font$TrueTypeFont$DirectoryEntry') @:internal extern class TrueTypeFont_DirectoryEntry
{
	
}
/* There is a pool which limits the number of fd's that are in
* use. Normally fd's are closed as they are replaced in the pool.
* But if an instance of this class becomes unreferenced, then there
* needs to be a way to close the fd. A finalize() method could do this,
* but using the Disposer class will ensure its called in a more timely
* manner. This is not something which should be relied upon to free
* fd's - its a safeguard.
*/
@:native('sun$font$TrueTypeFont$TTDisposerRecord') @:internal extern class TrueTypeFont_TTDisposerRecord implements sun.java2d.DisposerRecord
{
	@:overload @:synchronized public function dispose() : Void;
	
	
}
