package sun.util.locale;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
* Copyright (C) 2009, International Business Machines Corporation and         *
* others. All Rights Reserved.                                                *
*******************************************************************************
*/
extern class AsciiUtil
{
	@:overload @:public @:static public static function caseIgnoreMatch(s1 : String, s2 : String) : Bool;
	
	@:overload @:public @:static public static function caseIgnoreCompare(s1 : String, s2 : String) : Int;
	
	@:overload @:public @:static public static function toUpper(c : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	@:overload @:public @:static public static function toLower(c : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	@:overload @:public @:static public static function toLowerString(s : String) : String;
	
	@:overload @:public @:static public static function toUpperString(s : String) : String;
	
	@:overload @:public @:static public static function toTitleString(s : String) : String;
	
	@:overload @:public @:static public static function isAlpha(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:public @:static public static function isAlphaString(s : String) : Bool;
	
	@:overload @:public @:static public static function isNumeric(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:public @:static public static function isNumericString(s : String) : Bool;
	
	@:overload @:public @:static public static function isAlphaNumeric(c : java.StdTypes.Char16) : Bool;
	
	@:overload @:public @:static public static function isAlphaNumericString(s : String) : Bool;
	
	
}
@:native('sun$util$locale$AsciiUtil$CaseInsensitiveKey') extern class AsciiUtil_CaseInsensitiveKey
{
	@:overload @:public public function new(key : String) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
