package sun.util;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class TimeZoneNameUtility
{
	/**
	* get time zone localized strings. Enumerate all keys.
	*/
	@:overload @:final public static function getZoneStrings(locale : java.util.Locale) : java.NativeArray<java.NativeArray<String>>;
	
	/**
	* Retrieve display names for a time zone ID.
	*/
	@:overload @:final public static function retrieveDisplayNames(id : String, locale : java.util.Locale) : java.NativeArray<String>;
	
	
}
/**
* Obtains a localized time zone strings from a TimeZoneNameProvider
* implementation.
*/
@:native('sun$util$TimeZoneNameUtility$TimeZoneNameGetter') @:internal extern class TimeZoneNameUtility_TimeZoneNameGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.util.spi.TimeZoneNameProvider, java.NativeArray<String>>
{
	@:overload public function getObject(timeZoneNameProvider : java.util.spi.TimeZoneNameProvider, locale : java.util.Locale, requestID : String, params : java.NativeArray<Dynamic>) : java.NativeArray<String>;
	
	
}
