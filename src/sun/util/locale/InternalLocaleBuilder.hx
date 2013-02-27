package sun.util.locale;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Copyright (C) 2009-2010, International Business Machines Corporation and    *
* others. All Rights Reserved.                                                *
*******************************************************************************
*/
extern class InternalLocaleBuilder
{
	@:overload public function new() : Void;
	
	@:overload public function setLanguage(language : String) : InternalLocaleBuilder;
	
	@:overload public function setScript(script : String) : InternalLocaleBuilder;
	
	@:overload public function setRegion(region : String) : InternalLocaleBuilder;
	
	@:overload public function setVariant(variant : String) : InternalLocaleBuilder;
	
	@:overload public function addUnicodeLocaleAttribute(attribute : String) : InternalLocaleBuilder;
	
	@:overload public function removeUnicodeLocaleAttribute(attribute : String) : InternalLocaleBuilder;
	
	@:overload public function setUnicodeLocaleKeyword(key : String, type : String) : InternalLocaleBuilder;
	
	@:overload public function setExtension(singleton : java.StdTypes.Char16, value : String) : InternalLocaleBuilder;
	
	/*
	* Set extension/private subtags in a single string representation
	*/
	@:overload public function setExtensions(subtags : String) : InternalLocaleBuilder;
	
	/*
	* Reset Builder's internal state with the given language tag
	*/
	@:overload public function setLanguageTag(langtag : sun.util.locale.LanguageTag) : InternalLocaleBuilder;
	
	@:overload public function setLocale(base : sun.util.locale.BaseLocale, localeExtensions : sun.util.locale.LocaleExtensions) : InternalLocaleBuilder;
	
	@:overload public function clear() : InternalLocaleBuilder;
	
	@:overload public function clearExtensions() : InternalLocaleBuilder;
	
	@:overload public function getBaseLocale() : sun.util.locale.BaseLocale;
	
	@:overload public function getLocaleExtensions() : sun.util.locale.LocaleExtensions;
	
	
}
@:native('sun$util$locale$InternalLocaleBuilder$CaseInsensitiveString') @:internal extern class InternalLocaleBuilder_CaseInsensitiveString
{
	@:overload public function value() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
@:native('sun$util$locale$InternalLocaleBuilder$CaseInsensitiveChar') @:internal extern class InternalLocaleBuilder_CaseInsensitiveChar
{
	@:overload public function value() : java.StdTypes.Char16;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
