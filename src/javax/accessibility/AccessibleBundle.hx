package javax.accessibility;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class AccessibleBundle
{
	@:overload public function new() : Void;
	
	/**
	* The locale independent name of the state.  This is a programmatic
	* name that is not intended to be read by humans.
	* @see #toDisplayString
	*/
	private var key : String;
	
	/**
	* Obtains the key as a localized string.
	* If a localized string cannot be found for the key, the
	* locale independent key stored in the role will be returned.
	* This method is intended to be used only by subclasses so that they
	* can specify their own resource bundles which contain localized
	* strings for their keys.
	* @param resourceBundleName the name of the resource bundle to use for
	* lookup
	* @param locale the locale for which to obtain a localized string
	* @return a localized String for the key.
	*/
	@:overload private function toDisplayString(resourceBundleName : String, locale : java.util.Locale) : String;
	
	/**
	* Obtains the key as a localized string.
	* If a localized string cannot be found for the key, the
	* locale independent key stored in the role will be returned.
	*
	* @param locale the locale for which to obtain a localized string
	* @return a localized String for the key.
	*/
	@:overload public function toDisplayString(locale : java.util.Locale) : String;
	
	/**
	* Gets localized string describing the key using the default locale.
	* @return a localized String describing the key for the default locale
	*/
	@:overload public function toDisplayString() : String;
	
	/**
	* Gets localized string describing the key using the default locale.
	* @return a localized String describing the key using the default locale
	* @see #toDisplayString
	*/
	@:overload public function toString() : String;
	
	
}
