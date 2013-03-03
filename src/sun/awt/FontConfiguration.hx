package sun.awt;
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
extern class FontConfiguration
{
	/**
	* Provides the definitions of the five logical fonts: Serif, SansSerif,
	* Monospaced, Dialog, and DialogInput. The necessary information
	* is obtained from fontconfig files.
	*/
	@:protected @:static private static var osVersion : String;
	
	@:protected @:static private static var osName : String;
	
	@:protected @:static private static var encoding : String;
	
	@:protected @:static private static var startupLocale : java.util.Locale;
	
	@:protected @:static private static var localeMap : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected @:static private static var isProperties : Bool;
	
	@:protected private var fontManager : sun.font.SunFontManager;
	
	@:protected private var preferLocaleFonts : Bool;
	
	@:protected private var preferPropFonts : Bool;
	
	/* A default FontConfiguration must be created before an alternate
	* one to ensure proper static initialisation takes place.
	*/
	@:overload @:public public function new(fm : sun.font.SunFontManager) : Void;
	
	@:overload @:public @:synchronized public function init() : Bool;
	
	@:overload @:public public function new(fm : sun.font.SunFontManager, preferLocaleFonts : Bool, preferPropFonts : Bool) : Void;
	
	/**
	* Fills in this instance's osVersion and osName members. By
	* default uses the system properties os.name and os.version;
	* subclasses may override.
	*/
	@:overload @:protected private function setOsNameAndVersion() : Void;
	
	@:overload @:public public function foundOsSpecificFile() : Bool;
	
	/* Smoke test to see if we can trust this configuration by testing if
	* the first slot of a composite font maps to an installed file.
	*/
	@:overload @:public public function fontFilesArePresent() : Bool;
	
	@:overload @:protected private function getInstalledFallbackFonts(javaLib : String) : Void;
	
	/* Initialize the internal data tables from binary format font
	* configuration file.
	*/
	@:overload @:public @:static public static function loadBinary(inStream : java.io.InputStream) : Void;
	
	/* Generate a binary format font configuration from internal data
	* tables.
	*/
	@:overload @:public @:static public static function saveBinary(out : java.io.OutputStream) : Void;
	
	@:overload @:public @:static public static function loadProperties(_in : java.io.InputStream) : Void;
	
	@:public @:static public static var verbose : Bool;
	
	@:overload @:public @:static public static function hasMonoToPropMap() : Bool;
	
	@:protected @:static @:final private static var NUM_FONTS(default, null) : Int;
	
	@:protected @:static @:final private static var NUM_STYLES(default, null) : Int;
	
	@:protected @:static @:final private static var fontNames(default, null) : java.NativeArray<String>;
	
	@:protected @:static @:final private static var publicFontNames(default, null) : java.NativeArray<String>;
	
	@:protected @:static @:final private static var styleNames(default, null) : java.NativeArray<String>;
	
	/**
	* Checks whether the given font family name is a valid logical font name.
	* The check is case insensitive.
	*/
	@:overload @:public @:static public static function isLogicalFontFamilyName(fontName : String) : Bool;
	
	/**
	* Checks whether the given font family name is a valid logical font name.
	* The check is case sensitive.
	*/
	@:overload @:public @:static public static function isLogicalFontFamilyNameLC(fontName : String) : Bool;
	
	/**
	* Checks whether the given font face name is a valid logical font name.
	* The check is case insensitive.
	*/
	@:overload @:public @:static public static function isLogicalFontFaceName(fontName : String) : Bool;
	
	/**
	* Checks whether the given font face name is a valid logical font name.
	* The check is case sensitive.
	*/
	@:overload @:public @:static public static function isLogicalFontFaceNameLC(fontName : String) : Bool;
	
	@:overload @:protected @:static private static function getFontIndex(fontName : String) : Int;
	
	@:overload @:protected @:static private static function getStyleIndex(styleName : String) : Int;
	
	@:overload @:protected @:static private static function getStyleIndex(style : Int) : Int;
	
	@:overload @:protected @:static private static function getFontName(fontIndex : Int) : String;
	
	@:overload @:protected @:static private static function getStyleName(styleIndex : Int) : String;
	
	/**
	* Returns the font face name for the given logical font
	* family name and style.
	* The style argument is interpreted as in java.awt.Font.Font.
	*/
	@:overload @:public @:static public static function getLogicalFontFaceName(familyName : String, style : Int) : String;
	
	/**
	* Returns the string typically used in properties files
	* for the given style.
	* The style argument is interpreted as in java.awt.Font.Font.
	*/
	@:overload @:public @:static public static function getStyleString(style : Int) : String;
	
	/**
	* Returns a fallback name for the given font name. For a few known
	* font names, matching logical font names are returned. For all
	* other font names, defaultFallback is returned.
	* defaultFallback differs between AWT and 2D.
	*/
	@:overload @:public @:abstract public function getFallbackFamilyName(fontName : String, defaultFallback : String) : String;
	
	/**
	* Returns the 1.1 equivalent for some old 1.0 font family names for
	* which we need to maintain compatibility in some configurations.
	* Returns null for other font names.
	*/
	@:overload @:protected private function getCompatibilityFamilyName(fontName : String) : String;
	
	@:protected @:static private static var installedFallbackFontFiles : java.NativeArray<String>;
	
	/**
	* Maps a file name given in the font configuration file
	* to a format appropriate for the platform.
	*/
	@:overload @:protected private function mapFileName(fileName : String) : String;
	
	/* Mappings from file encoding to font config name for font supporting
	* the corresponding language. This is filled in by initReorderMap()
	*/
	@:protected private var reorderMap : java.util.HashMap<Dynamic, Dynamic>;
	
	/* Platform-specific mappings */
	@:overload @:protected @:abstract private function initReorderMap() : Void;
	
	/* Called to determine if there's a re-order sequence for this locale/
	* encoding. If there's none then the caller can "bail" and avoid
	* unnecessary work
	*/
	@:overload @:public @:static public static function willReorderForStartupLocale() : Bool;
	
	@:overload @:protected private function split(sequence : String) : java.NativeArray<String>;
	
	/**
	* Returns FontDescriptors describing the physical fonts used for the
	* given logical font name and style. The font name is interpreted
	* in a case insensitive way.
	* The style argument is interpreted as in java.awt.Font.Font.
	*/
	@:overload @:public public function getFontDescriptors(fontName : String, style : Int) : java.NativeArray<sun.awt.FontDescriptor>;
	
	/**
	* Returns the AWT font name for the given platform font name and
	* character subset.
	*/
	@:overload @:protected private function makeAWTFontName(platformFontName : String, characterSubsetName : String) : String;
	
	/**
	* Returns the java.io name of the platform character encoding for the
	* given AWT font name and character subset. May return "default"
	* to indicate that getDefaultFontCharset should be called to obtain
	* a charset encoder.
	*/
	@:overload @:protected @:abstract private function getEncoding(awtFontName : String, characterSubsetName : String) : String;
	
	@:overload @:protected @:abstract private function getDefaultFontCharset(fontName : String) : java.nio.charset.Charset;
	
	/* This retrieves the platform font directories (path) calculated
	* by setAWTFontPathSequence(String[]). The default implementation
	* returns null, its expected that X11 platforms may return
	* non-null.
	*/
	@:overload @:public public function getAWTFontPathSet() : java.util.HashSet<String>;
	
	/**
	* Returns an array of composite font descriptors for all logical font
	* faces.
	* If the font configuration file doesn't specify Lucida Sans Regular
	* or the given fallback font as component fonts, they are added here.
	*/
	@:overload @:public public function get2DCompositeFontInfo() : java.NativeArray<sun.font.CompositeFontDescriptor>;
	
	@:overload @:protected @:abstract private function getFaceNameFromComponentFontName(componentFontName : String) : String;
	
	@:overload @:protected @:abstract private function getFileNameFromComponentFontName(componentFontName : String) : String;
	
	@:overload @:public public function needToSearchForFile(fileName : String) : Bool;
	
	/* Return the number of core fonts. Note this isn't thread safe but
	* a calling thread can call this and getPlatformFontNames() in either
	* order.
	*/
	@:overload @:public public function getNumberCoreFonts() : Int;
	
	/* Return all platform font names used by this font configuration.
	* The first getNumberCoreFonts() entries are guaranteed to be the
	* core fonts - ie no fall back only fonts.
	*/
	@:overload @:public public function getPlatformFontNames() : java.NativeArray<String>;
	
	/**
	* Returns a file name for the physical font represented by this platform font name,
	* if the font configuration has such information available, or null if the
	* information is unavailable. The file name returned is just a hint; a null return
	* value doesn't necessarily mean that the font is unavailable, nor does a non-null
	* return value guarantee that the file exists and contains the physical font.
	* The file name can be an absolute or a relative path name.
	*/
	@:overload @:public public function getFileNameFromPlatformName(platformName : String) : String;
	
	/**
	* Returns a configuration specific path to be appended to the font
	* search path.
	*/
	@:overload @:public public function getExtraFontPath() : String;
	
	@:overload @:public public function getVersion() : String;
	
	/* subclass support */
	@:overload @:protected @:static private static function getFontConfiguration() : sun.awt.FontConfiguration;
	
	@:overload @:protected private function setFontConfiguration() : Void;
	
	@:protected @:static private static var table_awtfontpaths : java.NativeArray<java.StdTypes.Int16>;
	
	/* Return the fontID of the platformFontName defined in this font config
	* by "LogicalFontName.StyleName.CharacterSubsetName" entry or
	* "allfonts.CharacterSubsetName" entry in properties format fc file.
	*/
	@:overload @:protected @:static private static function getComponentFontID(scriptID : java.StdTypes.Int16, fontIndex : Int, styleIndex : Int) : java.StdTypes.Int16;
	
	/* Same as getCompoentFontID() except this method returns the fontID define by
	* "xxxx.motif" entry.
	*/
	@:overload @:protected @:static private static function getComponentFontIDMotif(scriptID : java.StdTypes.Int16, fontIndex : Int, styleIndex : Int) : java.StdTypes.Int16;
	
	/* Return the PlatformFontName from its fontID*/
	@:overload @:protected @:static private static function getComponentFontName(id : java.StdTypes.Int16) : String;
	
	@:overload @:protected private function getCoreScripts(fontIndex : Int) : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload @:protected @:static private static function getString(stringID : java.StdTypes.Int16) : String;
	
	
}
@:native('sun$awt$FontConfiguration$PropertiesHandler') @:internal extern class FontConfiguration_PropertiesHandler
{
	@:overload @:public public function load(_in : java.io.InputStream) : Void;
	
	
}
@:native('sun$awt$FontConfiguration$PropertiesHandler$FontProperties') @:internal extern class FontConfiguration_PropertiesHandler_FontProperties extends java.util.Properties
{
	@:overload @:public @:synchronized override public function put(k : Dynamic, v : Dynamic) : Dynamic;
	
	
}
