package java.awt.font;
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
extern class NumericShaper implements java.io.Serializable
{
	/** Identifies the Latin-1 (European) and extended range, and
	*  Latin-1 (European) decimal base.
	*/
	public static var EUROPEAN(default, null) : Int;
	
	/** Identifies the ARABIC range and decimal base. */
	public static var ARABIC(default, null) : Int;
	
	/** Identifies the ARABIC range and ARABIC_EXTENDED decimal base. */
	public static var EASTERN_ARABIC(default, null) : Int;
	
	/** Identifies the DEVANAGARI range and decimal base. */
	public static var DEVANAGARI(default, null) : Int;
	
	/** Identifies the BENGALI range and decimal base. */
	public static var BENGALI(default, null) : Int;
	
	/** Identifies the GURMUKHI range and decimal base. */
	public static var GURMUKHI(default, null) : Int;
	
	/** Identifies the GUJARATI range and decimal base. */
	public static var GUJARATI(default, null) : Int;
	
	/** Identifies the ORIYA range and decimal base. */
	public static var ORIYA(default, null) : Int;
	
	/** Identifies the TAMIL range and decimal base. */
	public static var TAMIL(default, null) : Int;
	
	/** Identifies the TELUGU range and decimal base. */
	public static var TELUGU(default, null) : Int;
	
	/** Identifies the KANNADA range and decimal base. */
	public static var KANNADA(default, null) : Int;
	
	/** Identifies the MALAYALAM range and decimal base. */
	public static var MALAYALAM(default, null) : Int;
	
	/** Identifies the THAI range and decimal base. */
	public static var THAI(default, null) : Int;
	
	/** Identifies the LAO range and decimal base. */
	public static var LAO(default, null) : Int;
	
	/** Identifies the TIBETAN range and decimal base. */
	public static var TIBETAN(default, null) : Int;
	
	/** Identifies the MYANMAR range and decimal base. */
	public static var MYANMAR(default, null) : Int;
	
	/** Identifies the ETHIOPIC range and decimal base. */
	public static var ETHIOPIC(default, null) : Int;
	
	/** Identifies the KHMER range and decimal base. */
	public static var KHMER(default, null) : Int;
	
	/** Identifies the MONGOLIAN range and decimal base. */
	public static var MONGOLIAN(default, null) : Int;
	
	/** Identifies all ranges, for full contextual shaping.
	*
	* <p>This constant specifies all of the bit mask-based
	* ranges. Use {@code EmunSet.allOf(NumericShaper.Range.class)} to
	* specify all of the enum-based ranges.
	*/
	public static var ALL_RANGES(default, null) : Int;
	
	/**
	* Returns a shaper for the provided unicode range.  All
	* Latin-1 (EUROPEAN) digits are converted
	* to the corresponding decimal unicode digits.
	* @param singleRange the specified Unicode range
	* @return a non-contextual numeric shaper
	* @throws IllegalArgumentException if the range is not a single range
	*/
	@:overload public static function getShaper(singleRange : Int) : NumericShaper;
	
	/**
	* Returns a shaper for the provided Unicode
	* range. All Latin-1 (EUROPEAN) digits are converted to the
	* corresponding decimal digits of the specified Unicode range.
	*
	* @param singleRange the Unicode range given by a {@link
	*                    NumericShaper.Range} constant.
	* @return a non-contextual {@code NumericShaper}.
	* @throws NullPointerException if {@code singleRange} is {@code null}
	* @since 1.7
	*/
	@:require(java7) @:overload public static function getShaper(singleRange : NumericShaper_Range) : NumericShaper;
	
	/**
	* Returns a contextual shaper for the provided unicode range(s).
	* Latin-1 (EUROPEAN) digits are converted to the decimal digits
	* corresponding to the range of the preceding text, if the
	* range is one of the provided ranges.  Multiple ranges are
	* represented by or-ing the values together, such as,
	* <code>NumericShaper.ARABIC | NumericShaper.THAI</code>.  The
	* shaper assumes EUROPEAN as the starting context, that is, if
	* EUROPEAN digits are encountered before any strong directional
	* text in the string, the context is presumed to be EUROPEAN, and
	* so the digits will not shape.
	* @param ranges the specified Unicode ranges
	* @return a shaper for the specified ranges
	*/
	@:overload public static function getContextualShaper(ranges : Int) : NumericShaper;
	
	/**
	* Returns a contextual shaper for the provided Unicode
	* range(s). The Latin-1 (EUROPEAN) digits are converted to the
	* decimal digits corresponding to the range of the preceding
	* text, if the range is one of the provided ranges.
	*
	* <p>The shaper assumes EUROPEAN as the starting context, that
	* is, if EUROPEAN digits are encountered before any strong
	* directional text in the string, the context is presumed to be
	* EUROPEAN, and so the digits will not shape.
	*
	* @param ranges the specified Unicode ranges
	* @return a contextual shaper for the specified ranges
	* @throws NullPointerException if {@code ranges} is {@code null}.
	* @since 1.7
	*/
	@:require(java7) @:overload public static function getContextualShaper(ranges : java.util.Set<NumericShaper_Range>) : NumericShaper;
	
	/**
	* Returns a contextual shaper for the provided unicode range(s).
	* Latin-1 (EUROPEAN) digits will be converted to the decimal digits
	* corresponding to the range of the preceding text, if the
	* range is one of the provided ranges.  Multiple ranges are
	* represented by or-ing the values together, for example,
	* <code>NumericShaper.ARABIC | NumericShaper.THAI</code>.  The
	* shaper uses defaultContext as the starting context.
	* @param ranges the specified Unicode ranges
	* @param defaultContext the starting context, such as
	* <code>NumericShaper.EUROPEAN</code>
	* @return a shaper for the specified Unicode ranges.
	* @throws IllegalArgumentException if the specified
	* <code>defaultContext</code> is not a single valid range.
	*/
	@:overload public static function getContextualShaper(ranges : Int, defaultContext : Int) : NumericShaper;
	
	/**
	* Returns a contextual shaper for the provided Unicode range(s).
	* The Latin-1 (EUROPEAN) digits will be converted to the decimal
	* digits corresponding to the range of the preceding text, if the
	* range is one of the provided ranges. The shaper uses {@code
	* defaultContext} as the starting context.
	*
	* @param ranges the specified Unicode ranges
	* @param defaultContext the starting context, such as
	*                       {@code NumericShaper.Range.EUROPEAN}
	* @return a contextual shaper for the specified Unicode ranges.
	* @throws NullPointerException
	*         if {@code ranges} or {@code defaultContext} is {@code null}
	* @since 1.7
	*/
	@:require(java7) @:overload public static function getContextualShaper(ranges : java.util.Set<NumericShaper_Range>, defaultContext : NumericShaper_Range) : NumericShaper;
	
	/**
	* Converts the digits in the text that occur between start and
	* start + count.
	* @param text an array of characters to convert
	* @param start the index into <code>text</code> to start
	*        converting
	* @param count the number of characters in <code>text</code>
	*        to convert
	* @throws IndexOutOfBoundsException if start or start + count is
	*        out of bounds
	* @throws NullPointerException if text is null
	*/
	@:overload public function shape(text : java.NativeArray<java.StdTypes.Char16>, start : Int, count : Int) : Void;
	
	/**
	* Converts the digits in the text that occur between start and
	* start + count, using the provided context.
	* Context is ignored if the shaper is not a contextual shaper.
	* @param text an array of characters
	* @param start the index into <code>text</code> to start
	*        converting
	* @param count the number of characters in <code>text</code>
	*        to convert
	* @param context the context to which to convert the
	*        characters, such as <code>NumericShaper.EUROPEAN</code>
	* @throws IndexOutOfBoundsException if start or start + count is
	*        out of bounds
	* @throws NullPointerException if text is null
	* @throws IllegalArgumentException if this is a contextual shaper
	* and the specified <code>context</code> is not a single valid
	* range.
	*/
	@:overload public function shape(text : java.NativeArray<java.StdTypes.Char16>, start : Int, count : Int, context : Int) : Void;
	
	/**
	* Converts the digits in the text that occur between {@code
	* start} and {@code start + count}, using the provided {@code
	* context}. {@code Context} is ignored if the shaper is not a
	* contextual shaper.
	*
	* @param text  a {@code char} array
	* @param start the index into {@code text} to start converting
	* @param count the number of {@code char}s in {@code text}
	*              to convert
	* @param context the context to which to convert the characters,
	*                such as {@code NumericShaper.Range.EUROPEAN}
	* @throws IndexOutOfBoundsException
	*         if {@code start} or {@code start + count} is out of bounds
	* @throws NullPointerException
	*         if {@code text} or {@code context} is null
	* @since 1.7
	*/
	@:require(java7) @:overload public function shape(text : java.NativeArray<java.StdTypes.Char16>, start : Int, count : Int, context : NumericShaper_Range) : Void;
	
	/**
	* Returns a <code>boolean</code> indicating whether or not
	* this shaper shapes contextually.
	* @return <code>true</code> if this shaper is contextual;
	*         <code>false</code> otherwise.
	*/
	@:overload public function isContextual() : Bool;
	
	/**
	* Returns an <code>int</code> that ORs together the values for
	* all the ranges that will be shaped.
	* <p>
	* For example, to check if a shaper shapes to Arabic, you would use the
	* following:
	* <blockquote>
	*   <code>if ((shaper.getRanges() & shaper.ARABIC) != 0) { ... </code>
	* </blockquote>
	*
	* <p>Note that this method supports only the bit mask-based
	* ranges. Call {@link #getRangeSet()} for the enum-based ranges.
	*
	* @return the values for all the ranges to be shaped.
	*/
	@:overload public function getRanges() : Int;
	
	/**
	* Returns a {@code Set} representing all the Unicode ranges in
	* this {@code NumericShaper} that will be shaped.
	*
	* @return all the Unicode ranges to be shaped.
	* @since 1.7
	*/
	@:require(java7) @:overload public function getRangeSet() : java.util.Set<NumericShaper_Range>;
	
	/**
	* Returns a hash code for this shaper.
	* @return this shaper's hash code.
	* @see java.lang.Object#hashCode
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns {@code true} if the specified object is an instance of
	* <code>NumericShaper</code> and shapes identically to this one,
	* regardless of the range representations, the bit mask or the
	* enum. For example, the following code produces {@code "true"}.
	* <blockquote><pre>
	* NumericShaper ns1 = NumericShaper.getShaper(NumericShaper.ARABIC);
	* NumericShaper ns2 = NumericShaper.getShaper(NumericShaper.Range.ARABIC);
	* System.out.println(ns1.equals(ns2));
	* </pre></blockquote>
	*
	* @param o the specified object to compare to this
	*          <code>NumericShaper</code>
	* @return <code>true</code> if <code>o</code> is an instance
	*         of <code>NumericShaper</code> and shapes in the same way;
	*         <code>false</code> otherwise.
	* @see java.lang.Object#equals(java.lang.Object)
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns a <code>String</code> that describes this shaper. This method
	* is used for debugging purposes only.
	* @return a <code>String</code> describing this shaper.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* A {@code NumericShaper.Range} represents a Unicode range of a
* script having its own decimal digits. For example, the {@link
* NumericShaper.Range#THAI} range has the Thai digits, THAI DIGIT
* ZERO (U+0E50) to THAI DIGIT NINE (U+0E59).
*
* <p>The <code>Range</code> enum replaces the traditional bit
* mask-based values (e.g., {@link NumericShaper#ARABIC}), and
* supports more Unicode ranges than the bit mask-based ones. For
* example, the following code using the bit mask:
* <blockquote><pre>
* NumericShaper.getContextualShaper(NumericShaper.ARABIC |
*                                     NumericShaper.TAMIL,
*                                   NumericShaper.EUROPEAN);
* </pre></blockquote>
* can be written using this enum as:
* <blockquote><pre>
* NumericShaper.getContextualShaper(EnumSet.of(
*                                     NumericShaper.Range.ARABIC,
*                                     NumericShaper.Range.TAMIL),
*                                   NumericShaper.Range.EUROPEAN);
* </pre></blockquote>
*
* @since 1.7
*/
@:require(java7) @:native('java$awt$font$NumericShaper$Range') extern enum NumericShaper_Range
{
	/**
	* The Latin (European) range with the Latin (ASCII) digits.
	*/
	EUROPEAN;
	/**
	* The Arabic range with the Arabic-Indic digits.
	*/
	ARABIC;
	/**
	* The Arabic range with the Eastern Arabic-Indic digits.
	*/
	EASTERN_ARABIC;
	/**
	* The Devanagari range with the Devanagari digits.
	*/
	DEVANAGARI;
	/**
	* The Bengali range with the Bengali digits.
	*/
	BENGALI;
	/**
	* The Gurmukhi range with the Gurmukhi digits.
	*/
	GURMUKHI;
	/**
	* The Gujarati range with the Gujarati digits.
	*/
	GUJARATI;
	/**
	* The Oriya range with the Oriya digits.
	*/
	ORIYA;
	/**
	* The Tamil range with the Tamil digits.
	*/
	TAMIL;
	/**
	* The Telugu range with the Telugu digits.
	*/
	TELUGU;
	/**
	* The Kannada range with the Kannada digits.
	*/
	KANNADA;
	/**
	* The Malayalam range with the Malayalam digits.
	*/
	MALAYALAM;
	/**
	* The Thai range with the Thai digits.
	*/
	THAI;
	/**
	* The Lao range with the Lao digits.
	*/
	LAO;
	/**
	* The Tibetan range with the Tibetan digits.
	*/
	TIBETAN;
	/**
	* The Myanmar range with the Myanmar digits.
	*/
	MYANMAR;
	/**
	* The Ethiopic range with the Ethiopic digits. Ethiopic
	* does not have a decimal digit 0 so Latin (European) 0 is
	* used.
	*/
	ETHIOPIC;
	/**
	* The Khmer range with the Khmer digits.
	*/
	KHMER;
	/**
	* The Mongolian range with the Mongolian digits.
	*/
	MONGOLIAN;
	/**
	* The N'Ko range with the N'Ko digits.
	*/
	NKO;
	/**
	* The Myanmar range with the Myanmar Shan digits.
	*/
	MYANMAR_SHAN;
	/**
	* The Limbu range with the Limbu digits.
	*/
	LIMBU;
	/**
	* The New Tai Lue range with the New Tai Lue digits.
	*/
	NEW_TAI_LUE;
	/**
	* The Balinese range with the Balinese digits.
	*/
	BALINESE;
	/**
	* The Sundanese range with the Sundanese digits.
	*/
	SUNDANESE;
	/**
	* The Lepcha range with the Lepcha digits.
	*/
	LEPCHA;
	/**
	* The Ol Chiki range with the Ol Chiki digits.
	*/
	OL_CHIKI;
	/**
	* The Vai range with the Vai digits.
	*/
	VAI;
	/**
	* The Saurashtra range with the Saurashtra digits.
	*/
	SAURASHTRA;
	/**
	* The Kayah Li range with the Kayah Li digits.
	*/
	KAYAH_LI;
	/**
	* The Cham range with the Cham digits.
	*/
	CHAM;
	/**
	* The Tai Tham Hora range with the Tai Tham Hora digits.
	*/
	TAI_THAM_HORA;
	/**
	* The Tai Tham Tham range with the Tai Tham Tham digits.
	*/
	TAI_THAM_THAM;
	/**
	* The Javanese range with the Javanese digits.
	*/
	JAVANESE;
	/**
	* The Meetei Mayek range with the Meetei Mayek digits.
	*/
	MEETEI_MAYEK;
	
}

