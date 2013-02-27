package sun.font;
/*
* Copyright (c) 2008, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class FontUtilities
{
	/**
	* A collection of utility methods.
	*/
	public static var isSolaris : Bool;
	
	public static var isLinux : Bool;
	
	public static var isMacOSX : Bool;
	
	public static var isSolaris8 : Bool;
	
	public static var isSolaris9 : Bool;
	
	public static var isOpenSolaris : Bool;
	
	public static var useT2K : Bool;
	
	public static var isWindows : Bool;
	
	public static var isOpenJDK : Bool;
	
	/**
	* Referenced by code in the JDK which wants to test for the
	* minimum char code for which layout may be required.
	* Note that even basic latin text can benefit from ligatures,
	* eg "ffi" but we presently apply those only if explicitly
	* requested with TextAttribute.LIGATURES_ON.
	* The value here indicates the lowest char code for which failing
	* to invoke layout would prevent acceptable rendering.
	*/
	public static var MIN_LAYOUT_CHARCODE(default, null) : Int;
	
	/**
	* Referenced by code in the JDK which wants to test for the
	* maximum char code for which layout may be required.
	* Note this does not account for supplementary characters
	* where the caller interprets 'layout' to mean any case where
	* one 'char' (ie the java type char) does not map to one glyph
	*/
	public static var MAX_LAYOUT_CHARCODE(default, null) : Int;
	
	/**
	* Calls the private getFont2D() method in java.awt.Font objects.
	*
	* @param font the font object to call
	*
	* @return the Font2D object returned by Font.getFont2D()
	*/
	@:overload public static function getFont2D(font : java.awt.Font) : sun.font.Font2D;
	
	/**
	* If there is anything in the text which triggers a case
	* where char->glyph does not map 1:1 in straightforward
	* left->right ordering, then this method returns true.
	* Scripts which might require it but are not treated as such
	* due to JDK implementations will not return true.
	* ie a 'true' return is an indication of the treatment by
	* the implementation.
	* Whether supplementary characters should be considered is dependent
	* on the needs of the caller. Since this method accepts the 'char' type
	* then such chars are always represented by a pair. From a rendering
	* perspective these will all (in the cases I know of) still be one
	* unicode character -> one glyph. But if a caller is using this to
	* discover any case where it cannot make naive assumptions about
	* the number of chars, and how to index through them, then it may
	* need the option to have a 'true' return in such a case.
	*/
	@:overload public static function isComplexText(chs : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int) : Bool;
	
	/* This is almost the same as the method above, except it takes a
	* char which means it may include undecoded surrogate pairs.
	* The distinction is made so that code which needs to identify all
	* cases in which we do not have a simple mapping from
	* char->unicode character->glyph can be be identified.
	* For example measurement cannot simply sum advances of 'chars',
	* the caret in editable text cannot advance one 'char' at a time, etc.
	* These callers really are asking for more than whether 'layout'
	* needs to be run, they need to know if they can assume 1->1
	* char->glyph mapping.
	*/
	@:overload public static function isNonSimpleChar(ch : java.StdTypes.Char16) : Bool;
	
	/* If the character code falls into any of a number of unicode ranges
	* where we know that simple left->right layout mapping chars to glyphs
	* 1:1 and accumulating advances is going to produce incorrect results,
	* we want to know this so the caller can use a more intelligent layout
	* approach. A caller who cares about optimum performance may want to
	* check the first case and skip the method call if its in that range.
	* Although there's a lot of tests in here, knowing you can skip
	* CTL saves a great deal more. The rest of the checks are ordered
	* so that rather than checking explicitly if (>= start & <= end)
	* which would mean all ranges would need to be checked so be sure
	* CTL is not needed, the method returns as soon as it recognises
	* the code point is outside of a CTL ranges.
	* NOTE: Since this method accepts an 'int' it is asssumed to properly
	* represent a CHARACTER. ie it assumes the caller has already
	* converted surrogate pairs into supplementary characters, and so
	* can handle this case and doesn't need to be told such a case is
	* 'complex'.
	*/
	@:overload public static function isComplexCharCode(code : Int) : Bool;
	
	@:overload public static function getLogger() : sun.util.logging.PlatformLogger;
	
	@:overload public static function isLogging() : Bool;
	
	@:overload public static function debugFonts() : Bool;
	
	/* Revise the implementation to in fact mean "font is a composite font.
	* This ensures that Swing components will always benefit from the
	* fall back fonts
	*/
	@:overload public static function fontSupportsDefaultEncoding(font : java.awt.Font) : Bool;
	
	@:overload public static function getCompositeFontUIResource(font : java.awt.Font) : javax.swing.plaf.FontUIResource;
	
	@:overload public static function mapFcName(name : String) : String;
	
	/* This is called by Swing passing in a fontconfig family name
	* such as "sans". In return Swing gets a FontUIResource instance
	* that has queried fontconfig to resolve the font(s) used for this.
	* Fontconfig will if asked return a list of fonts to give the largest
	* possible code point coverage.
	* For now we use only the first font returned by fontconfig, and
	* back it up with the most closely matching JDK logical font.
	* Essentially this means pre-pending what we return now with fontconfig's
	* preferred physical font. This could lead to some duplication in cases,
	* if we already included that font later. We probably should remove such
	* duplicates, but it is not a significant problem. It can be addressed
	* later as part of creating a Composite which uses more of the
	* same fonts as fontconfig. At that time we also should pay more
	* attention to the special rendering instructions fontconfig returns,
	* such as whether we should prefer embedded bitmaps over antialiasing.
	* There's no way to express that via a Font at present.
	*/
	@:overload public static function getFontConfigFUIR(fcFamily : String, style : Int, size : Int) : javax.swing.plaf.FontUIResource;
	
	/**
	* Used by windows printing to assess if a font is likely to
	* be layout compatible with JDK
	* TrueType fonts should be, but if they have no GPOS table,
	* but do have a GSUB table, then they are probably older
	* fonts GDI handles differently.
	*/
	@:overload public static function textLayoutIsCompatible(font : java.awt.Font) : Bool;
	
	
}
