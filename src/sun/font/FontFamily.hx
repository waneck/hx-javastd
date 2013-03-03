package sun.font;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class FontFamily
{
	@:protected private var familyName : String;
	
	@:protected private var plain : sun.font.Font2D;
	
	@:protected private var bold : sun.font.Font2D;
	
	@:protected private var italic : sun.font.Font2D;
	
	@:protected private var bolditalic : sun.font.Font2D;
	
	@:protected private var logicalFont : Bool;
	
	@:protected private var familyRank : Int;
	
	@:overload @:public @:static public static function getFamily(name : String) : sun.font.FontFamily;
	
	@:overload @:public @:static public static function getAllFamilyNames() : java.NativeArray<String>;
	
	@:overload @:public public function new(name : String, isLogFont : Bool, rank : Int) : Void;
	
	@:overload @:public public function getFamilyName() : String;
	
	@:overload @:public public function getRank() : Int;
	
	@:overload @:public public function setFont(font : sun.font.Font2D, style : Int) : Void;
	
	@:overload @:public public function getFontWithExactStyleMatch(style : Int) : sun.font.Font2D;
	
	/* REMIND: if the callers of this method are operating in an
	* environment in which not all fonts are registered, the returned
	* font may be a algorithmically styled one, where in fact if loadfonts
	* were executed, a styled font may be located. Our present "solution"
	* to this is to register all fonts in a directory and assume that this
	* registered all the styles of a font, since they would all be in the
	* same location.
	*/
	@:overload @:public public function getFont(style : Int) : sun.font.Font2D;
	
	@:overload @:public @:static @:synchronized public static function getLocaleFamily(name : String) : sun.font.FontFamily;
	
	@:overload @:public public function toString() : String;
	
	
}
