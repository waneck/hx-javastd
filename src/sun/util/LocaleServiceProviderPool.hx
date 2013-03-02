package sun.util;
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
extern class LocaleServiceProviderPool
{
	/**
	* A factory method that returns a singleton instance
	*/
	@:overload public static function getPool(providerClass : Class<java.util.spi.LocaleServiceProvider>) : sun.util.LocaleServiceProviderPool;
	
	/**
	* Returns an array of available locales for all the provider classes.
	* This array is a merged array of all the locales that are provided by each
	* provider, including the JRE.
	*
	* @return an array of the available locales for all provider classes
	*/
	@:overload public static function getAllAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Returns an array of available locales.  This array is a
	* merged array of all the locales that are provided by each
	* provider, including the JRE.
	*
	* @return an array of the available locales
	*/
	@:overload @:synchronized public function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Returns whether any provider for this locale sensitive
	* service is available or not.
	*
	* @return true if any provider is available
	*/
	@:overload public function hasProviders() : Bool;
	
	/**
	* Returns the provider's localized object for the specified
	* locale.
	*
	* @param getter an object on which getObject() method
	*     is called to obtain the provider's instance.
	* @param locale the given locale that is used as the starting one
	* @param params provider specific parameters
	* @return provider's instance, or null.
	*/
	@:overload public function getLocalizedObject<P, S>(getter : sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<P, S>, locale : java.util.Locale, params : java.NativeArray<Dynamic>) : S;
	
	/**
	* Returns the provider's localized name for the specified
	* locale.
	*
	* @param getter an object on which getObject() method
	*     is called to obtain the provider's instance.
	* @param locale the given locale that is used as the starting one
	* @param bundle JRE resource bundle that contains
	*     the localized names, or null for localized objects.
	* @param key the key string if bundle is supplied, otherwise null.
	* @param params provider specific parameters
	* @return provider's instance, or null.
	*/
	@:overload public function getLocalizedObject<P, S>(getter : sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<P, S>, locale : java.util.Locale, bundle : sun.util.resources.OpenListResourceBundle, key : String, params : java.NativeArray<Dynamic>) : S;
	
	/**
	* Returns the provider's localized name for the specified
	* locale.
	*
	* @param getter an object on which getObject() method
	*     is called to obtain the provider's instance.
	* @param locale the given locale that is used as the starting one
	* @param bundleKey JRE specific bundle key. e.g., "USD" is for currency
	symbol and "usd" is for currency display name in the JRE bundle.
	* @param bundle JRE resource bundle that contains
	*     the localized names, or null for localized objects.
	* @param key the key string if bundle is supplied, otherwise null.
	* @param params provider specific parameters
	* @return provider's instance, or null.
	*/
	@:overload public function getLocalizedObject<P, S>(getter : sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<P, S>, locale : java.util.Locale, bundleKey : String, bundle : sun.util.resources.OpenListResourceBundle, key : String, params : java.NativeArray<Dynamic>) : S;
	
	
}
/**
* Lazy loaded set of available locales.
* Loading all locales is a very long operation.
*
* We know "providerClasses" contains classes that extends LocaleServiceProvider,
* but generic array creation is not allowed, thus the "unchecked" warning
* is suppressed here.
*/
@:native('sun$util$LocaleServiceProviderPool$AllAvailableLocales') @:internal extern class LocaleServiceProviderPool_AllAvailableLocales
{
	
}
/**
* A dummy locale service provider that indicates there is no
* provider available
*/
@:native('sun$util$LocaleServiceProviderPool$NullProvider') @:internal extern class LocaleServiceProviderPool_NullProvider extends java.util.spi.LocaleServiceProvider
{
	@:overload public function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	
}
/**
* An interface to get a localized object for each locale sensitve
* service class.
*/
@:native('sun$util$LocaleServiceProviderPool$LocalizedObjectGetter') extern interface LocaleServiceProviderPool_LocalizedObjectGetter<P, S>
{
	/**
	* Returns an object from the provider
	*
	* @param lsp the provider
	* @param locale the locale
	* @param key key string to localize, or null if the provider is not
	*     a name provider
	* @param params provider specific params
	* @return localized object from the provider
	*/
	@:overload public function getObject(lsp : P, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : S;
	
	
}
