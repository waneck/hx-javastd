package sun.text.normalizer;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
/*
*******************************************************************************
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class NormalizerBase implements java.lang.Cloneable
{
	/**
	* Options bit set value to select Unicode 3.2 normalization
	* (except NormalizationCorrections).
	* At most one Unicode version can be selected at a time.
	* @stable ICU 2.6
	*/
	public static var UNICODE_3_2(default, null) : Int;
	
	/**
	* Constant indicating that the end of the iteration has been reached.
	* This is guaranteed to have the same value as {@link UCharacterIterator#DONE}.
	* @stable ICU 2.8
	*/
	public static var DONE(default, null) : Int;
	
	/**
	* No decomposition/composition.
	* @stable ICU 2.8
	*/
	public static var NONE(default, null) : NormalizerBase_Mode;
	
	/**
	* Canonical decomposition.
	* @stable ICU 2.8
	*/
	public static var NFD(default, null) : NormalizerBase_Mode;
	
	/**
	* Compatibility decomposition.
	* @stable ICU 2.8
	*/
	public static var NFKD(default, null) : NormalizerBase_Mode;
	
	/**
	* Canonical decomposition followed by canonical composition.
	* @stable ICU 2.8
	*/
	public static var NFC(default, null) : NormalizerBase_Mode;
	
	/**
	* Compatibility decomposition followed by canonical composition.
	* @stable ICU 2.8
	*/
	public static var NFKC(default, null) : NormalizerBase_Mode;
	
	/**
	* Indicates that string is not in the normalized format
	* @stable ICU 2.8
	*/
	public static var NO(default, null) : NormalizerBase_QuickCheckResult;
	
	/**
	* Indicates that string is in the normalized format
	* @stable ICU 2.8
	*/
	public static var YES(default, null) : NormalizerBase_QuickCheckResult;
	
	/**
	* Indicates it cannot be determined if string is in the normalized
	* format without further thorough checks.
	* @stable ICU 2.8
	*/
	public static var MAYBE(default, null) : NormalizerBase_QuickCheckResult;
	
	/**
	* Creates a new <tt>Normalizer</tt> object for iterating over the
	* normalized form of a given string.
	* <p>
	* The <tt>options</tt> parameter specifies which optional
	* <tt>Normalizer</tt> features are to be enabled for this object.
	* <p>
	* @param str  The string to be normalized.  The normalization
	*              will start at the beginning of the string.
	*
	* @param mode The normalization mode.
	*
	* @param opt Any optional features to be enabled.
	*            Currently the only available option is {@link #UNICODE_3_2}.
	*            If you want the default behavior corresponding to one of the
	*            standard Unicode Normalization Forms, use 0 for this argument.
	* @stable ICU 2.6
	*/
	@:overload public function new(str : String, mode : NormalizerBase_Mode, opt : Int) : Void;
	
	/**
	* Creates a new <tt>Normalizer</tt> object for iterating over the
	* normalized form of the given text.
	* <p>
	* @param iter  The input text to be normalized.  The normalization
	*              will start at the beginning of the string.
	*
	* @param mode  The normalization mode.
	*/
	@:overload public function new(iter : java.text.CharacterIterator, mode : NormalizerBase_Mode) : Void;
	
	/**
	* Creates a new <tt>Normalizer</tt> object for iterating over the
	* normalized form of the given text.
	* <p>
	* @param iter  The input text to be normalized.  The normalization
	*              will start at the beginning of the string.
	*
	* @param mode  The normalization mode.
	*
	* @param opt Any optional features to be enabled.
	*            Currently the only available option is {@link #UNICODE_3_2}.
	*            If you want the default behavior corresponding to one of the
	*            standard Unicode Normalization Forms, use 0 for this argument.
	* @stable ICU 2.6
	*/
	@:overload public function new(iter : java.text.CharacterIterator, mode : NormalizerBase_Mode, opt : Int) : Void;
	
	/**
	* Clones this <tt>Normalizer</tt> object.  All properties of this
	* object are duplicated in the new object, including the cloning of any
	* {@link CharacterIterator} that was passed in to the constructor
	* or to {@link #setText(CharacterIterator) setText}.
	* However, the text storage underlying
	* the <tt>CharacterIterator</tt> is not duplicated unless the
	* iterator's <tt>clone</tt> method does so.
	* @stable ICU 2.8
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Compose a string.
	* The string will be composed to according the the specified mode.
	* @param str        The string to compose.
	* @param compat     If true the string will be composed accoding to
	*                    NFKC rules and if false will be composed according to
	*                    NFC rules.
	* @param options    The only recognized option is UNICODE_3_2
	* @return String    The composed string
	* @stable ICU 2.6
	*/
	@:overload public static function compose(str : String, compat : Bool, options : Int) : String;
	
	/**
	* Decompose a string.
	* The string will be decomposed to according the the specified mode.
	* @param str       The string to decompose.
	* @param compat    If true the string will be decomposed accoding to NFKD
	*                   rules and if false will be decomposed according to NFD
	*                   rules.
	* @return String   The decomposed string
	* @stable ICU 2.8
	*/
	@:overload public static function decompose(str : String, compat : Bool) : String;
	
	/**
	* Decompose a string.
	* The string will be decomposed to according the the specified mode.
	* @param str     The string to decompose.
	* @param compat  If true the string will be decomposed accoding to NFKD
	*                 rules and if false will be decomposed according to NFD
	*                 rules.
	* @param options The normalization options, ORed together (0 for no options).
	* @return String The decomposed string
	* @stable ICU 2.6
	*/
	@:overload public static function decompose(str : String, compat : Bool, options : Int) : String;
	
	/**
	* Normalize a string.
	* The string will be normalized according the the specified normalization
	* mode and options.
	* @param src       The char array to compose.
	* @param srcStart  Start index of the source
	* @param srcLimit  Limit index of the source
	* @param dest      The char buffer to fill in
	* @param destStart Start index of the destination buffer
	* @param destLimit End index of the destination buffer
	* @param mode      The normalization mode; one of Normalizer.NONE,
	*                   Normalizer.NFD, Normalizer.NFC, Normalizer.NFKC,
	*                   Normalizer.NFKD, Normalizer.DEFAULT
	* @param options The normalization options, ORed together (0 for no options).
	* @return int      The total buffer size needed;if greater than length of
	*                   result, the output was truncated.
	* @exception       IndexOutOfBoundsException if the target capacity is
	*                   less than the required length
	* @stable ICU 2.6
	*/
	@:overload public static function normalize(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, mode : NormalizerBase_Mode, options : Int) : Int;
	
	/**
	* Return the current character in the normalized text->
	* @return The codepoint as an int
	* @stable ICU 2.8
	*/
	@:overload public function current() : Int;
	
	/**
	* Return the next character in the normalized text and advance
	* the iteration position by one.  If the end
	* of the text has already been reached, {@link #DONE} is returned.
	* @return The codepoint as an int
	* @stable ICU 2.8
	*/
	@:overload public function next() : Int;
	
	/**
	* Return the previous character in the normalized text and decrement
	* the iteration position by one.  If the beginning
	* of the text has already been reached, {@link #DONE} is returned.
	* @return The codepoint as an int
	* @stable ICU 2.8
	*/
	@:overload public function previous() : Int;
	
	/**
	* Reset the index to the beginning of the text.
	* This is equivalent to setIndexOnly(startIndex)).
	* @stable ICU 2.8
	*/
	@:overload public function reset() : Void;
	
	/**
	* Set the iteration position in the input text that is being normalized,
	* without any immediate normalization.
	* After setIndexOnly(), getIndex() will return the same index that is
	* specified here.
	*
	* @param index the desired index in the input text.
	* @stable ICU 2.8
	*/
	@:overload public function setIndexOnly(index : Int) : Void;
	
	/**
	* Set the iteration position in the input text that is being normalized
	* and return the first normalized character at that position.
	* <p>
	* <b>Note:</b> This method sets the position in the <em>input</em> text,
	* while {@link #next} and {@link #previous} iterate through characters
	* in the normalized <em>output</em>.  This means that there is not
	* necessarily a one-to-one correspondence between characters returned
	* by <tt>next</tt> and <tt>previous</tt> and the indices passed to and
	* returned from <tt>setIndex</tt> and {@link #getIndex}.
	* <p>
	* @param index the desired index in the input text->
	*
	* @return   the first normalized character that is the result of iterating
	*            forward starting at the given index.
	*
	* @throws IllegalArgumentException if the given index is less than
	*          {@link #getBeginIndex} or greater than {@link #getEndIndex}.
	* @return The codepoint as an int
	* @deprecated ICU 3.2
	* @obsolete ICU 3.2
	*/
	@:overload public function setIndex(index : Int) : Int;
	
	/**
	* Retrieve the index of the start of the input text. This is the begin
	* index of the <tt>CharacterIterator</tt> or the start (i.e. 0) of the
	* <tt>String</tt> over which this <tt>Normalizer</tt> is iterating
	* @deprecated ICU 2.2. Use startIndex() instead.
	* @return The codepoint as an int
	* @see #startIndex
	*/
	@:overload public function getBeginIndex() : Int;
	
	/**
	* Retrieve the index of the end of the input text.  This is the end index
	* of the <tt>CharacterIterator</tt> or the length of the <tt>String</tt>
	* over which this <tt>Normalizer</tt> is iterating
	* @deprecated ICU 2.2. Use endIndex() instead.
	* @return The codepoint as an int
	* @see #endIndex
	*/
	@:overload public function getEndIndex() : Int;
	
	/**
	* Retrieve the current iteration position in the input text that is
	* being normalized.  This method is useful in applications such as
	* searching, where you need to be able to determine the position in
	* the input text that corresponds to a given normalized output character.
	* <p>
	* <b>Note:</b> This method sets the position in the <em>input</em>, while
	* {@link #next} and {@link #previous} iterate through characters in the
	* <em>output</em>.  This means that there is not necessarily a one-to-one
	* correspondence between characters returned by <tt>next</tt> and
	* <tt>previous</tt> and the indices passed to and returned from
	* <tt>setIndex</tt> and {@link #getIndex}.
	* @return The current iteration position
	* @stable ICU 2.8
	*/
	@:overload public function getIndex() : Int;
	
	/**
	* Retrieve the index of the end of the input text->  This is the end index
	* of the <tt>CharacterIterator</tt> or the length of the <tt>String</tt>
	* over which this <tt>Normalizer</tt> is iterating
	* @return The current iteration position
	* @stable ICU 2.8
	*/
	@:overload public function endIndex() : Int;
	
	/**
	* Set the normalization mode for this object.
	* <p>
	* <b>Note:</b>If the normalization mode is changed while iterating
	* over a string, calls to {@link #next} and {@link #previous} may
	* return previously buffers characters in the old normalization mode
	* until the iteration is able to re-sync at the next base character.
	* It is safest to call {@link #setText setText()}, {@link #first},
	* {@link #last}, etc. after calling <tt>setMode</tt>.
	* <p>
	* @param newMode the new mode for this <tt>Normalizer</tt>.
	* The supported modes are:
	* <ul>
	*  <li>{@link #COMPOSE}        - Unicode canonical decompositiion
	*                                  followed by canonical composition.
	*  <li>{@link #COMPOSE_COMPAT} - Unicode compatibility decompositiion
	*                                  follwed by canonical composition.
	*  <li>{@link #DECOMP}         - Unicode canonical decomposition
	*  <li>{@link #DECOMP_COMPAT}  - Unicode compatibility decomposition.
	*  <li>{@link #NO_OP}          - Do nothing but return characters
	*                                  from the underlying input text.
	* </ul>
	*
	* @see #getMode
	* @stable ICU 2.8
	*/
	@:overload public function setMode(newMode : NormalizerBase_Mode) : Void;
	
	/**
	* Return the basic operation performed by this <tt>Normalizer</tt>
	*
	* @see #setMode
	* @stable ICU 2.8
	*/
	@:overload public function getMode() : NormalizerBase_Mode;
	
	/**
	* Set the input text over which this <tt>Normalizer</tt> will iterate.
	* The iteration position is set to the beginning of the input text->
	* @param newText   The new string to be normalized.
	* @stable ICU 2.8
	*/
	@:overload public function setText(newText : String) : Void;
	
	/**
	* Set the input text over which this <tt>Normalizer</tt> will iterate.
	* The iteration position is set to the beginning of the input text->
	* @param newText   The new string to be normalized.
	* @stable ICU 2.8
	*/
	@:overload public function setText(newText : java.text.CharacterIterator) : Void;
	
	/**
	* Internal API
	* @internal
	*/
	@:overload public static function isNFSkippable(c : Int, mode : NormalizerBase_Mode) : Bool;
	
	/*
	* Default option for Unicode 3.2.0 normalization.
	* Corrigendum 4 was fixed in Unicode 3.2.0 but isn't supported in
	* IDNA/StringPrep.
	* The public review issue #29 was fixed in Unicode 4.1.0. Corrigendum 5
	* allowed Unicode 3.2 to 4.0.1 to apply the fix for PRI #29, but it isn't
	* supported by IDNA/StringPrep as well as Corrigendum 4.
	*/
	public static var UNICODE_3_2_0_ORIGINAL(default, null) : Int;
	
	/*
	* Default option for the latest Unicode normalization. This option is
	* provided mainly for testing.
	* The value zero means that normalization is done with the fixes for
	*   - Corrigendum 4 (Five CJK Canonical Mapping Errors)
	*   - Corrigendum 5 (Normalization Idempotency)
	*/
	public static var UNICODE_LATEST(default, null) : Int;
	
	/**
	* Creates a new <tt>Normalizer</tt> object for iterating over the
	* normalized form of a given string.
	*
	* @param str  The string to be normalized.  The normalization
	*              will start at the beginning of the string.
	*
	* @param mode The normalization mode.
	*/
	@:overload public function new(str : String, mode : NormalizerBase_Mode) : Void;
	
	/**
	* Normalizes a <code>String</code> using the given normalization form.
	*
	* @param str      the input string to be normalized.
	* @param form     the normalization form
	*/
	@:overload public static function normalize(str : String, form : java.text.Normalizer.Normalizer_Form) : String;
	
	/**
	* Normalizes a <code>String</code> using the given normalization form.
	*
	* @param str      the input string to be normalized.
	* @param form     the normalization form
	* @param options   the optional features to be enabled.
	*/
	@:overload public static function normalize(str : String, form : java.text.Normalizer.Normalizer_Form, options : Int) : String;
	
	/**
	* Test if a string is in a given normalization form.
	* This is semantically equivalent to source.equals(normalize(source, mode)).
	*
	* Unlike quickCheck(), this function returns a definitive result,
	* never a "maybe".
	* For NFD, NFKD, and FCD, both functions work exactly the same.
	* For NFC and NFKC where quickCheck may return "maybe", this function will
	* perform further tests to arrive at a true/false result.
	* @param str       the input string to be checked to see if it is normalized
	* @param form      the normalization form
	* @param options   the optional features to be enabled.
	*/
	@:overload public static function isNormalized(str : String, form : java.text.Normalizer.Normalizer_Form) : Bool;
	
	/**
	* Test if a string is in a given normalization form.
	* This is semantically equivalent to source.equals(normalize(source, mode)).
	*
	* Unlike quickCheck(), this function returns a definitive result,
	* never a "maybe".
	* For NFD, NFKD, and FCD, both functions work exactly the same.
	* For NFC and NFKC where quickCheck may return "maybe", this function will
	* perform further tests to arrive at a true/false result.
	* @param str       the input string to be checked to see if it is normalized
	* @param form      the normalization form
	* @param options   the optional features to be enabled.
	*/
	@:overload public static function isNormalized(str : String, form : java.text.Normalizer.Normalizer_Form, options : Int) : Bool;
	
	
}
/**
* Constants for normalization modes.
* @stable ICU 2.8
*/
@:native('sun$text$normalizer$NormalizerBase$Mode') extern class NormalizerBase_Mode
{
	/**
	* This method is used for method dispatch
	* @stable ICU 2.6
	*/
	@:overload private function normalize(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, nx : sun.text.normalizer.UnicodeSet) : Int;
	
	/**
	* This method is used for method dispatch
	* @stable ICU 2.6
	*/
	@:overload private function normalize(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, options : Int) : Int;
	
	/**
	* This method is used for method dispatch
	* @stable ICU 2.6
	*/
	@:overload private function normalize(src : String, options : Int) : String;
	
	/**
	* This method is used for method dispatch
	* @stable ICU 2.8
	*/
	@:overload private function getMinC() : Int;
	
	/**
	* This method is used for method dispatch
	* @stable ICU 2.8
	*/
	@:overload private function getMask() : Int;
	
	/**
	* This method is used for method dispatch
	* @stable ICU 2.8
	*/
	@:overload private function getPrevBoundary() : NormalizerBase_IsPrevBoundary;
	
	/**
	* This method is used for method dispatch
	* @stable ICU 2.8
	*/
	@:overload private function getNextBoundary() : NormalizerBase_IsNextBoundary;
	
	/**
	* This method is used for method dispatch
	* @stable ICU 2.6
	*/
	@:overload private function quickCheck(src : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int, allowMaybe : Bool, nx : sun.text.normalizer.UnicodeSet) : NormalizerBase_QuickCheckResult;
	
	/**
	* This method is used for method dispatch
	* @stable ICU 2.8
	*/
	@:overload private function isNFSkippable(c : Int) : Bool;
	
	
}
@:native('sun$text$normalizer$NormalizerBase$NFDMode') @:internal extern class NormalizerBase_NFDMode extends NormalizerBase_Mode
{
	@:overload override private function normalize(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, nx : sun.text.normalizer.UnicodeSet) : Int;
	
	@:overload override private function normalize(src : String, options : Int) : String;
	
	@:overload override private function getMinC() : Int;
	
	@:overload override private function getPrevBoundary() : NormalizerBase_IsPrevBoundary;
	
	@:overload override private function getNextBoundary() : NormalizerBase_IsNextBoundary;
	
	@:overload override private function getMask() : Int;
	
	@:overload override private function quickCheck(src : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int, allowMaybe : Bool, nx : sun.text.normalizer.UnicodeSet) : NormalizerBase_QuickCheckResult;
	
	@:overload override private function isNFSkippable(c : Int) : Bool;
	
	
}
@:native('sun$text$normalizer$NormalizerBase$NFKDMode') @:internal extern class NormalizerBase_NFKDMode extends NormalizerBase_Mode
{
	@:overload override private function normalize(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, nx : sun.text.normalizer.UnicodeSet) : Int;
	
	@:overload override private function normalize(src : String, options : Int) : String;
	
	@:overload override private function getMinC() : Int;
	
	@:overload override private function getPrevBoundary() : NormalizerBase_IsPrevBoundary;
	
	@:overload override private function getNextBoundary() : NormalizerBase_IsNextBoundary;
	
	@:overload override private function getMask() : Int;
	
	@:overload override private function quickCheck(src : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int, allowMaybe : Bool, nx : sun.text.normalizer.UnicodeSet) : NormalizerBase_QuickCheckResult;
	
	@:overload override private function isNFSkippable(c : Int) : Bool;
	
	
}
@:native('sun$text$normalizer$NormalizerBase$NFCMode') @:internal extern class NormalizerBase_NFCMode extends NormalizerBase_Mode
{
	@:overload override private function normalize(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, nx : sun.text.normalizer.UnicodeSet) : Int;
	
	@:overload override private function normalize(src : String, options : Int) : String;
	
	@:overload override private function getMinC() : Int;
	
	@:overload override private function getPrevBoundary() : NormalizerBase_IsPrevBoundary;
	
	@:overload override private function getNextBoundary() : NormalizerBase_IsNextBoundary;
	
	@:overload override private function getMask() : Int;
	
	@:overload override private function quickCheck(src : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int, allowMaybe : Bool, nx : sun.text.normalizer.UnicodeSet) : NormalizerBase_QuickCheckResult;
	
	@:overload override private function isNFSkippable(c : Int) : Bool;
	
	
}
@:native('sun$text$normalizer$NormalizerBase$NFKCMode') @:internal extern class NormalizerBase_NFKCMode extends NormalizerBase_Mode
{
	@:overload override private function normalize(src : java.NativeArray<java.StdTypes.Char16>, srcStart : Int, srcLimit : Int, dest : java.NativeArray<java.StdTypes.Char16>, destStart : Int, destLimit : Int, nx : sun.text.normalizer.UnicodeSet) : Int;
	
	@:overload override private function normalize(src : String, options : Int) : String;
	
	@:overload override private function getMinC() : Int;
	
	@:overload override private function getPrevBoundary() : NormalizerBase_IsPrevBoundary;
	
	@:overload override private function getNextBoundary() : NormalizerBase_IsNextBoundary;
	
	@:overload override private function getMask() : Int;
	
	@:overload override private function quickCheck(src : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int, allowMaybe : Bool, nx : sun.text.normalizer.UnicodeSet) : NormalizerBase_QuickCheckResult;
	
	@:overload override private function isNFSkippable(c : Int) : Bool;
	
	
}
/**
* Result values for quickCheck().
* For details see Unicode Technical Report 15.
* @stable ICU 2.8
*/
@:native('sun$text$normalizer$NormalizerBase$QuickCheckResult') extern class NormalizerBase_QuickCheckResult
{
	
}
@:native('sun$text$normalizer$NormalizerBase$IsPrevBoundary') @:internal extern interface NormalizerBase_IsPrevBoundary
{
	@:overload public function isPrevBoundary(src : sun.text.normalizer.UCharacterIterator, minC : Int, mask : Int, chars : java.NativeArray<java.StdTypes.Char16>) : Bool;
	
	
}
@:native('sun$text$normalizer$NormalizerBase$IsPrevNFDSafe') @:internal extern class NormalizerBase_IsPrevNFDSafe implements NormalizerBase_IsPrevBoundary
{
	/*
	* for NF*D:
	* read backwards and check if the lead combining class is 0
	* if c2!=0 then (c2, c) is a surrogate pair (reversed - c2 is first
	* surrogate but read second!)
	*/
	@:overload public function isPrevBoundary(src : sun.text.normalizer.UCharacterIterator, minC : Int, ccOrQCMask : Int, chars : java.NativeArray<java.StdTypes.Char16>) : Bool;
	
	
}
@:native('sun$text$normalizer$NormalizerBase$IsPrevTrueStarter') @:internal extern class NormalizerBase_IsPrevTrueStarter implements NormalizerBase_IsPrevBoundary
{
	/*
	* read backwards and check if the character is (or its decomposition
	* begins with) a "true starter" (cc==0 and NF*C_YES)
	* if c2!=0 then (c2, c) is a surrogate pair (reversed - c2 is first
	* surrogate but read second!)
	*/
	@:overload public function isPrevBoundary(src : sun.text.normalizer.UCharacterIterator, minC : Int, ccOrQCMask : Int, chars : java.NativeArray<java.StdTypes.Char16>) : Bool;
	
	
}
/*
* read forward and check if the character is a next-iteration boundary
* if c2!=0 then (c, c2) is a surrogate pair
*/
@:native('sun$text$normalizer$NormalizerBase$IsNextBoundary') @:internal extern interface NormalizerBase_IsNextBoundary
{
	@:overload public function isNextBoundary(src : sun.text.normalizer.UCharacterIterator, minC : Int, mask : Int, chars : java.NativeArray<Int>) : Bool;
	
	
}
/*
* for NF*D:
* read forward and check if the lead combining class is 0
* if c2!=0 then (c, c2) is a surrogate pair
*/
@:native('sun$text$normalizer$NormalizerBase$IsNextNFDSafe') @:internal extern class NormalizerBase_IsNextNFDSafe implements NormalizerBase_IsNextBoundary
{
	@:overload public function isNextBoundary(src : sun.text.normalizer.UCharacterIterator, minC : Int, ccOrQCMask : Int, chars : java.NativeArray<Int>) : Bool;
	
	
}
/*
* for NF*C:
* read forward and check if the character is (or its decomposition begins
* with) a "true starter" (cc==0 and NF*C_YES)
* if c2!=0 then (c, c2) is a surrogate pair
*/
@:native('sun$text$normalizer$NormalizerBase$IsNextTrueStarter') @:internal extern class NormalizerBase_IsNextTrueStarter implements NormalizerBase_IsNextBoundary
{
	@:overload public function isNextBoundary(src : sun.text.normalizer.UCharacterIterator, minC : Int, ccOrQCMask : Int, chars : java.NativeArray<Int>) : Bool;
	
	
}
