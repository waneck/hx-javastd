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
extern class FontConfigManager
{
	/**
	* Instantiates a new FontConfigManager getting the default instance
	* of FontManager from the FontManagerFactory.
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public @:static public static function getFontConfigNames() : java.NativeArray<String>;
	
	/* Called from code that needs to know what are the AA settings
	* that apps using FC would pick up for the default desktop font.
	* Note apps can change the default desktop font. etc, so this
	* isn't certain to be right but its going to correct for most cases.
	* Native return values map to the text aa values in sun.awt.SunHints.
	* which is used to look up the renderinghint value object.
	*/
	@:overload @:public @:static public static function getFontConfigAAHint() : Dynamic;
	
	/* This is public solely so that for debugging purposes it can be called
	* with other names, which might (eg) include a size, eg "sans-24"
	* The return value is a text aa rendering hint value.
	* Normally we should call the no-args version.
	*/
	@:overload @:public @:static public static function getFontConfigAAHint(fcFamily : String) : Dynamic;
	
	/* This does cause the native libfontconfig to be loaded and unloaded,
	* but it does not incur the overhead of initialisation of its
	* data structures, so shouldn't have a measurable impact.
	*/
	@:overload @:public @:static @:native public static function getFontConfigVersion() : Int;
	
	/* This can be made public if it's needed to force a re-read
	* rather than using the cached values. The re-read would be needed
	* only if some event signalled that the fontconfig has changed.
	* In that event this method would need to return directly the array
	* to be used by the caller in case it subsequently changed.
	*/
	@:overload @:public @:synchronized public function initFontConfigFonts(includeFallbacks : Bool) : Void;
	
	@:overload @:public public function registerFromFcInfo(fcInfo : sun.font.FontConfigManager.FontConfigManager_FcCompFont) : sun.font.PhysicalFont;
	
	/*
	* We need to return a Composite font which has as the font in
	* its first slot one obtained from fontconfig.
	*/
	@:overload @:public public function getFontConfigFont(name : String, style : Int) : sun.font.CompositeFont;
	
	/**
	*
	* @param locale
	* @param fcFamily
	* @return
	*/
	@:overload @:public public function getFontConfigFonts() : java.NativeArray<sun.font.FontConfigManager.FontConfigManager_FcCompFont>;
	
	
}
/* These next three classes are just data structures.
*/
@:native('sun$font$FontConfigManager$FontConfigFont') extern class FontConfigManager_FontConfigFont
{
	@:public public var familyName : String;
	
	@:public public var styleStr : String;
	
	@:public public var fullName : String;
	
	@:public public var fontFile : String;
	
	
}
@:native('sun$font$FontConfigManager$FcCompFont') extern class FontConfigManager_FcCompFont
{
	@:public public var fcName : String;
	
	@:public public var fcFamily : String;
	
	@:public public var jdkName : String;
	
	@:public public var style : Int;
	
	@:public public var firstFont : sun.font.FontConfigManager.FontConfigManager_FontConfigFont;
	
	@:public public var allFonts : java.NativeArray<sun.font.FontConfigManager.FontConfigManager_FontConfigFont>;
	
	@:public public var compFont : sun.font.CompositeFont;
	
	
}
@:native('sun$font$FontConfigManager$FontConfigInfo') extern class FontConfigManager_FontConfigInfo
{
	@:public public var fcVersion : Int;
	
	@:public public var cacheDirs : java.NativeArray<String>;
	
	
}
