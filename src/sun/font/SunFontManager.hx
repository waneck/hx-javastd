package sun.font;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SunFontManager implements sun.java2d.FontSupport implements sun.font.FontManagerForSGE
{
	@:public @:static @:final public static var FONTFORMAT_NONE(default, null) : Int;
	
	@:public @:static @:final public static var FONTFORMAT_TRUETYPE(default, null) : Int;
	
	@:public @:static @:final public static var FONTFORMAT_TYPE1(default, null) : Int;
	
	@:public @:static @:final public static var FONTFORMAT_T2K(default, null) : Int;
	
	@:public @:static @:final public static var FONTFORMAT_TTC(default, null) : Int;
	
	@:public @:static @:final public static var FONTFORMAT_COMPOSITE(default, null) : Int;
	
	@:public @:static @:final public static var FONTFORMAT_NATIVE(default, null) : Int;
	
	/* Pool of 20 font file channels chosen because some UTF-8 locale
	* composite fonts can use up to 16 platform fonts (including the
	* Lucida fall back). This should prevent channel thrashing when
	* dealing with one of these fonts.
	* The pool array stores the fonts, rather than directly referencing
	* the channels, as the font needs to do the open/close work.
	*/
	@:protected @:static @:final private static var CHANNELPOOLSIZE(default, null) : Int;
	
	@:protected private var fontFileCache : java.NativeArray<sun.font.FileFont>;
	
	/* given a full name find the Font. Remind: there's duplication
	* here in that this contains the content of compositeFonts +
	* physicalFonts.
	*/
	@:protected private var fullNameToFont : java.util.concurrent.ConcurrentHashMap<String, sun.font.Font2D>;
	
	@:public @:static @:final public static var lucidaFontName(default, null) : String;
	
	@:public @:static public static var jreLibDirName : String;
	
	@:public @:static public static var jreFontDirName : String;
	
	@:protected private var registeredFontFiles : java.util.HashSet<Dynamic>;
	
	/* fontPath is the location of all fonts on the system, excluding the
	* JRE's own font directory but including any path specified using the
	* sun.java2d.fontpath property. Together with that property,  it is
	* initialised by the getPlatformFontPath() method
	* This call must be followed by a call to registerFontDirs(fontPath)
	* once any extra debugging path has been appended.
	*/
	@:protected private var fontPath : String;
	
	@:public @:static public static var noType1Font : Bool;
	
	/**
	* Returns the global SunFontManager instance. This is similar to
	* {@link FontManagerFactory#getInstance()} but it returns a
	* SunFontManager instance instead. This is only used in internal classes
	* where we can safely assume that a SunFontManager is to be used.
	*
	* @return the global SunFontManager instance
	*/
	@:overload @:public @:static public static function getInstance() : sun.font.SunFontManager;
	
	@:overload @:public public function getTrueTypeFilter() : java.io.FilenameFilter;
	
	@:overload @:public public function getType1Filter() : java.io.FilenameFilter;
	
	@:overload @:public public function usingPerAppContextComposites() : Bool;
	
	@:overload @:public public function getEUDCFont() : sun.font.TrueTypeFont;
	
	@:overload @:protected private function new() : Void;
	
	/**
	* This method is provided for internal and exclusive use by Swing.
	*
	* @param font representing a physical font.
	* @return true if the underlying font is a TrueType or OpenType font
	* that claims to support the Microsoft Windows encoding corresponding to
	* the default file.encoding property of this JRE instance.
	* This narrow value is useful for Swing to decide if the font is useful
	* for the the Windows Look and Feel, or, if a  composite font should be
	* used instead.
	* The information used to make the decision is obtained from
	* the ulCodePageRange fields in the font.
	* A caller can use isLogicalFont(Font) in this class before calling
	* this method and would not need to call this method if that
	* returns true.
	*/
	@:overload @:public public function getNewComposite(family : String, style : Int, handle : sun.font.Font2DHandle) : sun.font.Font2DHandle;
	
	@:overload @:protected private function registerCompositeFont(compositeName : String, componentFileNames : java.NativeArray<String>, componentNames : java.NativeArray<String>, numMetricsSlots : Int, exclusionRanges : java.NativeArray<Int>, exclusionMaxIndex : java.NativeArray<Int>, defer : Bool) : Void;
	
	/* This variant is used only when the application specifies
	* a variant of composite fonts which prefers locale specific or
	* proportional fonts.
	*/
	@:native('registerCompositeFont') @:overload @:protected @:static private static function _registerCompositeFont(compositeName : String, componentFileNames : java.NativeArray<String>, componentNames : java.NativeArray<String>, numMetricsSlots : Int, exclusionRanges : java.NativeArray<Int>, exclusionMaxIndex : java.NativeArray<Int>, defer : Bool, altNameCache : java.util.concurrent.ConcurrentHashMap<String, sun.font.Font2D>) : Void;
	
	/*
	* Systems may have fonts with the same name.
	* We want to register only one of such fonts (at least until
	* such time as there might be APIs which can accommodate > 1).
	* Rank is 1) font configuration fonts, 2) JRE fonts, 3) OT/TT fonts,
	* 4) Type1 fonts, 5) native fonts.
	*
	* If the new font has the same name as the old font, the higher
	* ranked font gets added, replacing the lower ranked one.
	* If the fonts are of equal rank, then make a special case of
	* font configuration rank fonts, which are on closer inspection,
	* OT/TT fonts such that the larger font is registered. This is
	* a heuristic since a font may be "larger" in the sense of more
	* code points, or be a larger "file" because it has more bitmaps.
	* So it is possible that using filesize may lead to less glyphs, and
	* using glyphs may lead to lower quality display. Probably number
	* of glyphs is the ideal, but filesize is information we already
	* have and is good enough for the known cases.
	* Also don't want to register fonts that match JRE font families
	* but are coming from a source other than the JRE.
	* This will ensure that we will algorithmically style the JRE
	* plain font and get the same set of glyphs for all styles.
	*
	* Note that this method returns a value
	* if it returns the same object as its argument that means this
	* font was newly registered.
	* If it returns a different object it means this font already exists,
	* and you should use that one.
	* If it returns null means this font was not registered and none
	* in that name is registered. The caller must find a substitute
	*/
	@:overload @:protected private function addToFontList(f : sun.font.PhysicalFont, rank : Int) : sun.font.PhysicalFont;
	
	@:overload @:public public function getRegisteredFonts() : java.NativeArray<sun.font.Font2D>;
	
	@:overload @:protected private function getPhysicalFonts() : java.NativeArray<sun.font.PhysicalFont>;
	
	/* Remind: possibly enhance initialiseDeferredFonts() to be
	* optionally given a name and a style and it could stop when it
	* finds that font - but this would be a problem if two of the
	* fonts reference the same font face name (cf the Solaris
	* euro fonts).
	*/
	@:overload @:protected @:synchronized private function initialiseDeferredFonts() : Void;
	
	@:overload @:protected @:synchronized private function registerDeferredJREFonts(jreDir : String) : Void;
	
	@:overload @:public public function isDeferredFont(fileName : String) : Bool;
	
	/* We keep a map of the files which contain the Lucida fonts so we
	* don't need to search for them.
	* But since we know what fonts these files contain, we can also avoid
	* opening them to look for a font name we don't recognise - see
	* findDeferredFont().
	* For typical cases where the font isn't a JRE one the overhead is
	* this method call, HashMap.get() and null reference test, then
	* a boolean test of noOtherJREFontFiles.
	*/
	/*private*/
	@:overload @:public public function findJREDeferredFont(name : String, style : Int) : sun.font.PhysicalFont;
	
	@:overload @:public public function registerDeferredFont(fileNameKey : String, fullPathName : String, nativeNames : java.NativeArray<String>, fontFormat : Int, useJavaRasterizer : Bool, fontRank : Int) : Void;
	
	@:overload @:public @:synchronized public function initialiseDeferredFont(fileNameKey : String) : sun.font.PhysicalFont;
	
	@:overload @:public public function isRegisteredFontFile(name : String) : Bool;
	
	@:overload @:public public function getRegisteredFontFile(name : String) : sun.font.PhysicalFont;
	
	/* Note that the return value from this method is not always
	* derived from this file, and may be null. See addToFontList for
	* some explanation of this.
	*/
	@:overload @:public public function registerFontFile(fileName : String, nativeNames : java.NativeArray<String>, fontFormat : Int, useJavaRasterizer : Bool, fontRank : Int) : sun.font.PhysicalFont;
	
	@:overload @:public public function registerFonts(fileNames : java.NativeArray<String>, nativeNames : java.NativeArray<java.NativeArray<String>>, fontCount : Int, fontFormat : Int, useJavaRasterizer : Bool, fontRank : Int, defer : Bool) : Void;
	
	/*
	* This is the Physical font used when some other font on the system
	* can't be located. There has to be at least one font or the font
	* system is not useful and the graphics environment cannot sustain
	* the Java platform.
	*/
	@:overload @:public public function getDefaultPhysicalFont() : sun.font.PhysicalFont;
	
	@:overload @:public public function getDefaultLogicalFont(style : Int) : sun.font.Font2D;
	
	/* This is implemented only on windows and is called from code that
	* executes only on windows. This isn't pretty but its not a precedent
	* in this file. This very probably should be cleaned up at some point.
	*/
	@:overload @:protected private function populateFontFileNameMap(fontToFileMap : java.util.HashMap<String, String>, fontToFamilyNameMap : java.util.HashMap<String, String>, familyToFontListMap : java.util.HashMap<String, java.util.ArrayList<String>>, locale : java.util.Locale) : Void;
	
	/**
	* default implementation does nothing.
	*/
	@:overload @:public public function populateHardcodedFileNameMap() : java.util.HashMap<String, sun.font.SunFontManager.SunFontManager_FamilyDescription>;
	
	/* Note this return list excludes logical fonts and JRE fonts */
	@:overload @:protected private function getFontNamesFromPlatform() : java.NativeArray<String>;
	
	@:overload @:public public function gotFontsFromPlatform() : Bool;
	
	@:overload @:public public function getFileNameForFontName(fontName : String) : String;
	
	/* Used to register any font files that are found by platform APIs
	* that weren't previously found in the standard font locations.
	* the isAbsolute() check is needed since that's whats stored in the
	* set, and on windows, the fonts in the system font directory that
	* are in the fontToFileMap are just basenames. We don't want to try
	* to register those again, but we do want to register other registry
	* installed fonts.
	*/
	@:overload @:protected private function registerOtherFontFiles(registeredFontFiles : java.util.HashSet<Dynamic>) : Void;
	
	@:overload @:public public function getFamilyNamesFromPlatform(familyNames : java.util.TreeMap<String, String>, requestedLocale : java.util.Locale) : Bool;
	
	/*
	* The client supplies a name and a style.
	* The name could be a family name, or a full name.
	* A font may exist with the specified style, or it may
	* exist only in some other style. For non-native fonts the scaler
	* may be able to emulate the required style.
	*/
	@:overload @:public public function findFont2D(name : String, style : Int, fallback : Int) : sun.font.Font2D;
	
	/*
	* Workaround for apps which are dependent on a font metrics bug
	* in JDK 1.1. This is an unsupported win32 private setting.
	* Left in for a customer - do not remove.
	*/
	@:overload @:public public function usePlatformFontMetrics() : Bool;
	
	@:overload @:public public function getNumFonts() : Int;
	
	@:overload @:protected @:abstract private function getFontPath(noType1Fonts : Bool) : String;
	
	@:protected private var fileCloser : java.lang.Thread;
	
	@:overload @:public public function createFont2D(fontFile : java.io.File, fontFormat : Int, isCopy : Bool, tracker : sun.font.CreatedFontTracker) : sun.font.Font2D;
	
	/* remind: used in X11GraphicsEnvironment and called often enough
	* that we ought to obsolete this code
	*/
	@:overload @:public @:synchronized public function getFullNameByFileName(fileName : String) : String;
	
	/*
	* This is called when font is determined to be invalid/bad.
	* It designed to be called (for example) by the font scaler
	* when in processing a font file it is discovered to be incorrect.
	* This is different than the case where fonts are discovered to
	* be incorrect during initial verification, as such fonts are
	* never registered.
	* Handles to this font held are re-directed to a default font.
	* This default may not be an ideal substitute buts it better than
	* crashing This code assumes a PhysicalFont parameter as it doesn't
	* make sense for a Composite to be "bad".
	*/
	@:overload @:public @:synchronized public function deRegisterBadFont(font2D : sun.font.Font2D) : Void;
	
	/*
	* This encapsulates all the work that needs to be done when a
	* Font2D is replaced by a different Font2D.
	*/
	@:overload @:public @:synchronized public function replaceFont(oldFont : sun.font.PhysicalFont, newFont : sun.font.PhysicalFont) : Void;
	
	/* This method doesn't check if alternates are selected in this app
	* context. Its used by the FontMetrics caching code which in such
	* a case cannot retrieve a cached metrics solely on the basis of
	* the Font.equals() method since it needs to also check if the Font2D
	* is the same.
	* We also use non-standard composites for Swing native L&F fonts on
	* Windows. In that case the policy is that the metrics reported are
	* based solely on the physical font in the first slot which is the
	* visible java.awt.Font. So in that case the metrics cache which tests
	* the Font does what we want. In the near future when we expand the GTK
	* logical font definitions we may need to revisit this if GTK reports
	* combined metrics instead. For now though this test can be simple.
	*/
	@:overload @:public public function maybeUsingAlternateCompositeFonts() : Bool;
	
	@:overload @:public public function usingAlternateCompositeFonts() : Bool;
	
	/* Modifies the behaviour of a subsequent call to preferLocaleFonts()
	* to use Mincho instead of Gothic for dialoginput in JA locales
	* on windows. Not needed on other platforms.
	*/
	@:overload @:public @:synchronized public function useAlternateFontforJALocales() : Void;
	
	@:overload @:public public function usingAlternateFontforJALocales() : Bool;
	
	@:overload @:public @:synchronized public function preferLocaleFonts() : Void;
	
	@:overload @:public @:synchronized public function preferProportionalFonts() : Void;
	
	@:overload @:public public function registerFont(font : java.awt.Font) : Bool;
	
	@:overload @:public public function getCreatedFontFamilyNames() : java.util.TreeMap<String, String>;
	
	@:overload @:public public function getCreatedFonts() : java.NativeArray<java.awt.Font>;
	
	@:overload @:protected private function getPlatformFontDirs(noType1Fonts : Bool) : java.NativeArray<String>;
	
	/**
	* Returns an array of two strings. The first element is the
	* name of the font. The second element is the file name.
	*/
	@:overload @:public @:abstract public function getDefaultPlatformFont() : java.NativeArray<String>;
	
	@:overload @:protected private function getNativeNames(fontFileName : String, platformName : String) : java.NativeArray<String>;
	
	/**
	* Returns a file name for the physical font represented by this platform
	* font name. The default implementation tries to obtain the file name
	* from the font configuration.
	* Subclasses may override to provide information from other sources.
	*/
	@:overload @:protected private function getFileNameFromPlatformName(platformFontName : String) : String;
	
	/**
	* Return the default font configuration.
	*/
	@:overload @:public public function getFontConfiguration() : sun.awt.FontConfiguration;
	
	/* A call to this method should be followed by a call to
	* registerFontDirs(..)
	*/
	@:overload @:public public function getPlatformFontPath(noType1Font : Bool) : String;
	
	@:overload @:public @:static public static function isOpenJDK() : Bool;
	
	@:overload @:protected private function loadFonts() : Void;
	
	@:overload @:protected private function registerFontDirs(pathName : String) : Void;
	
	/* Called to register fall back fonts */
	@:overload @:public public function registerFontsInDir(dirName : String) : Void;
	
	@:overload @:protected private function registerFontsInDir(dirName : String, useJavaRasterizer : Bool, fontRank : Int, defer : Bool, resolveSymLinks : Bool) : Void;
	
	@:overload @:protected private function registerFontDir(path : String) : Void;
	
	/**
	* Returns file name for default font, either absolute
	* or relative as needed by registerFontFile.
	*/
	@:overload @:public @:synchronized public function getDefaultFontFile() : String;
	
	/**
	* Whether registerFontFile expects absolute or relative
	* font file names.
	*/
	@:overload @:protected private function useAbsoluteFontFileNames() : Bool;
	
	/**
	* Creates this environment's FontConfiguration.
	*/
	@:overload @:protected @:abstract private function createFontConfiguration() : sun.awt.FontConfiguration;
	
	@:overload @:public @:abstract public function createFontConfiguration(preferLocaleFonts : Bool, preferPropFonts : Bool) : sun.awt.FontConfiguration;
	
	/**
	* Returns face name for default font, or null if
	* no face names are used for CompositeFontDescriptors
	* for this platform.
	*/
	@:overload @:public @:synchronized public function getDefaultFontFaceName() : String;
	
	@:overload @:public public function loadFontFiles() : Void;
	
	/**
	* Notifies graphics environment that the logical font configuration
	* uses the given platform font name. The graphics environment may
	* use this for platform specific initialization.
	*/
	@:overload @:protected private function addFontToPlatformFontPath(platformFontName : String) : Void;
	
	@:overload @:protected private function registerFontFile(fontFileName : String, nativeNames : java.NativeArray<String>, fontRank : Int, defer : Bool) : Void;
	
	@:overload @:protected private function registerPlatformFontsUsedByFontConfiguration() : Void;
	
	/*
	* A GE may verify whether a font file used in a fontconfiguration
	* exists. If it doesn't then either we may substitute the default
	* font, or perhaps elide it altogether from the composite font.
	* This makes some sense on windows where the font file is only
	* likely to be in one place. But on other OSes, eg Linux, the file
	* can move around depending. So there we probably don't want to assume
	* its missing and so won't add it to this list.
	* If this list - missingFontFiles - is non-null then the composite
	* font initialisation logic tests to see if a font file is in that
	* set.
	* Only one thread should be able to add to this set so we don't
	* synchronize.
	*/
	@:overload @:protected private function addToMissingFontFileList(fileName : String) : Void;
	
	/*
	* This invocation is not in a privileged block because
	* all privileged operations (reading files and properties)
	* was conducted on the creation of the GE
	*/
	@:overload @:public public function createCompositeFonts(altNameCache : java.util.concurrent.ConcurrentHashMap<String, sun.font.Font2D>, preferLocale : Bool, preferProportional : Bool) : Void;
	
	/**
	* Returns all fonts installed in this environment.
	*/
	@:overload @:public public function getAllInstalledFonts() : java.NativeArray<java.awt.Font>;
	
	/**
	* Get a list of installed fonts in the requested {@link Locale}.
	* The list contains the fonts Family Names.
	* If Locale is null, the default locale is used.
	*
	* @param requestedLocale, if null the default locale is used.
	* @return list of installed fonts in the system.
	*/
	@:overload @:public public function getInstalledFontFamilyNames(requestedLocale : java.util.Locale) : java.NativeArray<String>;
	
	@:overload @:protected private function addNativeFontFamilyNames(familyNames : java.util.TreeMap<String, String>, requestedLocale : java.util.Locale) : Void;
	
	@:overload @:public public function register1dot0Fonts() : Void;
	
	/* Really we need only the JRE fonts family names, but there's little
	* overhead in doing this the easy way by adding all the currently
	* known fonts.
	*/
	@:overload @:protected private function getJREFontFamilyNames(familyNames : java.util.TreeMap<String, String>, requestedLocale : java.util.Locale) : Void;
	
	@:overload @:protected private function getFontConfigFUIR(family : String, style : Int, size : Int) : javax.swing.plaf.FontUIResource;
	
	
}
/**
* The base implementation of the {@link FontManager} interface. It implements
* the platform independent, shared parts of OpenJDK's FontManager
* implementations. The platform specific parts are declared as abstract
* methods that have to be implemented by specific implementations.
*/
@:native('sun$font$SunFontManager$TTFilter') @:internal extern class SunFontManager_TTFilter implements java.io.FilenameFilter
{
	@:overload @:public public function accept(dir : java.io.File, name : String) : Bool;
	
	
}
@:native('sun$font$SunFontManager$T1Filter') @:internal extern class SunFontManager_T1Filter implements java.io.FilenameFilter
{
	@:overload @:public public function accept(dir : java.io.File, name : String) : Bool;
	
	
}
@:native('sun$font$SunFontManager$TTorT1Filter') @:internal extern class SunFontManager_TTorT1Filter implements java.io.FilenameFilter
{
	@:overload @:public public function accept(dir : java.io.File, name : String) : Bool;
	
	
}
/* The class FontRegistrationInfo is used when a client says not
* to register a font immediately. This mechanism is used to defer
* initialisation of all the components of composite fonts at JRE
* start-up. The CompositeFont class is "aware" of this and when it
* is first used it asks for the registration of its components.
* Also in the event that any physical font is requested the
* deferred fonts are initialised before triggering a search of the
* system.
* Two maps are used. One to track the deferred fonts. The
* other to track the fonts that have been initialised through this
* mechanism.
*/
@:native('sun$font$SunFontManager$FontRegistrationInfo') @:internal extern class SunFontManager_FontRegistrationInfo
{
	
}
/* Hardwire the English names and expected file names of fonts
* commonly used at start up. Avoiding until later even the small
* cost of calling platform APIs to locate these can help.
* The code that registers these fonts needs to "bail" if any
* of the files do not exist, so it will verify the existence of
* all non-null file names first.
* They are added in to a map with nominally the first
* word in the name of the family as the key. In all the cases
* we are using the the family name is a single word, and as is
* more or less required the family name is the initial sequence
* in a full name. So lookup first finds the matching description,
* then registers the whole family, returning the right font.
*/
@:native('sun$font$SunFontManager$FamilyDescription') extern class SunFontManager_FamilyDescription
{
	@:public public var familyName : String;
	
	@:public public var plainFullName : String;
	
	@:public public var boldFullName : String;
	
	@:public public var italicFullName : String;
	
	@:public public var boldItalicFullName : String;
	
	@:public public var plainFileName : String;
	
	@:public public var boldFileName : String;
	
	@:public public var italicFileName : String;
	
	@:public public var boldItalicFileName : String;
	
	
}
