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
extern class DecimalFormatSymbols implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Create a DecimalFormatSymbols object for the default locale.
	* This constructor can only construct instances for the locales
	* supported by the Java runtime environment, not for those
	* supported by installed
	* {@link java.text.spi.DecimalFormatSymbolsProvider DecimalFormatSymbolsProvider}
	* implementations. For full locale coverage, use the
	* {@link #getInstance(Locale) getInstance} method.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a DecimalFormatSymbols object for the given locale.
	* This constructor can only construct instances for the locales
	* supported by the Java runtime environment, not for those
	* supported by installed
	* {@link java.text.spi.DecimalFormatSymbolsProvider DecimalFormatSymbolsProvider}
	* implementations. For full locale coverage, use the
	* {@link #getInstance(Locale) getInstance} method.
	*
	* @exception NullPointerException if <code>locale</code> is null
	*/
	@:overload @:public public function new(locale : java.util.Locale) : Void;
	
	/**
	* Returns an array of all locales for which the
	* <code>getInstance</code> methods of this class can return
	* localized instances.
	* The returned array represents the union of locales supported by the Java
	* runtime and by installed
	* {@link java.text.spi.DecimalFormatSymbolsProvider DecimalFormatSymbolsProvider}
	* implementations.  It must contain at least a <code>Locale</code>
	* instance equal to {@link java.util.Locale#US Locale.US}.
	*
	* @return An array of locales for which localized
	*         <code>DecimalFormatSymbols</code> instances are available.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Gets the <code>DecimalFormatSymbols</code> instance for the default
	* locale.  This method provides access to <code>DecimalFormatSymbols</code>
	* instances for locales supported by the Java runtime itself as well
	* as for those supported by installed
	* {@link java.text.spi.DecimalFormatSymbolsProvider
	* DecimalFormatSymbolsProvider} implementations.
	* @return a <code>DecimalFormatSymbols</code> instance.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static @:final public static function getInstance() : java.text.DecimalFormatSymbols;
	
	/**
	* Gets the <code>DecimalFormatSymbols</code> instance for the specified
	* locale.  This method provides access to <code>DecimalFormatSymbols</code>
	* instances for locales supported by the Java runtime itself as well
	* as for those supported by installed
	* {@link java.text.spi.DecimalFormatSymbolsProvider
	* DecimalFormatSymbolsProvider} implementations.
	* @param locale the desired locale.
	* @return a <code>DecimalFormatSymbols</code> instance.
	* @exception NullPointerException if <code>locale</code> is null
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static @:final public static function getInstance(locale : java.util.Locale) : java.text.DecimalFormatSymbols;
	
	/**
	* Gets the character used for zero. Different for Arabic, etc.
	*/
	@:overload @:public public function getZeroDigit() : java.StdTypes.Char16;
	
	/**
	* Sets the character used for zero. Different for Arabic, etc.
	*/
	@:overload @:public public function setZeroDigit(zeroDigit : java.StdTypes.Char16) : Void;
	
	/**
	* Gets the character used for thousands separator. Different for French, etc.
	*/
	@:overload @:public public function getGroupingSeparator() : java.StdTypes.Char16;
	
	/**
	* Sets the character used for thousands separator. Different for French, etc.
	*/
	@:overload @:public public function setGroupingSeparator(groupingSeparator : java.StdTypes.Char16) : Void;
	
	/**
	* Gets the character used for decimal sign. Different for French, etc.
	*/
	@:overload @:public public function getDecimalSeparator() : java.StdTypes.Char16;
	
	/**
	* Sets the character used for decimal sign. Different for French, etc.
	*/
	@:overload @:public public function setDecimalSeparator(decimalSeparator : java.StdTypes.Char16) : Void;
	
	/**
	* Gets the character used for per mille sign. Different for Arabic, etc.
	*/
	@:overload @:public public function getPerMill() : java.StdTypes.Char16;
	
	/**
	* Sets the character used for per mille sign. Different for Arabic, etc.
	*/
	@:overload @:public public function setPerMill(perMill : java.StdTypes.Char16) : Void;
	
	/**
	* Gets the character used for percent sign. Different for Arabic, etc.
	*/
	@:overload @:public public function getPercent() : java.StdTypes.Char16;
	
	/**
	* Sets the character used for percent sign. Different for Arabic, etc.
	*/
	@:overload @:public public function setPercent(percent : java.StdTypes.Char16) : Void;
	
	/**
	* Gets the character used for a digit in a pattern.
	*/
	@:overload @:public public function getDigit() : java.StdTypes.Char16;
	
	/**
	* Sets the character used for a digit in a pattern.
	*/
	@:overload @:public public function setDigit(digit : java.StdTypes.Char16) : Void;
	
	/**
	* Gets the character used to separate positive and negative subpatterns
	* in a pattern.
	*/
	@:overload @:public public function getPatternSeparator() : java.StdTypes.Char16;
	
	/**
	* Sets the character used to separate positive and negative subpatterns
	* in a pattern.
	*/
	@:overload @:public public function setPatternSeparator(patternSeparator : java.StdTypes.Char16) : Void;
	
	/**
	* Gets the string used to represent infinity. Almost always left
	* unchanged.
	*/
	@:overload @:public public function getInfinity() : String;
	
	/**
	* Sets the string used to represent infinity. Almost always left
	* unchanged.
	*/
	@:overload @:public public function setInfinity(infinity : String) : Void;
	
	/**
	* Gets the string used to represent "not a number". Almost always left
	* unchanged.
	*/
	@:overload @:public public function getNaN() : String;
	
	/**
	* Sets the string used to represent "not a number". Almost always left
	* unchanged.
	*/
	@:overload @:public public function setNaN(NaN : String) : Void;
	
	/**
	* Gets the character used to represent minus sign. If no explicit
	* negative format is specified, one is formed by prefixing
	* minusSign to the positive format.
	*/
	@:overload @:public public function getMinusSign() : java.StdTypes.Char16;
	
	/**
	* Sets the character used to represent minus sign. If no explicit
	* negative format is specified, one is formed by prefixing
	* minusSign to the positive format.
	*/
	@:overload @:public public function setMinusSign(minusSign : java.StdTypes.Char16) : Void;
	
	/**
	* Returns the currency symbol for the currency of these
	* DecimalFormatSymbols in their locale.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getCurrencySymbol() : String;
	
	/**
	* Sets the currency symbol for the currency of these
	* DecimalFormatSymbols in their locale.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setCurrencySymbol(currency : String) : Void;
	
	/**
	* Returns the ISO 4217 currency code of the currency of these
	* DecimalFormatSymbols.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getInternationalCurrencySymbol() : String;
	
	/**
	* Sets the ISO 4217 currency code of the currency of these
	* DecimalFormatSymbols.
	* If the currency code is valid (as defined by
	* {@link java.util.Currency#getInstance(java.lang.String) Currency.getInstance}),
	* this also sets the currency attribute to the corresponding Currency
	* instance and the currency symbol attribute to the currency's symbol
	* in the DecimalFormatSymbols' locale. If the currency code is not valid,
	* then the currency attribute is set to null and the currency symbol
	* attribute is not modified.
	*
	* @see #setCurrency
	* @see #setCurrencySymbol
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setInternationalCurrencySymbol(currencyCode : String) : Void;
	
	/**
	* Gets the currency of these DecimalFormatSymbols. May be null if the
	* currency symbol attribute was previously set to a value that's not
	* a valid ISO 4217 currency code.
	*
	* @return the currency used, or null
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getCurrency() : java.util.Currency;
	
	/**
	* Sets the currency of these DecimalFormatSymbols.
	* This also sets the currency symbol attribute to the currency's symbol
	* in the DecimalFormatSymbols' locale, and the international currency
	* symbol attribute to the currency's ISO 4217 currency code.
	*
	* @param currency the new currency to be used
	* @exception NullPointerException if <code>currency</code> is null
	* @since 1.4
	* @see #setCurrencySymbol
	* @see #setInternationalCurrencySymbol
	*/
	@:require(java4) @:overload @:public public function setCurrency(currency : java.util.Currency) : Void;
	
	/**
	* Returns the monetary decimal separator.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function getMonetaryDecimalSeparator() : java.StdTypes.Char16;
	
	/**
	* Sets the monetary decimal separator.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setMonetaryDecimalSeparator(sep : java.StdTypes.Char16) : Void;
	
	/**
	* Returns the string used to separate the mantissa from the exponent.
	* Examples: "x10^" for 1.23x10^4, "E" for 1.23E4.
	*
	* @return the exponent separator string
	* @see #setExponentSeparator(java.lang.String)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getExponentSeparator() : String;
	
	/**
	* Sets the string used to separate the mantissa from the exponent.
	* Examples: "x10^" for 1.23x10^4, "E" for 1.23E4.
	*
	* @param exp the exponent separator string
	* @exception NullPointerException if <code>exp</code> is null
	* @see #getExponentSeparator()
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function setExponentSeparator(exp : String) : Void;
	
	/**
	* Standard override.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Override equals.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Override hashCode.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
/**
* Obtains a DecimalFormatSymbols instance from a DecimalFormatSymbolsProvider
* implementation.
*/
@:native('java$text$DecimalFormatSymbols$DecimalFormatSymbolsGetter') @:internal extern class DecimalFormatSymbols_DecimalFormatSymbolsGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.text.spi.DecimalFormatSymbolsProvider, java.text.DecimalFormatSymbols>
{
	@:overload @:public public function getObject(decimalFormatSymbolsProvider : java.text.spi.DecimalFormatSymbolsProvider, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : java.text.DecimalFormatSymbols;
	
	
}
