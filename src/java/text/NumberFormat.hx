package java.text;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class NumberFormat extends java.text.Format
{
	/**
	* Field constant used to construct a FieldPosition object. Signifies that
	* the position of the integer part of a formatted number should be returned.
	* @see java.text.FieldPosition
	*/
	public static var INTEGER_FIELD(default, null) : Int;
	
	/**
	* Field constant used to construct a FieldPosition object. Signifies that
	* the position of the fraction part of a formatted number should be returned.
	* @see java.text.FieldPosition
	*/
	public static var FRACTION_FIELD(default, null) : Int;
	
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload private function new() : Void;
	
	/**
	* Formats a number and appends the resulting text to the given string
	* buffer.
	* The number can be of any subclass of {@link java.lang.Number}.
	* <p>
	* This implementation extracts the number's value using
	* {@link java.lang.Number#longValue()} for all integral type values that
	* can be converted to <code>long</code> without loss of information,
	* including <code>BigInteger</code> values with a
	* {@link java.math.BigInteger#bitLength() bit length} of less than 64,
	* and {@link java.lang.Number#doubleValue()} for all other types. It
	* then calls
	* {@link #format(long,java.lang.StringBuffer,java.text.FieldPosition)}
	* or {@link #format(double,java.lang.StringBuffer,java.text.FieldPosition)}.
	* This may result in loss of magnitude information and precision for
	* <code>BigInteger</code> and <code>BigDecimal</code> values.
	* @param number     the number to format
	* @param toAppendTo the <code>StringBuffer</code> to which the formatted
	*                   text is to be appended
	* @param pos        On input: an alignment field, if desired.
	*                   On output: the offsets of the alignment field.
	* @return           the value passed in as <code>toAppendTo</code>
	* @exception        IllegalArgumentException if <code>number</code> is
	*                   null or not an instance of <code>Number</code>.
	* @exception        NullPointerException if <code>toAppendTo</code> or
	*                   <code>pos</code> is null
	* @exception        ArithmeticException if rounding is needed with rounding
	*                   mode being set to RoundingMode.UNNECESSARY
	* @see              java.text.FieldPosition
	*/
	@:overload public function format(number : Dynamic, toAppendTo : java.lang.StringBuffer, pos : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Parses text from a string to produce a <code>Number</code>.
	* <p>
	* The method attempts to parse text starting at the index given by
	* <code>pos</code>.
	* If parsing succeeds, then the index of <code>pos</code> is updated
	* to the index after the last character used (parsing does not necessarily
	* use all characters up to the end of the string), and the parsed
	* number is returned. The updated <code>pos</code> can be used to
	* indicate the starting point for the next call to this method.
	* If an error occurs, then the index of <code>pos</code> is not
	* changed, the error index of <code>pos</code> is set to the index of
	* the character where the error occurred, and null is returned.
	* <p>
	* See the {@link #parse(String, ParsePosition)} method for more information
	* on number parsing.
	*
	* @param source A <code>String</code>, part of which should be parsed.
	* @param pos A <code>ParsePosition</code> object with index and error
	*            index information as described above.
	* @return A <code>Number</code> parsed from the string. In case of
	*         error, returns null.
	* @exception NullPointerException if <code>pos</code> is null.
	*/
	@:overload @:final public function parseObject(source : String, pos : java.text.ParsePosition) : Dynamic;
	
	/**
	* Specialization of format.
	* @exception        ArithmeticException if rounding is needed with rounding
	*                   mode being set to RoundingMode.UNNECESSARY
	* @see java.text.Format#format
	*/
	@:overload @:final public function format(number : Float) : String;
	
	/**
	* Specialization of format.
	* @exception        ArithmeticException if rounding is needed with rounding
	*                   mode being set to RoundingMode.UNNECESSARY
	* @see java.text.Format#format
	*/
	@:overload @:final public function format(number : haxe.Int64) : String;
	
	/**
	* Specialization of format.
	* @exception        ArithmeticException if rounding is needed with rounding
	*                   mode being set to RoundingMode.UNNECESSARY
	* @see java.text.Format#format
	*/
	@:overload @:abstract public function format(number : Float, toAppendTo : java.lang.StringBuffer, pos : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Specialization of format.
	* @exception        ArithmeticException if rounding is needed with rounding
	*                   mode being set to RoundingMode.UNNECESSARY
	* @see java.text.Format#format
	*/
	@:overload @:abstract public function format(number : haxe.Int64, toAppendTo : java.lang.StringBuffer, pos : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Returns a Long if possible (e.g., within the range [Long.MIN_VALUE,
	* Long.MAX_VALUE] and with no decimals), otherwise a Double.
	* If IntegerOnly is set, will stop at a decimal
	* point (or equivalent; e.g., for rational numbers "1 2/3", will stop
	* after the 1).
	* Does not throw an exception; if no object can be parsed, index is
	* unchanged!
	* @see java.text.NumberFormat#isParseIntegerOnly
	* @see java.text.Format#parseObject
	*/
	@:overload @:abstract public function parse(source : String, parsePosition : java.text.ParsePosition) : java.lang.Number;
	
	/**
	* Parses text from the beginning of the given string to produce a number.
	* The method may not use the entire text of the given string.
	* <p>
	* See the {@link #parse(String, ParsePosition)} method for more information
	* on number parsing.
	*
	* @param source A <code>String</code> whose beginning should be parsed.
	* @return A <code>Number</code> parsed from the string.
	* @exception ParseException if the beginning of the specified string
	*            cannot be parsed.
	*/
	@:overload public function parse(source : String) : java.lang.Number;
	
	/**
	* Returns true if this format will parse numbers as integers only.
	* For example in the English locale, with ParseIntegerOnly true, the
	* string "1234." would be parsed as the integer value 1234 and parsing
	* would stop at the "." character.  Of course, the exact format accepted
	* by the parse operation is locale dependant and determined by sub-classes
	* of NumberFormat.
	*/
	@:overload public function isParseIntegerOnly() : Bool;
	
	/**
	* Sets whether or not numbers should be parsed as integers only.
	* @see #isParseIntegerOnly
	*/
	@:overload public function setParseIntegerOnly(value : Bool) : Void;
	
	/**
	* Returns a general-purpose number format for the current default locale.
	* This is the same as calling
	* {@link #getNumberInstance() getNumberInstance()}.
	*/
	@:overload @:final public static function getInstance() : java.text.NumberFormat;
	
	/**
	* Returns a general-purpose number format for the specified locale.
	* This is the same as calling
	* {@link #getNumberInstance(java.util.Locale) getNumberInstance(inLocale)}.
	*/
	@:overload public static function getInstance(inLocale : java.util.Locale) : java.text.NumberFormat;
	
	/**
	* Returns a general-purpose number format for the current default locale.
	*/
	@:overload @:final public static function getNumberInstance() : java.text.NumberFormat;
	
	/**
	* Returns a general-purpose number format for the specified locale.
	*/
	@:overload public static function getNumberInstance(inLocale : java.util.Locale) : java.text.NumberFormat;
	
	/**
	* Returns an integer number format for the current default locale. The
	* returned number format is configured to round floating point numbers
	* to the nearest integer using half-even rounding (see {@link
	* java.math.RoundingMode#HALF_EVEN RoundingMode.HALF_EVEN}) for formatting,
	* and to parse only the integer part of an input string (see {@link
	* #isParseIntegerOnly isParseIntegerOnly}).
	*
	* @see #getRoundingMode()
	* @return a number format for integer values
	* @since 1.4
	*/
	@:require(java4) @:overload @:final public static function getIntegerInstance() : java.text.NumberFormat;
	
	/**
	* Returns an integer number format for the specified locale. The
	* returned number format is configured to round floating point numbers
	* to the nearest integer using half-even rounding (see {@link
	* java.math.RoundingMode#HALF_EVEN RoundingMode.HALF_EVEN}) for formatting,
	* and to parse only the integer part of an input string (see {@link
	* #isParseIntegerOnly isParseIntegerOnly}).
	*
	* @see #getRoundingMode()
	* @return a number format for integer values
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getIntegerInstance(inLocale : java.util.Locale) : java.text.NumberFormat;
	
	/**
	* Returns a currency format for the current default locale.
	*/
	@:overload @:final public static function getCurrencyInstance() : java.text.NumberFormat;
	
	/**
	* Returns a currency format for the specified locale.
	*/
	@:overload public static function getCurrencyInstance(inLocale : java.util.Locale) : java.text.NumberFormat;
	
	/**
	* Returns a percentage format for the current default locale.
	*/
	@:overload @:final public static function getPercentInstance() : java.text.NumberFormat;
	
	/**
	* Returns a percentage format for the specified locale.
	*/
	@:overload public static function getPercentInstance(inLocale : java.util.Locale) : java.text.NumberFormat;
	
	/**
	* Returns an array of all locales for which the
	* <code>get*Instance</code> methods of this class can return
	* localized instances.
	* The returned array represents the union of locales supported by the Java
	* runtime and by installed
	* {@link java.text.spi.NumberFormatProvider NumberFormatProvider} implementations.
	* It must contain at least a <code>Locale</code> instance equal to
	* {@link java.util.Locale#US Locale.US}.
	*
	* @return An array of locales for which localized
	*         <code>NumberFormat</code> instances are available.
	*/
	@:overload public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Overrides hashCode
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Overrides equals
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Overrides Cloneable
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Returns true if grouping is used in this format. For example, in the
	* English locale, with grouping on, the number 1234567 might be formatted
	* as "1,234,567". The grouping separator as well as the size of each group
	* is locale dependant and is determined by sub-classes of NumberFormat.
	* @see #setGroupingUsed
	*/
	@:overload public function isGroupingUsed() : Bool;
	
	/**
	* Set whether or not grouping will be used in this format.
	* @see #isGroupingUsed
	*/
	@:overload public function setGroupingUsed(newValue : Bool) : Void;
	
	/**
	* Returns the maximum number of digits allowed in the integer portion of a
	* number.
	* @see #setMaximumIntegerDigits
	*/
	@:overload public function getMaximumIntegerDigits() : Int;
	
	/**
	* Sets the maximum number of digits allowed in the integer portion of a
	* number. maximumIntegerDigits must be >= minimumIntegerDigits.  If the
	* new value for maximumIntegerDigits is less than the current value
	* of minimumIntegerDigits, then minimumIntegerDigits will also be set to
	* the new value.
	* @param newValue the maximum number of integer digits to be shown; if
	* less than zero, then zero is used. The concrete subclass may enforce an
	* upper limit to this value appropriate to the numeric type being formatted.
	* @see #getMaximumIntegerDigits
	*/
	@:overload public function setMaximumIntegerDigits(newValue : Int) : Void;
	
	/**
	* Returns the minimum number of digits allowed in the integer portion of a
	* number.
	* @see #setMinimumIntegerDigits
	*/
	@:overload public function getMinimumIntegerDigits() : Int;
	
	/**
	* Sets the minimum number of digits allowed in the integer portion of a
	* number. minimumIntegerDigits must be <= maximumIntegerDigits.  If the
	* new value for minimumIntegerDigits exceeds the current value
	* of maximumIntegerDigits, then maximumIntegerDigits will also be set to
	* the new value
	* @param newValue the minimum number of integer digits to be shown; if
	* less than zero, then zero is used. The concrete subclass may enforce an
	* upper limit to this value appropriate to the numeric type being formatted.
	* @see #getMinimumIntegerDigits
	*/
	@:overload public function setMinimumIntegerDigits(newValue : Int) : Void;
	
	/**
	* Returns the maximum number of digits allowed in the fraction portion of a
	* number.
	* @see #setMaximumFractionDigits
	*/
	@:overload public function getMaximumFractionDigits() : Int;
	
	/**
	* Sets the maximum number of digits allowed in the fraction portion of a
	* number. maximumFractionDigits must be >= minimumFractionDigits.  If the
	* new value for maximumFractionDigits is less than the current value
	* of minimumFractionDigits, then minimumFractionDigits will also be set to
	* the new value.
	* @param newValue the maximum number of fraction digits to be shown; if
	* less than zero, then zero is used. The concrete subclass may enforce an
	* upper limit to this value appropriate to the numeric type being formatted.
	* @see #getMaximumFractionDigits
	*/
	@:overload public function setMaximumFractionDigits(newValue : Int) : Void;
	
	/**
	* Returns the minimum number of digits allowed in the fraction portion of a
	* number.
	* @see #setMinimumFractionDigits
	*/
	@:overload public function getMinimumFractionDigits() : Int;
	
	/**
	* Sets the minimum number of digits allowed in the fraction portion of a
	* number. minimumFractionDigits must be <= maximumFractionDigits.  If the
	* new value for minimumFractionDigits exceeds the current value
	* of maximumFractionDigits, then maximumIntegerDigits will also be set to
	* the new value
	* @param newValue the minimum number of fraction digits to be shown; if
	* less than zero, then zero is used. The concrete subclass may enforce an
	* upper limit to this value appropriate to the numeric type being formatted.
	* @see #getMinimumFractionDigits
	*/
	@:overload public function setMinimumFractionDigits(newValue : Int) : Void;
	
	/**
	* Gets the currency used by this number format when formatting
	* currency values. The initial value is derived in a locale dependent
	* way. The returned value may be null if no valid
	* currency could be determined and no currency has been set using
	* {@link #setCurrency(java.util.Currency) setCurrency}.
	* <p>
	* The default implementation throws
	* <code>UnsupportedOperationException</code>.
	*
	* @return the currency used by this number format, or <code>null</code>
	* @exception UnsupportedOperationException if the number format class
	* doesn't implement currency formatting
	* @since 1.4
	*/
	@:require(java4) @:overload public function getCurrency() : java.util.Currency;
	
	/**
	* Sets the currency used by this number format when formatting
	* currency values. This does not update the minimum or maximum
	* number of fraction digits used by the number format.
	* <p>
	* The default implementation throws
	* <code>UnsupportedOperationException</code>.
	*
	* @param currency the new currency to be used by this number format
	* @exception UnsupportedOperationException if the number format class
	* doesn't implement currency formatting
	* @exception NullPointerException if <code>currency</code> is null
	* @since 1.4
	*/
	@:require(java4) @:overload public function setCurrency(currency : java.util.Currency) : Void;
	
	/**
	* Gets the {@link java.math.RoundingMode} used in this NumberFormat.
	* The default implementation of this method in NumberFormat
	* always throws {@link java.lang.UnsupportedOperationException}.
	* Subclasses which handle different rounding modes should override
	* this method.
	*
	* @exception UnsupportedOperationException The default implementation
	*     always throws this exception
	* @return The <code>RoundingMode</code> used for this NumberFormat.
	* @see #setRoundingMode(RoundingMode)
	* @since 1.6
	*/
	@:require(java6) @:overload public function getRoundingMode() : java.math.RoundingMode;
	
	/**
	* Sets the {@link java.math.RoundingMode} used in this NumberFormat.
	* The default implementation of this method in NumberFormat always
	* throws {@link java.lang.UnsupportedOperationException}.
	* Subclasses which handle different rounding modes should override
	* this method.
	*
	* @exception UnsupportedOperationException The default implementation
	*     always throws this exception
	* @exception NullPointerException if <code>roundingMode</code> is null
	* @param roundingMode The <code>RoundingMode</code> to be used
	* @see #getRoundingMode()
	* @since 1.6
	*/
	@:require(java6) @:overload public function setRoundingMode(roundingMode : java.math.RoundingMode) : Void;
	
	
}
/**
* Defines constants that are used as attribute keys in the
* <code>AttributedCharacterIterator</code> returned
* from <code>NumberFormat.formatToCharacterIterator</code> and as
* field identifiers in <code>FieldPosition</code>.
*
* @since 1.4
*/
@:require(java4) @:native('java$text$NumberFormat$Field') extern class NumberFormat_Field extends java.text.Format.Format_Field
{
	/**
	* Creates a Field instance with the specified
	* name.
	*
	* @param name Name of the attribute
	*/
	@:overload private function new(name : String) : Void;
	
	/**
	* Resolves instances being deserialized to the predefined constants.
	*
	* @throws InvalidObjectException if the constant could not be resolved.
	* @return resolved NumberFormat.Field constant
	*/
	@:overload override private function readResolve() : Dynamic;
	
	/**
	* Constant identifying the integer field.
	*/
	public static var INTEGER(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the fraction field.
	*/
	public static var FRACTION(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the exponent field.
	*/
	public static var EXPONENT(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the decimal separator field.
	*/
	public static var DECIMAL_SEPARATOR(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the sign field.
	*/
	public static var SIGN(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the grouping separator field.
	*/
	public static var GROUPING_SEPARATOR(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the exponent symbol field.
	*/
	public static var EXPONENT_SYMBOL(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the percent field.
	*/
	public static var PERCENT(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the permille field.
	*/
	public static var PERMILLE(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the currency field.
	*/
	public static var CURRENCY(default, null) : java.text.Format.Format_Field;
	
	/**
	* Constant identifying the exponent sign field.
	*/
	public static var EXPONENT_SIGN(default, null) : java.text.Format.Format_Field;
	
	
}
/**
* Obtains a NumberFormat instance from a NumberFormatProvider implementation.
*/
@:native('java$text$NumberFormat$NumberFormatGetter') @:internal extern class NumberFormat_NumberFormatGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.text.spi.NumberFormatProvider, java.text.NumberFormat>
{
	@:overload public function getObject(numberFormatProvider : java.text.spi.NumberFormatProvider, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : java.text.NumberFormat;
	
	
}
