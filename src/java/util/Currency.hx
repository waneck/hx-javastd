package java.util;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Currency implements java.io.Serializable
{
	/**
	* Returns the <code>Currency</code> instance for the given currency code.
	*
	* @param currencyCode the ISO 4217 code of the currency
	* @return the <code>Currency</code> instance for the given currency code
	* @exception NullPointerException if <code>currencyCode</code> is null
	* @exception IllegalArgumentException if <code>currencyCode</code> is not
	* a supported ISO 4217 code.
	*/
	@:overload public static function getInstance(currencyCode : String) : Currency;
	
	/**
	* Returns the <code>Currency</code> instance for the country of the
	* given locale. The language and variant components of the locale
	* are ignored. The result may vary over time, as countries change their
	* currencies. For example, for the original member countries of the
	* European Monetary Union, the method returns the old national currencies
	* until December 31, 2001, and the Euro from January 1, 2002, local time
	* of the respective countries.
	* <p>
	* The method returns <code>null</code> for territories that don't
	* have a currency, such as Antarctica.
	*
	* @param locale the locale for whose country a <code>Currency</code>
	* instance is needed
	* @return the <code>Currency</code> instance for the country of the given
	* locale, or null
	* @exception NullPointerException if <code>locale</code> or its country
	* code is null
	* @exception IllegalArgumentException if the country of the given locale
	* is not a supported ISO 3166 country code.
	*/
	@:overload public static function getInstance(locale : java.util.Locale) : Currency;
	
	/**
	* Gets the set of available currencies.  The returned set of currencies
	* contains all of the available currencies, which may include currencies
	* that represent obsolete ISO 4217 codes.  The set can be modified
	* without affecting the available currencies in the runtime.
	*
	* @return the set of available currencies.  If there is no currency
	*    available in the runtime, the returned set is empty.
	* @since 1.7
	*/
	@:require(java7) @:overload public static function getAvailableCurrencies() : java.util.Set<Currency>;
	
	/**
	* Gets the ISO 4217 currency code of this currency.
	*
	* @return the ISO 4217 currency code of this currency.
	*/
	@:overload public function getCurrencyCode() : String;
	
	/**
	* Gets the symbol of this currency for the default locale.
	* For example, for the US Dollar, the symbol is "$" if the default
	* locale is the US, while for other locales it may be "US$". If no
	* symbol can be determined, the ISO 4217 currency code is returned.
	*
	* @return the symbol of this currency for the default locale
	*/
	@:overload public function getSymbol() : String;
	
	/**
	* Gets the symbol of this currency for the specified locale.
	* For example, for the US Dollar, the symbol is "$" if the specified
	* locale is the US, while for other locales it may be "US$". If no
	* symbol can be determined, the ISO 4217 currency code is returned.
	*
	* @param locale the locale for which a display name for this currency is
	* needed
	* @return the symbol of this currency for the specified locale
	* @exception NullPointerException if <code>locale</code> is null
	*/
	@:overload public function getSymbol(locale : java.util.Locale) : String;
	
	/**
	* Gets the default number of fraction digits used with this currency.
	* For example, the default number of fraction digits for the Euro is 2,
	* while for the Japanese Yen it's 0.
	* In the case of pseudo-currencies, such as IMF Special Drawing Rights,
	* -1 is returned.
	*
	* @return the default number of fraction digits used with this currency
	*/
	@:overload public function getDefaultFractionDigits() : Int;
	
	/**
	* Returns the ISO 4217 numeric code of this currency.
	*
	* @return the ISO 4217 numeric code of this currency
	* @since 1.7
	*/
	@:require(java7) @:overload public function getNumericCode() : Int;
	
	/**
	* Gets the name that is suitable for displaying this currency for
	* the default locale.  If there is no suitable display name found
	* for the default locale, the ISO 4217 currency code is returned.
	*
	* @return the display name of this currency for the default locale
	* @since 1.7
	*/
	@:require(java7) @:overload public function getDisplayName() : String;
	
	/**
	* Gets the name that is suitable for displaying this currency for
	* the specified locale.  If there is no suitable display name found
	* for the specified locale, the ISO 4217 currency code is returned.
	*
	* @param locale the locale for which a display name for this currency is
	* needed
	* @return the display name of this currency for the specified locale
	* @exception NullPointerException if <code>locale</code> is null
	* @since 1.7
	*/
	@:require(java7) @:overload public function getDisplayName(locale : java.util.Locale) : String;
	
	/**
	* Returns the ISO 4217 currency code of this currency.
	*
	* @return the ISO 4217 currency code of this currency
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Obtains a localized currency names from a CurrencyNameProvider
* implementation.
*/
@:native('java$util$Currency$CurrencyNameGetter') @:internal extern class Currency_CurrencyNameGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.util.spi.CurrencyNameProvider, String>
{
	@:overload public function getObject(currencyNameProvider : java.util.spi.CurrencyNameProvider, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : String;
	
	
}
