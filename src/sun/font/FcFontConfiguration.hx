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
extern class FcFontConfiguration extends sun.awt.FontConfiguration
{
	@:overload @:public public function new(fm : sun.font.SunFontManager) : Void;
	
	/* This isn't called but is needed to satisfy super-class contract. */
	@:overload @:public public function new(fm : sun.font.SunFontManager, preferLocaleFonts : Bool, preferPropFonts : Bool) : Void;
	
	@:overload @:public @:synchronized override public function init() : Bool;
	
	@:overload @:public override public function getFallbackFamilyName(fontName : String, defaultFallback : String) : String;
	
	@:overload @:protected override private function getFaceNameFromComponentFontName(componentFontName : String) : String;
	
	@:overload @:protected override private function getFileNameFromComponentFontName(componentFontName : String) : String;
	
	@:overload @:public override public function getFileNameFromPlatformName(platformName : String) : String;
	
	@:overload @:protected override private function getDefaultFontCharset(fontName : String) : java.nio.charset.Charset;
	
	@:overload @:protected override private function getEncoding(awtFontName : String, characterSubsetName : String) : String;
	
	@:overload @:protected override private function initReorderMap() : Void;
	
	@:overload @:public override public function getFontDescriptors(fontName : String, style : Int) : java.NativeArray<sun.awt.FontDescriptor>;
	
	@:overload @:public override public function getNumberCoreFonts() : Int;
	
	@:overload @:public override public function getPlatformFontNames() : java.NativeArray<String>;
	
	@:overload @:public override public function getExtraFontPath() : String;
	
	@:overload @:public override public function needToSearchForFile(fileName : String) : Bool;
	
	@:overload @:public override public function get2DCompositeFontInfo() : java.NativeArray<sun.font.CompositeFontDescriptor>;
	
	/**
	* Sets the OS name and version from environment information.
	*/
	@:overload @:protected override private function setOsNameAndVersion() : Void;
	
	
}
