package sun.awt;
extern class X11FontManager extends sun.font.SunFontManager
{
	@:overload public static function getInstance() : X11FontManager;
	
	/**
	* Takes family name property in the following format:
	* "-linotype-helvetica-medium-r-normal-sans-*-%d-*-*-p-*-iso8859-1"
	* and returns the name of the corresponding physical font.
	* This code is used to resolve font configuration fonts, and expects
	* only to get called for these fonts.
	*/
	@:overload override public function getFileNameFromPlatformName(platName : String) : String;
	
	@:overload override private function getNativeNames(fontFileName : String, platformName : String) : java.NativeArray<String>;
	
	/* NOTE: this method needs to be executed in a privileged context.
	* The superclass constructor which is the primary caller of
	* this method executes entirely in such a context. Additionally
	* the loadFonts() method does too. So all should be well.

	*/
	@:overload override private function registerFontDir(path : String) : Void;
	
	@:overload override public function loadFonts() : Void;
	
	/**
	* Returns the face name for the given XLFD.
	*/
	@:overload public function getFileNameFromXLFD(name : String) : String;
	
	/* Register just the paths, (it doesn't register the fonts).
	* If a font configuration file has specified a baseFontPath
	* fontPath is just those directories, unless on usage we
	* find it doesn't contain what we need for the logical fonts.
	* Otherwise, we register all the paths on Solaris, because
	* the fontPath we have here is the complete one from
	* parsing /var/sadm/install/contents, not just
	* what's on the X font path (may be this should be
	* changed).
	* But for now what it means is that if we didn't do
	* this then if the font weren't listed anywhere on the
	* less complete font path we'd trigger loadFonts which
	* actually registers the fonts. This may actually be
	* the right thing tho' since that would also set up
	* the X font path without which we wouldn't be able to
	* display some "native" fonts.
	* So something to revisit is that probably fontPath
	* here ought to be only the X font path + jre font dir.
	* loadFonts should have a separate native call to
	* get the rest of the platform font path.
	*
	* Registering the directories can now be avoided in the
	* font configuration initialisation when filename entries
	* exist in the font configuration file for all fonts.
	* (Perhaps a little confusingly a filename entry is
	* actually keyed using the XLFD used in the font entries,
	* and it maps *to* a real filename).
	* In the event any are missing, registration of all
	* directories will be invoked to find the real files.
	*
	* But registering the directory performed other
	* functions such as filling in the map of all native names
	* for the font. So when this method isn't invoked, they still
	* must be found. This is mitigated by getNativeNames now
	* being able to return at least the platform name, but mostly
	* by ensuring that when a filename key is found, that
	* xlfd key is stored as one of the set of platform names
	* for the font. Its a set because typical font configuration
	* files reference the same CJK font files using multiple
	* X11 encodings. For the code that adds this to the map
	* see X11GE.getFileNameFromPlatformName(..)
	* If you don't get all of these then some code points may
	* not use the Xserver, and will not get the PCF bitmaps
	* that are available for some point sizes.
	* So, in the event that there is such a problem,
	* unconditionally making this call may be necessary, at
	* some cost to JRE start-up
	*/
	@:overload override private function registerFontDirs(pathName : String) : Void;
	
	@:overload override private function addFontToPlatformFontPath(platformName : String) : Void;
	
	@:overload override private function registerPlatformFontsUsedByFontConfiguration() : Void;
	
	@:overload override private function createFontConfiguration() : sun.awt.FontConfiguration;
	
	@:overload override public function createFontConfiguration(preferLocaleFonts : Bool, preferPropFonts : Bool) : sun.awt.FontConfiguration;
	
	@:overload @:synchronized @:native public function getFontPathNative(noType1Fonts : Bool) : String;
	
	@:overload @:synchronized override private function getFontPath(noType1Fonts : Bool) : String;
	
	@:overload override public function getDefaultPlatformFont() : java.NativeArray<String>;
	
	@:overload @:synchronized public function getFontConfigManager() : sun.font.FontConfigManager;
	
	@:overload override private function getFontConfigFUIR(family : String, style : Int, size : Int) : javax.swing.plaf.FontUIResource;
	
	
}
