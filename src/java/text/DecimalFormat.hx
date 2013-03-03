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
extern class DecimalFormat extends java.text.NumberFormat
{
	/**
	* Creates a DecimalFormat using the default pattern and symbols
	* for the default locale. This is a convenient way to obtain a
	* DecimalFormat when internationalization is not the main concern.
	* <p>
	* To obtain standard formats for a given locale, use the factory methods
	* on NumberFormat such as getNumberInstance. These factories will
	* return the most appropriate sub-class of NumberFormat for a given
	* locale.
	*
	* @see java.text.NumberFormat#getInstance
	* @see java.text.NumberFormat#getNumberInstance
	* @see java.text.NumberFormat#getCurrencyInstance
	* @see java.text.NumberFormat#getPercentInstance
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a DecimalFormat using the given pattern and the symbols
	* for the default locale. This is a convenient way to obtain a
	* DecimalFormat when internationalization is not the main concern.
	* <p>
	* To obtain standard formats for a given locale, use the factory methods
	* on NumberFormat such as getNumberInstance. These factories will
	* return the most appropriate sub-class of NumberFormat for a given
	* locale.
	*
	* @param pattern A non-localized pattern string.
	* @exception NullPointerException if <code>pattern</code> is null
	* @exception IllegalArgumentException if the given pattern is invalid.
	* @see java.text.NumberFormat#getInstance
	* @see java.text.NumberFormat#getNumberInstance
	* @see java.text.NumberFormat#getCurrencyInstance
	* @see java.text.NumberFormat#getPercentInstance
	*/
	@:overload @:public public function new(pattern : String) : Void;
	
	/**
	* Creates a DecimalFormat using the given pattern and symbols.
	* Use this constructor when you need to completely customize the
	* behavior of the format.
	* <p>
	* To obtain standard formats for a given
	* locale, use the factory methods on NumberFormat such as
	* getInstance or getCurrencyInstance. If you need only minor adjustments
	* to a standard format, you can modify the format returned by
	* a NumberFormat factory method.
	*
	* @param pattern a non-localized pattern string
	* @param symbols the set of symbols to be used
	* @exception NullPointerException if any of the given arguments is null
	* @exception IllegalArgumentException if the given pattern is invalid
	* @see java.text.NumberFormat#getInstance
	* @see java.text.NumberFormat#getNumberInstance
	* @see java.text.NumberFormat#getCurrencyInstance
	* @see java.text.NumberFormat#getPercentInstance
	* @see java.text.DecimalFormatSymbols
	*/
	@:overload @:public public function new(pattern : String, symbols : java.text.DecimalFormatSymbols) : Void;
	
	/**
	* Formats a number and appends the resulting text to the given string
	* buffer.
	* The number can be of any subclass of {@link java.lang.Number}.
	* <p>
	* This implementation uses the maximum precision permitted.
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
	@:overload @:public @:final override public function format(number : Dynamic, toAppendTo : java.lang.StringBuffer, pos : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Formats a double to produce a string.
	* @param number    The double to format
	* @param result    where the text is to be appended
	* @param fieldPosition    On input: an alignment field, if desired.
	* On output: the offsets of the alignment field.
	* @exception ArithmeticException if rounding is needed with rounding
	*            mode being set to RoundingMode.UNNECESSARY
	* @return The formatted number string
	* @see java.text.FieldPosition
	*/
	@:overload @:public override public function format(number : Float, result : java.lang.StringBuffer, fieldPosition : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Format a long to produce a string.
	* @param number    The long to format
	* @param result    where the text is to be appended
	* @param fieldPosition    On input: an alignment field, if desired.
	* On output: the offsets of the alignment field.
	* @exception       ArithmeticException if rounding is needed with rounding
	*                  mode being set to RoundingMode.UNNECESSARY
	* @return The formatted number string
	* @see java.text.FieldPosition
	*/
	@:overload @:public override public function format(number : haxe.Int64, result : java.lang.StringBuffer, fieldPosition : java.text.FieldPosition) : java.lang.StringBuffer;
	
	/**
	* Formats an Object producing an <code>AttributedCharacterIterator</code>.
	* You can use the returned <code>AttributedCharacterIterator</code>
	* to build the resulting String, as well as to determine information
	* about the resulting String.
	* <p>
	* Each attribute key of the AttributedCharacterIterator will be of type
	* <code>NumberFormat.Field</code>, with the attribute value being the
	* same as the attribute key.
	*
	* @exception NullPointerException if obj is null.
	* @exception IllegalArgumentException when the Format cannot format the
	*            given object.
	* @exception        ArithmeticException if rounding is needed with rounding
	*                   mode being set to RoundingMode.UNNECESSARY
	* @param obj The object to format
	* @return AttributedCharacterIterator describing the formatted value.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function formatToCharacterIterator(obj : Dynamic) : java.text.AttributedCharacterIterator;
	
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
	* The subclass returned depends on the value of {@link #isParseBigDecimal}
	* as well as on the string being parsed.
	* <ul>
	*   <li>If <code>isParseBigDecimal()</code> is false (the default),
	*       most integer values are returned as <code>Long</code>
	*       objects, no matter how they are written: <code>"17"</code> and
	*       <code>"17.000"</code> both parse to <code>Long(17)</code>.
	*       Values that cannot fit into a <code>Long</code> are returned as
	*       <code>Double</code>s. This includes values with a fractional part,
	*       infinite values, <code>NaN</code>, and the value -0.0.
	*       <code>DecimalFormat</code> does <em>not</em> decide whether to
	*       return a <code>Double</code> or a <code>Long</code> based on the
	*       presence of a decimal separator in the source string. Doing so
	*       would prevent integers that overflow the mantissa of a double,
	*       such as <code>"-9,223,372,036,854,775,808.00"</code>, from being
	*       parsed accurately.
	*       <p>
	*       Callers may use the <code>Number</code> methods
	*       <code>doubleValue</code>, <code>longValue</code>, etc., to obtain
	*       the type they want.
	*   <li>If <code>isParseBigDecimal()</code> is true, values are returned
	*       as <code>BigDecimal</code> objects. The values are the ones
	*       constructed by {@link java.math.BigDecimal#BigDecimal(String)}
	*       for corresponding strings in locale-independent format. The
	*       special cases negative and positive infinity and NaN are returned
	*       as <code>Double</code> instances holding the values of the
	*       corresponding <code>Double</code> constants.
	* </ul>
	* <p>
	* <code>DecimalFormat</code> parses all Unicode characters that represent
	* decimal digits, as defined by <code>Character.digit()</code>. In
	* addition, <code>DecimalFormat</code> also recognizes as digits the ten
	* consecutive characters starting with the localized zero digit defined in
	* the <code>DecimalFormatSymbols</code> object.
	*
	* @param text the string to be parsed
	* @param pos  A <code>ParsePosition</code> object with index and error
	*             index information as described above.
	* @return     the parsed value, or <code>null</code> if the parse fails
	* @exception  NullPointerException if <code>text</code> or
	*             <code>pos</code> is null.
	*/
	@:overload @:public override public function parse(text : String, pos : java.text.ParsePosition) : java.lang.Number;
	
	/**
	* Returns a copy of the decimal format symbols, which is generally not
	* changed by the programmer or user.
	* @return a copy of the desired DecimalFormatSymbols
	* @see java.text.DecimalFormatSymbols
	*/
	@:overload @:public public function getDecimalFormatSymbols() : java.text.DecimalFormatSymbols;
	
	/**
	* Sets the decimal format symbols, which is generally not changed
	* by the programmer or user.
	* @param newSymbols desired DecimalFormatSymbols
	* @see java.text.DecimalFormatSymbols
	*/
	@:overload @:public public function setDecimalFormatSymbols(newSymbols : java.text.DecimalFormatSymbols) : Void;
	
	/**
	* Get the positive prefix.
	* <P>Examples: +123, $123, sFr123
	*/
	@:overload @:public public function getPositivePrefix() : String;
	
	/**
	* Set the positive prefix.
	* <P>Examples: +123, $123, sFr123
	*/
	@:overload @:public public function setPositivePrefix(newValue : String) : Void;
	
	/**
	* Get the negative prefix.
	* <P>Examples: -123, ($123) (with negative suffix), sFr-123
	*/
	@:overload @:public public function getNegativePrefix() : String;
	
	/**
	* Set the negative prefix.
	* <P>Examples: -123, ($123) (with negative suffix), sFr-123
	*/
	@:overload @:public public function setNegativePrefix(newValue : String) : Void;
	
	/**
	* Get the positive suffix.
	* <P>Example: 123%
	*/
	@:overload @:public public function getPositiveSuffix() : String;
	
	/**
	* Set the positive suffix.
	* <P>Example: 123%
	*/
	@:overload @:public public function setPositiveSuffix(newValue : String) : Void;
	
	/**
	* Get the negative suffix.
	* <P>Examples: -123%, ($123) (with positive suffixes)
	*/
	@:overload @:public public function getNegativeSuffix() : String;
	
	/**
	* Set the negative suffix.
	* <P>Examples: 123%
	*/
	@:overload @:public public function setNegativeSuffix(newValue : String) : Void;
	
	/**
	* Gets the multiplier for use in percent, per mille, and similar
	* formats.
	*
	* @see #setMultiplier(int)
	*/
	@:overload @:public public function getMultiplier() : Int;
	
	/**
	* Sets the multiplier for use in percent, per mille, and similar
	* formats.
	* For a percent format, set the multiplier to 100 and the suffixes to
	* have '%' (for Arabic, use the Arabic percent sign).
	* For a per mille format, set the multiplier to 1000 and the suffixes to
	* have '&#92;u2030'.
	*
	* <P>Example: with multiplier 100, 1.23 is formatted as "123", and
	* "123" is parsed into 1.23.
	*
	* @see #getMultiplier
	*/
	@:overload @:public public function setMultiplier(newValue : Int) : Void;
	
	/**
	* Return the grouping size. Grouping size is the number of digits between
	* grouping separators in the integer portion of a number.  For example,
	* in the number "123,456.78", the grouping size is 3.
	* @see #setGroupingSize
	* @see java.text.NumberFormat#isGroupingUsed
	* @see java.text.DecimalFormatSymbols#getGroupingSeparator
	*/
	@:overload @:public public function getGroupingSize() : Int;
	
	/**
	* Set the grouping size. Grouping size is the number of digits between
	* grouping separators in the integer portion of a number.  For example,
	* in the number "123,456.78", the grouping size is 3.
	* <br>
	* The value passed in is converted to a byte, which may lose information.
	* @see #getGroupingSize
	* @see java.text.NumberFormat#setGroupingUsed
	* @see java.text.DecimalFormatSymbols#setGroupingSeparator
	*/
	@:overload @:public public function setGroupingSize(newValue : Int) : Void;
	
	/**
	* Allows you to get the behavior of the decimal separator with integers.
	* (The decimal separator will always appear with decimals.)
	* <P>Example: Decimal ON: 12345 -> 12345.; OFF: 12345 -> 12345
	*/
	@:overload @:public public function isDecimalSeparatorAlwaysShown() : Bool;
	
	/**
	* Allows you to set the behavior of the decimal separator with integers.
	* (The decimal separator will always appear with decimals.)
	* <P>Example: Decimal ON: 12345 -> 12345.; OFF: 12345 -> 12345
	*/
	@:overload @:public public function setDecimalSeparatorAlwaysShown(newValue : Bool) : Void;
	
	/**
	* Returns whether the {@link #parse(java.lang.String, java.text.ParsePosition)}
	* method returns <code>BigDecimal</code>. The default value is false.
	* @see #setParseBigDecimal
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function isParseBigDecimal() : Bool;
	
	/**
	* Sets whether the {@link #parse(java.lang.String, java.text.ParsePosition)}
	* method returns <code>BigDecimal</code>.
	* @see #isParseBigDecimal
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function setParseBigDecimal(newValue : Bool) : Void;
	
	/**
	* Standard override; no change in semantics.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	/**
	* Overrides equals
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Overrides hashCode
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Synthesizes a pattern string that represents the current state
	* of this Format object.
	* @see #applyPattern
	*/
	@:overload @:public public function toPattern() : String;
	
	/**
	* Synthesizes a localized pattern string that represents the current
	* state of this Format object.
	* @see #applyPattern
	*/
	@:overload @:public public function toLocalizedPattern() : String;
	
	/**
	* Apply the given pattern to this Format object.  A pattern is a
	* short-hand specification for the various formatting properties.
	* These properties can also be changed individually through the
	* various setter methods.
	* <p>
	* There is no limit to integer digits set
	* by this routine, since that is the typical end-user desire;
	* use setMaximumInteger if you want to set a real value.
	* For negative numbers, use a second pattern, separated by a semicolon
	* <P>Example <code>"#,#00.0#"</code> -> 1,234.56
	* <P>This means a minimum of 2 integer digits, 1 fraction digit, and
	* a maximum of 2 fraction digits.
	* <p>Example: <code>"#,#00.0#;(#,#00.0#)"</code> for negatives in
	* parentheses.
	* <p>In negative patterns, the minimum and maximum counts are ignored;
	* these are presumed to be set in the positive pattern.
	*
	* @exception NullPointerException if <code>pattern</code> is null
	* @exception IllegalArgumentException if the given pattern is invalid.
	*/
	@:overload @:public public function applyPattern(pattern : String) : Void;
	
	/**
	* Apply the given pattern to this Format object.  The pattern
	* is assumed to be in a localized notation. A pattern is a
	* short-hand specification for the various formatting properties.
	* These properties can also be changed individually through the
	* various setter methods.
	* <p>
	* There is no limit to integer digits set
	* by this routine, since that is the typical end-user desire;
	* use setMaximumInteger if you want to set a real value.
	* For negative numbers, use a second pattern, separated by a semicolon
	* <P>Example <code>"#,#00.0#"</code> -> 1,234.56
	* <P>This means a minimum of 2 integer digits, 1 fraction digit, and
	* a maximum of 2 fraction digits.
	* <p>Example: <code>"#,#00.0#;(#,#00.0#)"</code> for negatives in
	* parentheses.
	* <p>In negative patterns, the minimum and maximum counts are ignored;
	* these are presumed to be set in the positive pattern.
	*
	* @exception NullPointerException if <code>pattern</code> is null
	* @exception IllegalArgumentException if the given pattern is invalid.
	*/
	@:overload @:public public function applyLocalizedPattern(pattern : String) : Void;
	
	/**
	* Sets the maximum number of digits allowed in the integer portion of a
	* number.
	* For formatting numbers other than <code>BigInteger</code> and
	* <code>BigDecimal</code> objects, the lower of <code>newValue</code> and
	* 309 is used. Negative input values are replaced with 0.
	* @see NumberFormat#setMaximumIntegerDigits
	*/
	@:overload @:public override public function setMaximumIntegerDigits(newValue : Int) : Void;
	
	/**
	* Sets the minimum number of digits allowed in the integer portion of a
	* number.
	* For formatting numbers other than <code>BigInteger</code> and
	* <code>BigDecimal</code> objects, the lower of <code>newValue</code> and
	* 309 is used. Negative input values are replaced with 0.
	* @see NumberFormat#setMinimumIntegerDigits
	*/
	@:overload @:public override public function setMinimumIntegerDigits(newValue : Int) : Void;
	
	/**
	* Sets the maximum number of digits allowed in the fraction portion of a
	* number.
	* For formatting numbers other than <code>BigInteger</code> and
	* <code>BigDecimal</code> objects, the lower of <code>newValue</code> and
	* 340 is used. Negative input values are replaced with 0.
	* @see NumberFormat#setMaximumFractionDigits
	*/
	@:overload @:public override public function setMaximumFractionDigits(newValue : Int) : Void;
	
	/**
	* Sets the minimum number of digits allowed in the fraction portion of a
	* number.
	* For formatting numbers other than <code>BigInteger</code> and
	* <code>BigDecimal</code> objects, the lower of <code>newValue</code> and
	* 340 is used. Negative input values are replaced with 0.
	* @see NumberFormat#setMinimumFractionDigits
	*/
	@:overload @:public override public function setMinimumFractionDigits(newValue : Int) : Void;
	
	/**
	* Gets the maximum number of digits allowed in the integer portion of a
	* number.
	* For formatting numbers other than <code>BigInteger</code> and
	* <code>BigDecimal</code> objects, the lower of the return value and
	* 309 is used.
	* @see #setMaximumIntegerDigits
	*/
	@:overload @:public override public function getMaximumIntegerDigits() : Int;
	
	/**
	* Gets the minimum number of digits allowed in the integer portion of a
	* number.
	* For formatting numbers other than <code>BigInteger</code> and
	* <code>BigDecimal</code> objects, the lower of the return value and
	* 309 is used.
	* @see #setMinimumIntegerDigits
	*/
	@:overload @:public override public function getMinimumIntegerDigits() : Int;
	
	/**
	* Gets the maximum number of digits allowed in the fraction portion of a
	* number.
	* For formatting numbers other than <code>BigInteger</code> and
	* <code>BigDecimal</code> objects, the lower of the return value and
	* 340 is used.
	* @see #setMaximumFractionDigits
	*/
	@:overload @:public override public function getMaximumFractionDigits() : Int;
	
	/**
	* Gets the minimum number of digits allowed in the fraction portion of a
	* number.
	* For formatting numbers other than <code>BigInteger</code> and
	* <code>BigDecimal</code> objects, the lower of the return value and
	* 340 is used.
	* @see #setMinimumFractionDigits
	*/
	@:overload @:public override public function getMinimumFractionDigits() : Int;
	
	/**
	* Gets the currency used by this decimal format when formatting
	* currency values.
	* The currency is obtained by calling
	* {@link DecimalFormatSymbols#getCurrency DecimalFormatSymbols.getCurrency}
	* on this number format's symbols.
	*
	* @return the currency used by this decimal format, or <code>null</code>
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function getCurrency() : java.util.Currency;
	
	/**
	* Sets the currency used by this number format when formatting
	* currency values. This does not update the minimum or maximum
	* number of fraction digits used by the number format.
	* The currency is set by calling
	* {@link DecimalFormatSymbols#setCurrency DecimalFormatSymbols.setCurrency}
	* on this number format's symbols.
	*
	* @param currency the new currency to be used by this decimal format
	* @exception NullPointerException if <code>currency</code> is null
	* @since 1.4
	*/
	@:require(java4) @:overload @:public override public function setCurrency(currency : java.util.Currency) : Void;
	
	/**
	* Gets the {@link java.math.RoundingMode} used in this DecimalFormat.
	*
	* @return The <code>RoundingMode</code> used for this DecimalFormat.
	* @see #setRoundingMode(RoundingMode)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getRoundingMode() : java.math.RoundingMode;
	
	/**
	* Sets the {@link java.math.RoundingMode} used in this DecimalFormat.
	*
	* @param roundingMode The <code>RoundingMode</code> to be used
	* @see #getRoundingMode()
	* @exception NullPointerException if <code>roundingMode</code> is null.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function setRoundingMode(roundingMode : java.math.RoundingMode) : Void;
	
	
}
