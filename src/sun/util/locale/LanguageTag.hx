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
* Copyright (C) 2010, International Business Machines Corporation and         *
* others. All Rights Reserved.                                                *
*******************************************************************************
*/
extern class LanguageTag
{
	public static var SEP(default, null) : String;
	
	public static var PRIVATEUSE(default, null) : String;
	
	public static var UNDETERMINED(default, null) : String;
	
	public static var PRIVUSE_VARIANT_PREFIX(default, null) : String;
	
	/*
	* BNF in RFC5464
	*
	* Language-Tag  = langtag             ; normal language tags
	*               / privateuse          ; private use tag
	*               / grandfathered       ; grandfathered tags
	*
	*
	* langtag       = language
	*                 ["-" script]
	*                 ["-" region]
	*                 *("-" variant)
	*                 *("-" extension)
	*                 ["-" privateuse]
	*
	* language      = 2*3ALPHA            ; shortest ISO 639 code
	*                 ["-" extlang]       ; sometimes followed by
	*                                     ; extended language subtags
	*               / 4ALPHA              ; or reserved for future use
	*               / 5*8ALPHA            ; or registered language subtag
	*
	* extlang       = 3ALPHA              ; selected ISO 639 codes
	*                 *2("-" 3ALPHA)      ; permanently reserved
	*
	* script        = 4ALPHA              ; ISO 15924 code
	*
	* region        = 2ALPHA              ; ISO 3166-1 code
	*               / 3DIGIT              ; UN M.49 code
	*
	* variant       = 5*8alphanum         ; registered variants
	*               / (DIGIT 3alphanum)
	*
	* extension     = singleton 1*("-" (2*8alphanum))
	*
	*                                     ; Single alphanumerics
	*                                     ; "x" reserved for private use
	* singleton     = DIGIT               ; 0 - 9
	*               / %x41-57             ; A - W
	*               / %x59-5A             ; Y - Z
	*               / %x61-77             ; a - w
	*               / %x79-7A             ; y - z
	*
	* privateuse    = "x" 1*("-" (1*8alphanum))
	*
	*/
	@:overload public static function parse(languageTag : String, sts : sun.util.locale.ParseStatus) : sun.util.locale.LanguageTag;
	
	@:overload public static function parseLocale(baseLocale : sun.util.locale.BaseLocale, localeExtensions : sun.util.locale.LocaleExtensions) : sun.util.locale.LanguageTag;
	
	@:overload public function getLanguage() : String;
	
	@:overload public function getExtlangs() : java.util.List<String>;
	
	@:overload public function getScript() : String;
	
	@:overload public function getRegion() : String;
	
	@:overload public function getVariants() : java.util.List<String>;
	
	@:overload public function getExtensions() : java.util.List<String>;
	
	@:overload public function getPrivateuse() : String;
	
	@:overload public static function isLanguage(s : String) : Bool;
	
	@:overload public static function isExtlang(s : String) : Bool;
	
	@:overload public static function isScript(s : String) : Bool;
	
	@:overload public static function isRegion(s : String) : Bool;
	
	@:overload public static function isVariant(s : String) : Bool;
	
	@:overload public static function isExtensionSingleton(s : String) : Bool;
	
	@:overload public static function isExtensionSingletonChar(c : java.StdTypes.Char16) : Bool;
	
	@:overload public static function isExtensionSubtag(s : String) : Bool;
	
	@:overload public static function isPrivateusePrefix(s : String) : Bool;
	
	@:overload public static function isPrivateusePrefixChar(c : java.StdTypes.Char16) : Bool;
	
	@:overload public static function isPrivateuseSubtag(s : String) : Bool;
	
	@:overload public static function canonicalizeLanguage(s : String) : String;
	
	@:overload public static function canonicalizeExtlang(s : String) : String;
	
	@:overload public static function canonicalizeScript(s : String) : String;
	
	@:overload public static function canonicalizeRegion(s : String) : String;
	
	@:overload public static function canonicalizeVariant(s : String) : String;
	
	@:overload public static function canonicalizeExtension(s : String) : String;
	
	@:overload public static function canonicalizeExtensionSingleton(s : String) : String;
	
	@:overload public static function canonicalizeExtensionSubtag(s : String) : String;
	
	@:overload public static function canonicalizePrivateuse(s : String) : String;
	
	@:overload public static function canonicalizePrivateuseSubtag(s : String) : String;
	
	@:overload public function toString() : String;
	
	
}
