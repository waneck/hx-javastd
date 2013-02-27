package java.util.spi;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class CurrencyNameProvider extends java.util.spi.LocaleServiceProvider
{
	/**
	* Sole constructor.  (For invocation by subclass constructors, typically
	* implicit.)
	*/
	@:overload private function new() : Void;
	
	/**
	* Gets the symbol of the given currency code for the specified locale.
	* For example, for "USD" (US Dollar), the symbol is "$" if the specified
	* locale is the US, while for other locales it may be "US$". If no
	* symbol can be determined, null should be returned.
	*
	* @param currencyCode the ISO 4217 currency code, which
	*     consists of three upper-case letters between 'A' (U+0041) and
	*     'Z' (U+005A)
	* @param locale the desired locale
	* @return the symbol of the given currency code for the specified locale, or null if
	*     the symbol is not available for the locale
	* @exception NullPointerException if <code>currencyCode</code> or
	*     <code>locale</code> is null
	* @exception IllegalArgumentException if <code>currencyCode</code> is not in
	*     the form of three upper-case letters, or <code>locale</code> isn't
	*     one of the locales returned from
	*     {@link java.util.spi.LocaleServiceProvider#getAvailableLocales()
	*     getAvailableLocales()}.
	* @see java.util.Currency#getSymbol(java.util.Locale)
	*/
	@:overload @:abstract public function getSymbol(currencyCode : String, locale : java.util.Locale) : String;
	
	/**
	* Returns a name for the currency that is appropriate for display to the
	* user.  The default implementation returns null.
	*
	* @param currencyCode the ISO 4217 currency code, which
	*     consists of three upper-case letters between 'A' (U+0041) and
	*     'Z' (U+005A)
	* @param locale the desired locale
	* @return the name for the currency that is appropriate for display to the
	*     user, or null if the name is not available for the locale
	* @exception IllegalArgumentException if <code>currencyCode</code> is not in
	*     the form of three upper-case letters, or <code>locale</code> isn't
	*     one of the locales returned from
	*     {@link java.util.spi.LocaleServiceProvider#getAvailableLocales()
	*     getAvailableLocales()}.
	* @exception NullPointerException if <code>currencyCode</code> or
	*     <code>locale</code> is <code>null</code>
	* @since 1.7
	*/
	@:require(java7) @:overload public function getDisplayName(currencyCode : String, locale : java.util.Locale) : String;
	
	
}
