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
extern class LocaleExtensions
{
	public static var CALENDAR_JAPANESE(default, null) : LocaleExtensions;
	
	public static var NUMBER_THAI(default, null) : LocaleExtensions;
	
	@:overload public function getKeys() : java.util.Set<Null<java.StdTypes.Char16>>;
	
	@:overload public function getExtension(key : Null<java.StdTypes.Char16>) : sun.util.locale.Extension;
	
	@:overload public function getExtensionValue(key : Null<java.StdTypes.Char16>) : String;
	
	@:overload public function getUnicodeLocaleAttributes() : java.util.Set<String>;
	
	@:overload public function getUnicodeLocaleKeys() : java.util.Set<String>;
	
	@:overload public function getUnicodeLocaleType(unicodeLocaleKey : String) : String;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public static function isValidKey(c : java.StdTypes.Char16) : Bool;
	
	@:overload public static function isValidUnicodeLocaleKey(ukey : String) : Bool;
	
	@:overload public function toString() : String;
	
	@:overload public function getID() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(other : Dynamic) : Bool;
	
	
}
