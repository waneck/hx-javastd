package sun.util.resources;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class LocaleData
{
	/**
	* Returns a list of the installed locales. Currently, this simply returns
	* the list of locales for which a sun.text.resources.FormatData bundle
	* exists. This bundle family happens to be the one with the broadest
	* locale coverage in the JRE.
	*/
	@:overload public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Gets a calendar data resource bundle, using privileges
	* to allow accessing a sun.* package.
	*/
	@:overload public static function getCalendarData(locale : java.util.Locale) : java.util.ResourceBundle;
	
	/**
	* Gets a currency names resource bundle, using privileges
	* to allow accessing a sun.* package.
	*/
	@:overload public static function getCurrencyNames(locale : java.util.Locale) : sun.util.resources.OpenListResourceBundle;
	
	/**
	* Gets a locale names resource bundle, using privileges
	* to allow accessing a sun.* package.
	*/
	@:overload public static function getLocaleNames(locale : java.util.Locale) : sun.util.resources.OpenListResourceBundle;
	
	/**
	* Gets a time zone names resource bundle, using privileges
	* to allow accessing a sun.* package.
	*/
	@:overload public static function getTimeZoneNames(locale : java.util.Locale) : sun.util.resources.OpenListResourceBundle;
	
	/**
	* Gets a collation data resource bundle, using privileges
	* to allow accessing a sun.* package.
	*/
	@:overload public static function getCollationData(locale : java.util.Locale) : java.util.ResourceBundle;
	
	/**
	* Gets a date format data resource bundle, using privileges
	* to allow accessing a sun.* package.
	*/
	@:overload public static function getDateFormatData(locale : java.util.Locale) : java.util.ResourceBundle;
	
	/**
	* Gets a number format data resource bundle, using privileges
	* to allow accessing a sun.* package.
	*/
	@:overload public static function getNumberFormatData(locale : java.util.Locale) : java.util.ResourceBundle;
	
	
}
/**
* Lazy load available locales.
*/
@:native('sun$util$resources$LocaleData$AvailableLocales') @:internal extern class LocaleData_AvailableLocales
{
	
}
@:native('sun$util$resources$LocaleData$LocaleDataResourceBundleControl') @:internal extern class LocaleData_LocaleDataResourceBundleControl extends java.util.ResourceBundle.ResourceBundle_Control
{
	@:overload public static function getRBControlInstance() : LocaleData_LocaleDataResourceBundleControl;
	
	/*
	* This method overrides the default implementation to search
	* from a prebaked locale string list to determin the candidate
	* locale list.
	*
	* @param baseName the resource bundle base name.
	*        locale   the requested locale for the resource bundle.
	* @returns a list of candidate locales to search from.
	* @exception NullPointerException if baseName or locale is null.
	*/
	@:overload override public function getCandidateLocales(baseName : String, locale : java.util.Locale) : java.util.List<java.util.Locale>;
	
	/*
	* Overrides "getFallbackLocale" to return null so
	* that the fallback locale will be null.
	* @param baseName the resource bundle base name.
	*        locale   the requested locale for the resource bundle.
	* @return null for the fallback locale.
	* @exception NullPointerException if baseName or locale is null.
	*/
	@:overload override public function getFallbackLocale(baseName : String, locale : java.util.Locale) : java.util.Locale;
	
	
}
