package java.util;
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
extern class Locale implements java.lang.Cloneable implements java.io.Serializable
{
	/** Useful constant for language.
	*/
	public static var ENGLISH(default, null) : java.util.Locale;
	
	/** Useful constant for language.
	*/
	public static var FRENCH(default, null) : java.util.Locale;
	
	/** Useful constant for language.
	*/
	public static var GERMAN(default, null) : java.util.Locale;
	
	/** Useful constant for language.
	*/
	public static var ITALIAN(default, null) : java.util.Locale;
	
	/** Useful constant for language.
	*/
	public static var JAPANESE(default, null) : java.util.Locale;
	
	/** Useful constant for language.
	*/
	public static var KOREAN(default, null) : java.util.Locale;
	
	/** Useful constant for language.
	*/
	public static var CHINESE(default, null) : java.util.Locale;
	
	/** Useful constant for language.
	*/
	public static var SIMPLIFIED_CHINESE(default, null) : java.util.Locale;
	
	/** Useful constant for language.
	*/
	public static var TRADITIONAL_CHINESE(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var FRANCE(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var GERMANY(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var ITALY(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var JAPAN(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var KOREA(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var CHINA(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var PRC(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var TAIWAN(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var UK(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var US(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var CANADA(default, null) : java.util.Locale;
	
	/** Useful constant for country.
	*/
	public static var CANADA_FRENCH(default, null) : java.util.Locale;
	
	/**
	* Useful constant for the root locale.  The root locale is the locale whose
	* language, country, and variant are empty ("") strings.  This is regarded
	* as the base locale of all locales, and is used as the language/country
	* neutral locale for the locale sensitive operations.
	*
	* @since 1.6
	*/
	@:require(java6) public static var ROOT(default, null) : java.util.Locale;
	
	/**
	* The key for the private use extension ('x').
	*
	* @see #getExtension(char)
	* @see Builder#setExtension(char, String)
	* @since 1.7
	*/
	@:require(java7) public static var PRIVATE_USE_EXTENSION(default, null) : java.StdTypes.Char16;
	
	/**
	* The key for Unicode locale extension ('u').
	*
	* @see #getExtension(char)
	* @see Builder#setExtension(char, String)
	* @since 1.7
	*/
	@:require(java7) public static var UNICODE_LOCALE_EXTENSION(default, null) : java.StdTypes.Char16;
	
	/**
	* Construct a locale from language, country and variant.
	* This constructor normalizes the language value to lowercase and
	* the country value to uppercase.
	* <p>
	* <b>Note:</b>
	* <ul>
	* <li>ISO 639 is not a stable standard; some of the language codes it defines
	* (specifically "iw", "ji", and "in") have changed.  This constructor accepts both the
	* old codes ("iw", "ji", and "in") and the new codes ("he", "yi", and "id"), but all other
	* API on Locale will return only the OLD codes.
	* <li>For backward compatibility reasons, this constructor does not make
	* any syntactic checks on the input.
	* <li>The two cases ("ja", "JP", "JP") and ("th", "TH", "TH") are handled specially,
	* see <a href="#special_cases_constructor">Special Cases</a> for more information.
	* </ul>
	*
	* @param language An ISO 639 alpha-2 or alpha-3 language code, or a language subtag
	* up to 8 characters in length.  See the <code>Locale</code> class description about
	* valid language values.
	* @param country An ISO 3166 alpha-2 country code or a UN M.49 numeric-3 area code.
	* See the <code>Locale</code> class description about valid country values.
	* @param variant Any arbitrary value used to indicate a variation of a <code>Locale</code>.
	* See the <code>Locale</code> class description for the details.
	* @exception NullPointerException thrown if any argument is null.
	*/
	@:overload public function new(language : String, country : String, variant : String) : Void;
	
	/**
	* Construct a locale from language and country.
	* This constructor normalizes the language value to lowercase and
	* the country value to uppercase.
	* <p>
	* <b>Note:</b>
	* <ul>
	* <li>ISO 639 is not a stable standard; some of the language codes it defines
	* (specifically "iw", "ji", and "in") have changed.  This constructor accepts both the
	* old codes ("iw", "ji", and "in") and the new codes ("he", "yi", and "id"), but all other
	* API on Locale will return only the OLD codes.
	* <li>For backward compatibility reasons, this constructor does not make
	* any syntactic checks on the input.
	* </ul>
	*
	* @param language An ISO 639 alpha-2 or alpha-3 language code, or a language subtag
	* up to 8 characters in length.  See the <code>Locale</code> class description about
	* valid language values.
	* @param country An ISO 3166 alpha-2 country code or a UN M.49 numeric-3 area code.
	* See the <code>Locale</code> class description about valid country values.
	* @exception NullPointerException thrown if either argument is null.
	*/
	@:overload public function new(language : String, country : String) : Void;
	
	/**
	* Construct a locale from a language code.
	* This constructor normalizes the language value to lowercase.
	* <p>
	* <b>Note:</b>
	* <ul>
	* <li>ISO 639 is not a stable standard; some of the language codes it defines
	* (specifically "iw", "ji", and "in") have changed.  This constructor accepts both the
	* old codes ("iw", "ji", and "in") and the new codes ("he", "yi", and "id"), but all other
	* API on Locale will return only the OLD codes.
	* <li>For backward compatibility reasons, this constructor does not make
	* any syntactic checks on the input.
	* </ul>
	*
	* @param language An ISO 639 alpha-2 or alpha-3 language code, or a language subtag
	* up to 8 characters in length.  See the <code>Locale</code> class description about
	* valid language values.
	* @exception NullPointerException thrown if argument is null.
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(language : String) : Void;
	
	/**
	* Gets the current value of the default locale for this instance
	* of the Java Virtual Machine.
	* <p>
	* The Java Virtual Machine sets the default locale during startup
	* based on the host environment. It is used by many locale-sensitive
	* methods if no locale is explicitly specified.
	* It can be changed using the
	* {@link #setDefault(java.util.Locale) setDefault} method.
	*
	* @return the default locale for this instance of the Java Virtual Machine
	*/
	@:overload public static function getDefault() : java.util.Locale;
	
	/**
	* Gets the current value of the default locale for the specified Category
	* for this instance of the Java Virtual Machine.
	* <p>
	* The Java Virtual Machine sets the default locale during startup based
	* on the host environment. It is used by many locale-sensitive methods
	* if no locale is explicitly specified. It can be changed using the
	* setDefault(Locale.Category, Locale) method.
	*
	* @param category - the specified category to get the default locale
	* @throws NullPointerException - if category is null
	* @return the default locale for the specified Category for this instance
	*     of the Java Virtual Machine
	* @see #setDefault(Locale.Category, Locale)
	* @since 1.7
	*/
	@:require(java7) @:overload public static function getDefault(category : java.util.Locale.Locale_Category) : java.util.Locale;
	
	/**
	* Sets the default locale for this instance of the Java Virtual Machine.
	* This does not affect the host locale.
	* <p>
	* If there is a security manager, its <code>checkPermission</code>
	* method is called with a <code>PropertyPermission("user.language", "write")</code>
	* permission before the default locale is changed.
	* <p>
	* The Java Virtual Machine sets the default locale during startup
	* based on the host environment. It is used by many locale-sensitive
	* methods if no locale is explicitly specified.
	* <p>
	* Since changing the default locale may affect many different areas
	* of functionality, this method should only be used if the caller
	* is prepared to reinitialize locale-sensitive code running
	* within the same Java Virtual Machine.
	* <p>
	* By setting the default locale with this method, all of the default
	* locales for each Category are also set to the specified default locale.
	*
	* @throws SecurityException
	*        if a security manager exists and its
	*        <code>checkPermission</code> method doesn't allow the operation.
	* @throws NullPointerException if <code>newLocale</code> is null
	* @param newLocale the new default locale
	* @see SecurityManager#checkPermission
	* @see java.util.PropertyPermission
	*/
	@:overload @:synchronized public static function setDefault(newLocale : java.util.Locale) : Void;
	
	/**
	* Sets the default locale for the specified Category for this instance
	* of the Java Virtual Machine. This does not affect the host locale.
	* <p>
	* If there is a security manager, its checkPermission method is called
	* with a PropertyPermission("user.language", "write") permission before
	* the default locale is changed.
	* <p>
	* The Java Virtual Machine sets the default locale during startup based
	* on the host environment. It is used by many locale-sensitive methods
	* if no locale is explicitly specified.
	* <p>
	* Since changing the default locale may affect many different areas of
	* functionality, this method should only be used if the caller is
	* prepared to reinitialize locale-sensitive code running within the
	* same Java Virtual Machine.
	* <p>
	*
	* @param category - the specified category to set the default locale
	* @param newLocale - the new default locale
	* @throws SecurityException - if a security manager exists and its
	*     checkPermission method doesn't allow the operation.
	* @throws NullPointerException - if category and/or newLocale is null
	* @see SecurityManager#checkPermission(java.security.Permission)
	* @see PropertyPermission
	* @see #getDefault(Locale.Category)
	* @since 1.7
	*/
	@:require(java7) @:overload @:synchronized public static function setDefault(category : java.util.Locale.Locale_Category, newLocale : java.util.Locale) : Void;
	
	/**
	* Returns an array of all installed locales.
	* The returned array represents the union of locales supported
	* by the Java runtime environment and by installed
	* {@link java.util.spi.LocaleServiceProvider LocaleServiceProvider}
	* implementations.  It must contain at least a <code>Locale</code>
	* instance equal to {@link java.util.Locale#US Locale.US}.
	*
	* @return An array of installed locales.
	*/
	@:overload public static function getAvailableLocales() : java.NativeArray<java.util.Locale>;
	
	/**
	* Returns a list of all 2-letter country codes defined in ISO 3166.
	* Can be used to create Locales.
	* <p>
	* <b>Note:</b> The <code>Locale</code> class also supports other codes for
	* country (region), such as 3-letter numeric UN M.49 area codes.
	* Therefore, the list returned by this method does not contain ALL valid
	* codes that can be used to create Locales.
	*/
	@:overload public static function getISOCountries() : java.NativeArray<String>;
	
	/**
	* Returns a list of all 2-letter language codes defined in ISO 639.
	* Can be used to create Locales.
	* <p>
	* <b>Note:</b>
	* <ul>
	* <li>ISO 639 is not a stable standard&mdash; some languages' codes have changed.
	* The list this function returns includes both the new and the old codes for the
	* languages whose codes have changed.
	* <li>The <code>Locale</code> class also supports language codes up to
	* 8 characters in length.  Therefore, the list returned by this method does
	* not contain ALL valid codes that can be used to create Locales.
	* </ul>
	*/
	@:overload public static function getISOLanguages() : java.NativeArray<String>;
	
	/**
	* Returns the language code of this Locale.
	*
	* <p><b>Note:</b> ISO 639 is not a stable standard&mdash; some languages' codes have changed.
	* Locale's constructor recognizes both the new and the old codes for the languages
	* whose codes have changed, but this function always returns the old code.  If you
	* want to check for a specific language whose code has changed, don't do
	* <pre>
	* if (locale.getLanguage().equals("he")) // BAD!
	*    ...
	* </pre>
	* Instead, do
	* <pre>
	* if (locale.getLanguage().equals(new Locale("he").getLanguage()))
	*    ...
	* </pre>
	* @return The language code, or the empty string if none is defined.
	* @see #getDisplayLanguage
	*/
	@:overload public function getLanguage() : String;
	
	/**
	* Returns the script for this locale, which should
	* either be the empty string or an ISO 15924 4-letter script
	* code. The first letter is uppercase and the rest are
	* lowercase, for example, 'Latn', 'Cyrl'.
	*
	* @return The script code, or the empty string if none is defined.
	* @see #getDisplayScript
	* @since 1.7
	*/
	@:require(java7) @:overload public function getScript() : String;
	
	/**
	* Returns the country/region code for this locale, which should
	* either be the empty string, an uppercase ISO 3166 2-letter code,
	* or a UN M.49 3-digit code.
	*
	* @return The country/region code, or the empty string if none is defined.
	* @see #getDisplayCountry
	*/
	@:overload public function getCountry() : String;
	
	/**
	* Returns the variant code for this locale.
	*
	* @return The variant code, or the empty string if none is defined.
	* @see #getDisplayVariant
	*/
	@:overload public function getVariant() : String;
	
	/**
	* Returns the extension (or private use) value associated with
	* the specified key, or null if there is no extension
	* associated with the key. To be well-formed, the key must be one
	* of <code>[0-9A-Za-z]</code>. Keys are case-insensitive, so
	* for example 'z' and 'Z' represent the same extension.
	*
	* @param key the extension key
	* @return The extension, or null if this locale defines no
	* extension for the specified key.
	* @throws IllegalArgumentException if key is not well-formed
	* @see #PRIVATE_USE_EXTENSION
	* @see #UNICODE_LOCALE_EXTENSION
	* @since 1.7
	*/
	@:require(java7) @:overload public function getExtension(key : java.StdTypes.Char16) : String;
	
	/**
	* Returns the set of extension keys associated with this locale, or the
	* empty set if it has no extensions. The returned set is unmodifiable.
	* The keys will all be lower-case.
	*
	* @return The set of extension keys, or the empty set if this locale has
	* no extensions.
	* @since 1.7
	*/
	@:require(java7) @:overload public function getExtensionKeys() : java.util.Set<Null<java.StdTypes.Char16>>;
	
	/**
	* Returns the set of unicode locale attributes associated with
	* this locale, or the empty set if it has no attributes. The
	* returned set is unmodifiable.
	*
	* @return The set of attributes.
	* @since 1.7
	*/
	@:require(java7) @:overload public function getUnicodeLocaleAttributes() : java.util.Set<String>;
	
	/**
	* Returns the Unicode locale type associated with the specified Unicode locale key
	* for this locale. Returns the empty string for keys that are defined with no type.
	* Returns null if the key is not defined. Keys are case-insensitive. The key must
	* be two alphanumeric characters ([0-9a-zA-Z]), or an IllegalArgumentException is
	* thrown.
	*
	* @param key the Unicode locale key
	* @return The Unicode locale type associated with the key, or null if the
	* locale does not define the key.
	* @throws IllegalArgumentException if the key is not well-formed
	* @throws NullPointerException if <code>key</code> is null
	* @since 1.7
	*/
	@:require(java7) @:overload public function getUnicodeLocaleType(key : String) : String;
	
	/**
	* Returns the set of Unicode locale keys defined by this locale, or the empty set if
	* this locale has none.  The returned set is immutable.  Keys are all lower case.
	*
	* @return The set of Unicode locale keys, or the empty set if this locale has
	* no Unicode locale keywords.
	* @since 1.7
	*/
	@:require(java7) @:overload public function getUnicodeLocaleKeys() : java.util.Set<String>;
	
	/**
	* Returns a string representation of this <code>Locale</code>
	* object, consisting of language, country, variant, script,
	* and extensions as below:
	* <p><blockquote>
	* language + "_" + country + "_" + (variant + "_#" | "#") + script + "-" + extensions
	* </blockquote>
	*
	* Language is always lower case, country is always upper case, script is always title
	* case, and extensions are always lower case.  Extensions and private use subtags
	* will be in canonical order as explained in {@link #toLanguageTag}.
	*
	* <p>When the locale has neither script nor extensions, the result is the same as in
	* Java 6 and prior.
	*
	* <p>If both the language and country fields are missing, this function will return
	* the empty string, even if the variant, script, or extensions field is present (you
	* can't have a locale with just a variant, the variant must accompany a well-formed
	* language or country code).
	*
	* <p>If script or extensions are present and variant is missing, no underscore is
	* added before the "#".
	*
	* <p>This behavior is designed to support debugging and to be compatible with
	* previous uses of <code>toString</code> that expected language, country, and variant
	* fields only.  To represent a Locale as a String for interchange purposes, use
	* {@link #toLanguageTag}.
	*
	* <p>Examples: <ul><tt>
	* <li>en
	* <li>de_DE
	* <li>_GB
	* <li>en_US_WIN
	* <li>de__POSIX
	* <li>zh_CN_#Hans
	* <li>zh_TW_#Hant-x-java
	* <li>th_TH_TH_#u-nu-thai</tt></ul>
	*
	* @return A string representation of the Locale, for debugging.
	* @see #getDisplayName
	* @see #toLanguageTag
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* Returns a well-formed IETF BCP 47 language tag representing
	* this locale.
	*
	* <p>If this <code>Locale</code> has a language, country, or
	* variant that does not satisfy the IETF BCP 47 language tag
	* syntax requirements, this method handles these fields as
	* described below:
	*
	* <p><b>Language:</b> If language is empty, or not <a
	* href="#def_language" >well-formed</a> (for example "a" or
	* "e2"), it will be emitted as "und" (Undetermined).
	*
	* <p><b>Country:</b> If country is not <a
	* href="#def_region">well-formed</a> (for example "12" or "USA"),
	* it will be omitted.
	*
	* <p><b>Variant:</b> If variant <b>is</b> <a
	* href="#def_variant">well-formed</a>, each sub-segment
	* (delimited by '-' or '_') is emitted as a subtag.  Otherwise:
	* <ul>
	*
	* <li>if all sub-segments match <code>[0-9a-zA-Z]{1,8}</code>
	* (for example "WIN" or "Oracle_JDK_Standard_Edition"), the first
	* ill-formed sub-segment and all following will be appended to
	* the private use subtag.  The first appended subtag will be
	* "lvariant", followed by the sub-segments in order, separated by
	* hyphen. For example, "x-lvariant-WIN",
	* "Oracle-x-lvariant-JDK-Standard-Edition".
	*
	* <li>if any sub-segment does not match
	* <code>[0-9a-zA-Z]{1,8}</code>, the variant will be truncated
	* and the problematic sub-segment and all following sub-segments
	* will be omitted.  If the remainder is non-empty, it will be
	* emitted as a private use subtag as above (even if the remainder
	* turns out to be well-formed).  For example,
	* "Solaris_isjustthecoolestthing" is emitted as
	* "x-lvariant-Solaris", not as "solaris".</li></ul>
	*
	* <p><b>Special Conversions:</b> Java supports some old locale
	* representations, including deprecated ISO language codes,
	* for compatibility. This method performs the following
	* conversions:
	* <ul>
	*
	* <li>Deprecated ISO language codes "iw", "ji", and "in" are
	* converted to "he", "yi", and "id", respectively.
	*
	* <li>A locale with language "no", country "NO", and variant
	* "NY", representing Norwegian Nynorsk (Norway), is converted
	* to a language tag "nn-NO".</li></ul>
	*
	* <p><b>Note:</b> Although the language tag created by this
	* method is well-formed (satisfies the syntax requirements
	* defined by the IETF BCP 47 specification), it is not
	* necessarily a valid BCP 47 language tag.  For example,
	* <pre>
	*   new Locale("xx", "YY").toLanguageTag();</pre>
	*
	* will return "xx-YY", but the language subtag "xx" and the
	* region subtag "YY" are invalid because they are not registered
	* in the IANA Language Subtag Registry.
	*
	* @return a BCP47 language tag representing the locale
	* @see #forLanguageTag(String)
	* @since 1.7
	*/
	@:require(java7) @:overload public function toLanguageTag() : String;
	
	/**
	* Returns a locale for the specified IETF BCP 47 language tag string.
	*
	* <p>If the specified language tag contains any ill-formed subtags,
	* the first such subtag and all following subtags are ignored.  Compare
	* to {@link Locale.Builder#setLanguageTag} which throws an exception
	* in this case.
	*
	* <p>The following <b>conversions</b> are performed:<ul>
	*
	* <li>The language code "und" is mapped to language "".
	*
	* <li>The language codes "he", "yi", and "id" are mapped to "iw",
	* "ji", and "in" respectively. (This is the same canonicalization
	* that's done in Locale's constructors.)
	*
	* <li>The portion of a private use subtag prefixed by "lvariant",
	* if any, is removed and appended to the variant field in the
	* result locale (without case normalization).  If it is then
	* empty, the private use subtag is discarded:
	*
	* <pre>
	*     Locale loc;
	*     loc = Locale.forLanguageTag("en-US-x-lvariant-POSIX");
	*     loc.getVariant(); // returns "POSIX"
	*     loc.getExtension('x'); // returns null
	*
	*     loc = Locale.forLanguageTag("de-POSIX-x-URP-lvariant-Abc-Def");
	*     loc.getVariant(); // returns "POSIX_Abc_Def"
	*     loc.getExtension('x'); // returns "urp"
	* </pre>
	*
	* <li>When the languageTag argument contains an extlang subtag,
	* the first such subtag is used as the language, and the primary
	* language subtag and other extlang subtags are ignored:
	*
	* <pre>
	*     Locale.forLanguageTag("ar-aao").getLanguage(); // returns "aao"
	*     Locale.forLanguageTag("en-abc-def-us").toString(); // returns "abc_US"
	* </pre>
	*
	* <li>Case is normalized except for variant tags, which are left
	* unchanged.  Language is normalized to lower case, script to
	* title case, country to upper case, and extensions to lower
	* case.
	*
	* <li>If, after processing, the locale would exactly match either
	* ja_JP_JP or th_TH_TH with no extensions, the appropriate
	* extensions are added as though the constructor had been called:
	*
	* <pre>
	*    Locale.forLanguageTag("ja-JP-x-lvariant-JP").toLanguageTag();
	*    // returns "ja-JP-u-ca-japanese-x-lvariant-JP"
	*    Locale.forLanguageTag("th-TH-x-lvariant-TH").toLanguageTag();
	*    // returns "th-TH-u-nu-thai-x-lvariant-TH"
	* <pre></ul>
	*
	* <p>This implements the 'Language-Tag' production of BCP47, and
	* so supports grandfathered (regular and irregular) as well as
	* private use language tags.  Stand alone private use tags are
	* represented as empty language and extension 'x-whatever',
	* and grandfathered tags are converted to their canonical replacements
	* where they exist.
	*
	* <p>Grandfathered tags with canonical replacements are as follows:
	*
	* <table>
	* <tbody align="center">
	* <tr><th>grandfathered tag</th><th>&nbsp;</th><th>modern replacement</th></tr>
	* <tr><td>art-lojban</td><td>&nbsp;</td><td>jbo</td></tr>
	* <tr><td>i-ami</td><td>&nbsp;</td><td>ami</td></tr>
	* <tr><td>i-bnn</td><td>&nbsp;</td><td>bnn</td></tr>
	* <tr><td>i-hak</td><td>&nbsp;</td><td>hak</td></tr>
	* <tr><td>i-klingon</td><td>&nbsp;</td><td>tlh</td></tr>
	* <tr><td>i-lux</td><td>&nbsp;</td><td>lb</td></tr>
	* <tr><td>i-navajo</td><td>&nbsp;</td><td>nv</td></tr>
	* <tr><td>i-pwn</td><td>&nbsp;</td><td>pwn</td></tr>
	* <tr><td>i-tao</td><td>&nbsp;</td><td>tao</td></tr>
	* <tr><td>i-tay</td><td>&nbsp;</td><td>tay</td></tr>
	* <tr><td>i-tsu</td><td>&nbsp;</td><td>tsu</td></tr>
	* <tr><td>no-bok</td><td>&nbsp;</td><td>nb</td></tr>
	* <tr><td>no-nyn</td><td>&nbsp;</td><td>nn</td></tr>
	* <tr><td>sgn-BE-FR</td><td>&nbsp;</td><td>sfb</td></tr>
	* <tr><td>sgn-BE-NL</td><td>&nbsp;</td><td>vgt</td></tr>
	* <tr><td>sgn-CH-DE</td><td>&nbsp;</td><td>sgg</td></tr>
	* <tr><td>zh-guoyu</td><td>&nbsp;</td><td>cmn</td></tr>
	* <tr><td>zh-hakka</td><td>&nbsp;</td><td>hak</td></tr>
	* <tr><td>zh-min-nan</td><td>&nbsp;</td><td>nan</td></tr>
	* <tr><td>zh-xiang</td><td>&nbsp;</td><td>hsn</td></tr>
	* </tbody>
	* </table>
	*
	* <p>Grandfathered tags with no modern replacement will be
	* converted as follows:
	*
	* <table>
	* <tbody align="center">
	* <tr><th>grandfathered tag</th><th>&nbsp;</th><th>converts to</th></tr>
	* <tr><td>cel-gaulish</td><td>&nbsp;</td><td>xtg-x-cel-gaulish</td></tr>
	* <tr><td>en-GB-oed</td><td>&nbsp;</td><td>en-GB-x-oed</td></tr>
	* <tr><td>i-default</td><td>&nbsp;</td><td>en-x-i-default</td></tr>
	* <tr><td>i-enochian</td><td>&nbsp;</td><td>und-x-i-enochian</td></tr>
	* <tr><td>i-mingo</td><td>&nbsp;</td><td>see-x-i-mingo</td></tr>
	* <tr><td>zh-min</td><td>&nbsp;</td><td>nan-x-zh-min</td></tr>
	* </tbody>
	* </table>
	*
	* <p>For a list of all grandfathered tags, see the
	* IANA Language Subtag Registry (search for "Type: grandfathered").
	*
	* <p><b>Note</b>: there is no guarantee that <code>toLanguageTag</code>
	* and <code>forLanguageTag</code> will round-trip.
	*
	* @param languageTag the language tag
	* @return The locale that best represents the language tag.
	* @throws NullPointerException if <code>languageTag</code> is <code>null</code>
	* @see #toLanguageTag()
	* @see java.util.Locale.Builder#setLanguageTag(String)
	* @since 1.7
	*/
	@:require(java7) @:overload public static function forLanguageTag(languageTag : String) : java.util.Locale;
	
	/**
	* Returns a three-letter abbreviation of this locale's language.
	* If the language matches an ISO 639-1 two-letter code, the
	* corresponding ISO 639-2/T three-letter lowercase code is
	* returned.  The ISO 639-2 language codes can be found on-line,
	* see "Codes for the Representation of Names of Languages Part 2:
	* Alpha-3 Code".  If the locale specifies a three-letter
	* language, the language is returned as is.  If the locale does
	* not specify a language the empty string is returned.
	*
	* @return A three-letter abbreviation of this locale's language.
	* @exception MissingResourceException Throws MissingResourceException if
	* three-letter language abbreviation is not available for this locale.
	*/
	@:overload public function getISO3Language() : String;
	
	/**
	* Returns a three-letter abbreviation for this locale's country.
	* If the country matches an ISO 3166-1 alpha-2 code, the
	* corresponding ISO 3166-1 alpha-3 uppercase code is returned.
	* If the locale doesn't specify a country, this will be the empty
	* string.
	*
	* <p>The ISO 3166-1 codes can be found on-line.
	*
	* @return A three-letter abbreviation of this locale's country.
	* @exception MissingResourceException Throws MissingResourceException if the
	* three-letter country abbreviation is not available for this locale.
	*/
	@:overload public function getISO3Country() : String;
	
	/**
	* Returns a name for the locale's language that is appropriate for display to the
	* user.
	* If possible, the name returned will be localized for the default locale.
	* For example, if the locale is fr_FR and the default locale
	* is en_US, getDisplayLanguage() will return "French"; if the locale is en_US and
	* the default locale is fr_FR, getDisplayLanguage() will return "anglais".
	* If the name returned cannot be localized for the default locale,
	* (say, we don't have a Japanese name for Croatian),
	* this function falls back on the English name, and uses the ISO code as a last-resort
	* value.  If the locale doesn't specify a language, this function returns the empty string.
	*/
	@:overload @:final public function getDisplayLanguage() : String;
	
	/**
	* Returns a name for the locale's language that is appropriate for display to the
	* user.
	* If possible, the name returned will be localized according to inLocale.
	* For example, if the locale is fr_FR and inLocale
	* is en_US, getDisplayLanguage() will return "French"; if the locale is en_US and
	* inLocale is fr_FR, getDisplayLanguage() will return "anglais".
	* If the name returned cannot be localized according to inLocale,
	* (say, we don't have a Japanese name for Croatian),
	* this function falls back on the English name, and finally
	* on the ISO code as a last-resort value.  If the locale doesn't specify a language,
	* this function returns the empty string.
	*
	* @exception NullPointerException if <code>inLocale</code> is <code>null</code>
	*/
	@:overload public function getDisplayLanguage(inLocale : java.util.Locale) : String;
	
	/**
	* Returns a name for the the locale's script that is appropriate for display to
	* the user. If possible, the name will be localized for the default locale.  Returns
	* the empty string if this locale doesn't specify a script code.
	*
	* @return the display name of the script code for the current default locale
	* @since 1.7
	*/
	@:require(java7) @:overload public function getDisplayScript() : String;
	
	/**
	* Returns a name for the locale's script that is appropriate
	* for display to the user. If possible, the name will be
	* localized for the given locale. Returns the empty string if
	* this locale doesn't specify a script code.
	*
	* @return the display name of the script code for the current default locale
	* @throws NullPointerException if <code>inLocale</code> is <code>null</code>
	* @since 1.7
	*/
	@:require(java7) @:overload public function getDisplayScript(inLocale : java.util.Locale) : String;
	
	/**
	* Returns a name for the locale's country that is appropriate for display to the
	* user.
	* If possible, the name returned will be localized for the default locale.
	* For example, if the locale is fr_FR and the default locale
	* is en_US, getDisplayCountry() will return "France"; if the locale is en_US and
	* the default locale is fr_FR, getDisplayCountry() will return "Etats-Unis".
	* If the name returned cannot be localized for the default locale,
	* (say, we don't have a Japanese name for Croatia),
	* this function falls back on the English name, and uses the ISO code as a last-resort
	* value.  If the locale doesn't specify a country, this function returns the empty string.
	*/
	@:overload @:final public function getDisplayCountry() : String;
	
	/**
	* Returns a name for the locale's country that is appropriate for display to the
	* user.
	* If possible, the name returned will be localized according to inLocale.
	* For example, if the locale is fr_FR and inLocale
	* is en_US, getDisplayCountry() will return "France"; if the locale is en_US and
	* inLocale is fr_FR, getDisplayCountry() will return "Etats-Unis".
	* If the name returned cannot be localized according to inLocale.
	* (say, we don't have a Japanese name for Croatia),
	* this function falls back on the English name, and finally
	* on the ISO code as a last-resort value.  If the locale doesn't specify a country,
	* this function returns the empty string.
	*
	* @exception NullPointerException if <code>inLocale</code> is <code>null</code>
	*/
	@:overload public function getDisplayCountry(inLocale : java.util.Locale) : String;
	
	/**
	* Returns a name for the locale's variant code that is appropriate for display to the
	* user.  If possible, the name will be localized for the default locale.  If the locale
	* doesn't specify a variant code, this function returns the empty string.
	*/
	@:overload @:final public function getDisplayVariant() : String;
	
	/**
	* Returns a name for the locale's variant code that is appropriate for display to the
	* user.  If possible, the name will be localized for inLocale.  If the locale
	* doesn't specify a variant code, this function returns the empty string.
	*
	* @exception NullPointerException if <code>inLocale</code> is <code>null</code>
	*/
	@:overload public function getDisplayVariant(inLocale : java.util.Locale) : String;
	
	/**
	* Returns a name for the locale that is appropriate for display to the
	* user. This will be the values returned by getDisplayLanguage(),
	* getDisplayScript(), getDisplayCountry(), and getDisplayVariant() assembled
	* into a single string. The the non-empty values are used in order,
	* with the second and subsequent names in parentheses.  For example:
	* <blockquote>
	* language (script, country, variant)<br>
	* language (country)<br>
	* language (variant)<br>
	* script (country)<br>
	* country<br>
	* </blockquote>
	* depending on which fields are specified in the locale.  If the
	* language, sacript, country, and variant fields are all empty,
	* this function returns the empty string.
	*/
	@:overload @:final public function getDisplayName() : String;
	
	/**
	* Returns a name for the locale that is appropriate for display
	* to the user.  This will be the values returned by
	* getDisplayLanguage(), getDisplayScript(),getDisplayCountry(),
	* and getDisplayVariant() assembled into a single string.
	* The non-empty values are used in order,
	* with the second and subsequent names in parentheses.  For example:
	* <blockquote>
	* language (script, country, variant)<br>
	* language (country)<br>
	* language (variant)<br>
	* script (country)<br>
	* country<br>
	* </blockquote>
	* depending on which fields are specified in the locale.  If the
	* language, script, country, and variant fields are all empty,
	* this function returns the empty string.
	*
	* @throws NullPointerException if <code>inLocale</code> is <code>null</code>
	*/
	@:overload public function getDisplayName(inLocale : java.util.Locale) : String;
	
	/**
	* Overrides Cloneable.
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Override hashCode.
	* Since Locales are often used in hashtables, caches the value
	* for speed.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns true if this Locale is equal to another object.  A Locale is
	* deemed equal to another Locale with identical language, script, country,
	* variant and extensions, and unequal to all other objects.
	*
	* @return true if this Locale is equal to the specified object.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
@:native('java$util$Locale$Cache') @:internal extern class Locale_Cache extends sun.util.locale.LocaleObjectCache<java.util.Locale.Locale_LocaleKey, java.util.Locale>
{
	@:overload private function createObject(key : java.util.Locale.Locale_LocaleKey) : java.util.Locale;
	
	
}
@:native('java$util$Locale$LocaleKey') @:internal extern class Locale_LocaleKey
{
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
/**
* Obtains a localized locale names from a LocaleNameProvider
* implementation.
*/
@:native('java$util$Locale$LocaleNameGetter') @:internal extern class Locale_LocaleNameGetter implements sun.util.LocaleServiceProviderPool.LocaleServiceProviderPool_LocalizedObjectGetter<java.util.spi.LocaleNameProvider, String>
{
	@:overload public function getObject(localeNameProvider : java.util.spi.LocaleNameProvider, locale : java.util.Locale, key : String, params : java.NativeArray<Dynamic>) : String;
	
	
}
/**
* Enum for locale categories.  These locale categories are used to get/set
* the default locale for the specific functionality represented by the
* category.
*
* @see #getDefault(Locale.Category)
* @see #setDefault(Locale.Category, Locale)
* @since 1.7
*/
@:require(java7) @:native('java$util$Locale$Category') extern enum Locale_Category
{
	/**
	* Category used to represent the default locale for
	* displaying user interfaces.
	*/
	DISPLAY;
	/**
	* Category used to represent the default locale for
	* formatting dates, numbers, and/or currencies.
	*/
	FORMAT;
	
}

/**
* <code>Builder</code> is used to build instances of <code>Locale</code>
* from values configured by the setters.  Unlike the <code>Locale</code>
* constructors, the <code>Builder</code> checks if a value configured by a
* setter satisfies the syntax requirements defined by the <code>Locale</code>
* class.  A <code>Locale</code> object created by a <code>Builder</code> is
* well-formed and can be transformed to a well-formed IETF BCP 47 language tag
* without losing information.
*
* <p><b>Note:</b> The <code>Locale</code> class does not provide any
* syntactic restrictions on variant, while BCP 47 requires each variant
* subtag to be 5 to 8 alphanumerics or a single numeric followed by 3
* alphanumerics.  The method <code>setVariant</code> throws
* <code>IllformedLocaleException</code> for a variant that does not satisfy
* this restriction. If it is necessary to support such a variant, use a
* Locale constructor.  However, keep in mind that a <code>Locale</code>
* object created this way might lose the variant information when
* transformed to a BCP 47 language tag.
*
* <p>The following example shows how to create a <code>Locale</code> object
* with the <code>Builder</code>.
* <blockquote>
* <pre>
*     Locale aLocale = new Builder().setLanguage("sr").setScript("Latn").setRegion("RS").build();
* </pre>
* </blockquote>
*
* <p>Builders can be reused; <code>clear()</code> resets all
* fields to their default values.
*
* @see Locale#forLanguageTag
* @since 1.7
*/
@:require(java7) @:native('java$util$Locale$Builder') extern class Locale_Builder
{
	/**
	* Constructs an empty Builder. The default value of all
	* fields, extensions, and private use information is the
	* empty string.
	*/
	@:overload public function new() : Void;
	
	/**
	* Resets the <code>Builder</code> to match the provided
	* <code>locale</code>.  Existing state is discarded.
	*
	* <p>All fields of the locale must be well-formed, see {@link Locale}.
	*
	* <p>Locales with any ill-formed fields cause
	* <code>IllformedLocaleException</code> to be thrown, except for the
	* following three cases which are accepted for compatibility
	* reasons:<ul>
	* <li>Locale("ja", "JP", "JP") is treated as "ja-JP-u-ca-japanese"
	* <li>Locale("th", "TH", "TH") is treated as "th-TH-u-nu-thai"
	* <li>Locale("no", "NO", "NY") is treated as "nn-NO"</ul>
	*
	* @param locale the locale
	* @return This builder.
	* @throws IllformedLocaleException if <code>locale</code> has
	* any ill-formed fields.
	* @throws NullPointerException if <code>locale</code> is null.
	*/
	@:overload public function setLocale(locale : java.util.Locale) : java.util.Locale.Locale_Builder;
	
	/**
	* Resets the Builder to match the provided IETF BCP 47
	* language tag.  Discards the existing state.  Null and the
	* empty string cause the builder to be reset, like {@link
	* #clear}.  Grandfathered tags (see {@link
	* Locale#forLanguageTag}) are converted to their canonical
	* form before being processed.  Otherwise, the language tag
	* must be well-formed (see {@link Locale}) or an exception is
	* thrown (unlike <code>Locale.forLanguageTag</code>, which
	* just discards ill-formed and following portions of the
	* tag).
	*
	* @param languageTag the language tag
	* @return This builder.
	* @throws IllformedLocaleException if <code>languageTag</code> is ill-formed
	* @see Locale#forLanguageTag(String)
	*/
	@:overload public function setLanguageTag(languageTag : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Sets the language.  If <code>language</code> is the empty string or
	* null, the language in this <code>Builder</code> is removed.  Otherwise,
	* the language must be <a href="./Locale.html#def_language">well-formed</a>
	* or an exception is thrown.
	*
	* <p>The typical language value is a two or three-letter language
	* code as defined in ISO639.
	*
	* @param language the language
	* @return This builder.
	* @throws IllformedLocaleException if <code>language</code> is ill-formed
	*/
	@:overload public function setLanguage(language : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Sets the script. If <code>script</code> is null or the empty string,
	* the script in this <code>Builder</code> is removed.
	* Otherwise, the script must be <a href="./Locale.html#def_script">well-formed</a> or an
	* exception is thrown.
	*
	* <p>The typical script value is a four-letter script code as defined by ISO 15924.
	*
	* @param script the script
	* @return This builder.
	* @throws IllformedLocaleException if <code>script</code> is ill-formed
	*/
	@:overload public function setScript(script : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Sets the region.  If region is null or the empty string, the region
	* in this <code>Builder</code> is removed.  Otherwise,
	* the region must be <a href="./Locale.html#def_region">well-formed</a> or an
	* exception is thrown.
	*
	* <p>The typical region value is a two-letter ISO 3166 code or a
	* three-digit UN M.49 area code.
	*
	* <p>The country value in the <code>Locale</code> created by the
	* <code>Builder</code> is always normalized to upper case.
	*
	* @param region the region
	* @return This builder.
	* @throws IllformedLocaleException if <code>region</code> is ill-formed
	*/
	@:overload public function setRegion(region : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Sets the variant.  If variant is null or the empty string, the
	* variant in this <code>Builder</code> is removed.  Otherwise, it
	* must consist of one or more <a href="./Locale.html#def_variant">well-formed</a>
	* subtags, or an exception is thrown.
	*
	* <p><b>Note:</b> This method checks if <code>variant</code>
	* satisfies the IETF BCP 47 variant subtag's syntax requirements,
	* and normalizes the value to lowercase letters.  However,
	* the <code>Locale</code> class does not impose any syntactic
	* restriction on variant, and the variant value in
	* <code>Locale</code> is case sensitive.  To set such a variant,
	* use a Locale constructor.
	*
	* @param variant the variant
	* @return This builder.
	* @throws IllformedLocaleException if <code>variant</code> is ill-formed
	*/
	@:overload public function setVariant(variant : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Sets the extension for the given key. If the value is null or the
	* empty string, the extension is removed.  Otherwise, the extension
	* must be <a href="./Locale.html#def_extensions">well-formed</a> or an exception
	* is thrown.
	*
	* <p><b>Note:</b> The key {@link Locale#UNICODE_LOCALE_EXTENSION
	* UNICODE_LOCALE_EXTENSION} ('u') is used for the Unicode locale extension.
	* Setting a value for this key replaces any existing Unicode locale key/type
	* pairs with those defined in the extension.
	*
	* <p><b>Note:</b> The key {@link Locale#PRIVATE_USE_EXTENSION
	* PRIVATE_USE_EXTENSION} ('x') is used for the private use code. To be
	* well-formed, the value for this key needs only to have subtags of one to
	* eight alphanumeric characters, not two to eight as in the general case.
	*
	* @param key the extension key
	* @param value the extension value
	* @return This builder.
	* @throws IllformedLocaleException if <code>key</code> is illegal
	* or <code>value</code> is ill-formed
	* @see #setUnicodeLocaleKeyword(String, String)
	*/
	@:overload public function setExtension(key : java.StdTypes.Char16, value : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Sets the Unicode locale keyword type for the given key.  If the type
	* is null, the Unicode keyword is removed.  Otherwise, the key must be
	* non-null and both key and type must be <a
	* href="./Locale.html#def_locale_extension">well-formed</a> or an exception
	* is thrown.
	*
	* <p>Keys and types are converted to lower case.
	*
	* <p><b>Note</b>:Setting the 'u' extension via {@link #setExtension}
	* replaces all Unicode locale keywords with those defined in the
	* extension.
	*
	* @param key the Unicode locale key
	* @param type the Unicode locale type
	* @return This builder.
	* @throws IllformedLocaleException if <code>key</code> or <code>type</code>
	* is ill-formed
	* @throws NullPointerException if <code>key</code> is null
	* @see #setExtension(char, String)
	*/
	@:overload public function setUnicodeLocaleKeyword(key : String, type : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Adds a unicode locale attribute, if not already present, otherwise
	* has no effect.  The attribute must not be null and must be <a
	* href="./Locale.html#def_locale_extension">well-formed</a> or an exception
	* is thrown.
	*
	* @param attribute the attribute
	* @return This builder.
	* @throws NullPointerException if <code>attribute</code> is null
	* @throws IllformedLocaleException if <code>attribute</code> is ill-formed
	* @see #setExtension(char, String)
	*/
	@:overload public function addUnicodeLocaleAttribute(attribute : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Removes a unicode locale attribute, if present, otherwise has no
	* effect.  The attribute must not be null and must be <a
	* href="./Locale.html#def_locale_extension">well-formed</a> or an exception
	* is thrown.
	*
	* <p>Attribute comparision for removal is case-insensitive.
	*
	* @param attribute the attribute
	* @return This builder.
	* @throws NullPointerException if <code>attribute</code> is null
	* @throws IllformedLocaleException if <code>attribute</code> is ill-formed
	* @see #setExtension(char, String)
	*/
	@:overload public function removeUnicodeLocaleAttribute(attribute : String) : java.util.Locale.Locale_Builder;
	
	/**
	* Resets the builder to its initial, empty state.
	*
	* @return This builder.
	*/
	@:overload public function clear() : java.util.Locale.Locale_Builder;
	
	/**
	* Resets the extensions to their initial, empty state.
	* Language, script, region and variant are unchanged.
	*
	* @return This builder.
	* @see #setExtension(char, String)
	*/
	@:overload public function clearExtensions() : java.util.Locale.Locale_Builder;
	
	/**
	* Returns an instance of <code>Locale</code> created from the fields set
	* on this builder.
	*
	* <p>This applies the conversions listed in {@link Locale#forLanguageTag}
	* when constructing a Locale. (Grandfathered tags are handled in
	* {@link #setLanguageTag}.)
	*
	* @return A Locale.
	*/
	@:overload public function build() : java.util.Locale;
	
	
}
