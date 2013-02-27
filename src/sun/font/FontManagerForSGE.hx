package sun.font;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface FontManagerForSGE extends sun.font.FontManager
{
	/**
	* Return an array of created Fonts, or null, if no fonts were created yet.
	*/
	@:overload public function getCreatedFonts() : java.NativeArray<java.awt.Font>;
	
	/**
	* Similar to getCreatedFonts, but returns a TreeMap of fonts by family name.
	*/
	@:overload public function getCreatedFontFamilyNames() : java.util.TreeMap<String, String>;
	
	/**
	* Returns all fonts installed in this environment.
	*/
	@:overload public function getAllInstalledFonts() : java.NativeArray<java.awt.Font>;
	
	@:overload public function getInstalledFontFamilyNames(requestedLocale : java.util.Locale) : java.NativeArray<String>;
	
	/* Modifies the behaviour of a subsequent call to preferLocaleFonts()
	* to use Mincho instead of Gothic for dialoginput in JA locales
	* on windows. Not needed on other platforms.
	*/
	@:overload public function useAlternateFontforJALocales() : Void;
	
	
}
