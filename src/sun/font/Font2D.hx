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
extern class Font2D
{
	/* Note: JRE and FONT_CONFIG ranks are identical. I don't know of a reason
	* to distingish these. Possibly if a user adds fonts to the JRE font
	* directory that are the same font as the ones specified in the font
	* configuration but that is more likely to be the legitimate intention
	* than a problem. One reason why these should be the same is that on
	* Linux the JRE fonts ARE the font configuration fonts, and although I
	* believe all are assigned FONT_CONFIG rank, it is conceivable that if
	* this were not so, that some JRE font would not be allowed to joint the
	* family of its siblings which were assigned FONT_CONFIG rank. Giving
	* them the same rank is the easy solution for now at least.
	*/
	public static var FONT_CONFIG_RANK(default, null) : Int;
	
	public static var JRE_RANK(default, null) : Int;
	
	public static var TTF_RANK(default, null) : Int;
	
	public static var TYPE1_RANK(default, null) : Int;
	
	public static var NATIVE_RANK(default, null) : Int;
	
	public static var UNKNOWN_RANK(default, null) : Int;
	
	public static var DEFAULT_RANK(default, null) : Int;
	
	public var handle : sun.font.Font2DHandle;
	
	private var familyName : String;
	
	/* Family font name (english) */
	private var fullName : String;
	
	/* Full font name (english)   */
	private var style : Int;
	
	private var family : sun.font.FontFamily;
	
	private var fontRank : Int;
	
	/*
	* A mapper can be independent of the strike.
	* Perhaps the reference to the mapper ought to be held on the
	* scaler, as it may be implemented via scaler functionality anyway
	* and so the mapper would be useless if its native portion was
	* freed when the scaler was GC'd.
	*/
	private var mapper : sun.font.CharToGlyphMapper;
	
	/*
	* The strike cache is maintained per "Font2D" as that is the
	* principal object by which you look up fonts.
	* It means more Hashmaps, but look ups can be quicker because
	* the map will have fewer entries, and there's no need to try to
	* make the Font2D part of the key.
	*/
	private var strikeCache : java.util.concurrent.ConcurrentHashMap<sun.font.FontStrikeDesc, java.lang.ref.Reference<Dynamic>>;
	
	/* Store the last Strike in a Reference object.
	* Similarly to the strike that was stored on a C++ font object,
	* this is an optimisation which helps if multiple clients (ie
	* typically SunGraphics2D instances) are using the same font, then
	* as may be typical of many UIs, they are probably using it in the
	* same style, so it can be a win to first quickly check if the last
	* strike obtained from this Font2D satifies the needs of the next
	* client too.
	* This pre-supposes that a FontStrike is a shareable object, which
	* it should.
	*/
	private var lastFontStrike : java.lang.ref.Reference<Dynamic>;
	
	/* Returns the "real" style of this Font2D. Eg the font face
	* Lucida Sans Bold" has a real style of Font.BOLD, even though
	* it may be able to used to simulate bold italic
	*/
	@:overload public function getStyle() : Int;
	
	@:overload private function setStyle() : Void;
	
	/* This isn't very efficient but its infrequently used.
	* StandardGlyphVector uses it when the client assigns the glyph codes.
	* These may not be valid. This validates them substituting the missing
	* glyph elsewhere.
	*/
	@:overload private function getValidatedGlyphCode(glyphCode : Int) : Int;
	
	/* this may be useful for APIs like canDisplay where the answer
	* is dependent on the font and its scaler, but not the strike.
	* If no strike has ever been returned, then create a one that matches
	* this font with the default FRC. It will become the lastStrike and
	* there's a good chance that the next call will be to get exactly that
	* strike.
	*/
	@:overload public function getStrike(font : java.awt.Font) : sun.font.FontStrike;
	
	/* SunGraphics2D has font, tx, aa and fm. From this info
	* can get a Strike object from the cache, creating it if necessary.
	* This code is designed for multi-threaded access.
	* For that reason it creates a local FontStrikeDesc rather than filling
	* in a shared one. Up to two AffineTransforms and one FontStrikeDesc will
	* be created by every lookup. This appears to perform more than
	* adequately. But it may make sense to expose FontStrikeDesc
	* as a parameter so a caller can use its own.
	* In such a case if a FontStrikeDesc is stored as a key then
	* we would need to use a private copy.
	*
	* Note that this code doesn't prevent two threads from creating
	* two different FontStrike instances and having one of the threads
	* overwrite the other in the map. This is likely to be a rare
	* occurrence and the only consequence is that these callers will have
	* different instances of the strike, and there'd be some duplication of
	* population of the strikes. However since users of these strikes are
	* transient, then the one that was overwritten would soon be freed.
	* If there is any problem then a small synchronized block would be
	* required with its attendant consequences for MP scaleability.
	*/
	@:overload public function getStrike(font : java.awt.Font, devTx : java.awt.geom.AffineTransform, aa : Int, fm : Int) : sun.font.FontStrike;
	
	@:overload public function getStrike(font : java.awt.Font, devTx : java.awt.geom.AffineTransform, glyphTx : java.awt.geom.AffineTransform, aa : Int, fm : Int) : sun.font.FontStrike;
	
	@:overload public function getStrike(font : java.awt.Font, frc : java.awt.font.FontRenderContext) : sun.font.FontStrike;
	
	/**
	* The length of the metrics array must be >= 8.  This method will
	* store the following elements in that array before returning:
	*    metrics[0]: ascent
	*    metrics[1]: descent
	*    metrics[2]: leading
	*    metrics[3]: max advance
	*    metrics[4]: strikethrough offset
	*    metrics[5]: strikethrough thickness
	*    metrics[6]: underline offset
	*    metrics[7]: underline thickness
	*/
	@:overload public function getFontMetrics(font : java.awt.Font, at : java.awt.geom.AffineTransform, aaHint : Dynamic, fmHint : Dynamic, metrics : java.NativeArray<Single>) : Void;
	
	/**
	* The length of the metrics array must be >= offset+4, and offset must be
	* >= 0.  Typically offset is 4.  This method will
	* store the following elements in that array before returning:
	*    metrics[off+0]: strikethrough offset
	*    metrics[off+1]: strikethrough thickness
	*    metrics[off+2]: underline offset
	*    metrics[off+3]: underline thickness
	*
	* Note that this implementation simply returns default values;
	* subclasses can override this method to provide more accurate values.
	*/
	@:overload public function getStyleMetrics(pointSize : Single, metrics : java.NativeArray<Single>, offset : Int) : Void;
	
	/**
	* The length of the metrics array must be >= 4.  This method will
	* store the following elements in that array before returning:
	*    metrics[0]: ascent
	*    metrics[1]: descent
	*    metrics[2]: leading
	*    metrics[3]: max advance
	*/
	@:overload public function getFontMetrics(font : java.awt.Font, frc : java.awt.font.FontRenderContext, metrics : java.NativeArray<Single>) : Void;
	
	/* for layout code */
	@:overload private function getUnitsPerEm() : haxe.Int64;
	
	@:overload public function canDoStyle(style : Int) : Bool;
	
	/*
	* All the important subclasses override this which is principally for
	* the TrueType 'gasp' table.
	*/
	@:overload public function useAAForPtSize(ptsize : Int) : Bool;
	
	@:overload public function hasSupplementaryChars() : Bool;
	
	/* The following methods implement public methods on java.awt.Font */
	@:overload public function getPostscriptName() : String;
	
	@:overload public function getFontName(l : java.util.Locale) : String;
	
	@:overload public function getFamilyName(l : java.util.Locale) : String;
	
	@:overload public function getNumGlyphs() : Int;
	
	@:overload public function charToGlyph(wchar : Int) : Int;
	
	@:overload public function getMissingGlyphCode() : Int;
	
	@:overload public function canDisplay(c : java.StdTypes.Char16) : Bool;
	
	@:overload public function canDisplay(cp : Int) : Bool;
	
	@:overload public function getBaselineFor(c : java.StdTypes.Char16) : java.StdTypes.Int8;
	
	@:overload public function getItalicAngle(font : java.awt.Font, at : java.awt.geom.AffineTransform, aaHint : Dynamic, fmHint : Dynamic) : Single;
	
	
}
