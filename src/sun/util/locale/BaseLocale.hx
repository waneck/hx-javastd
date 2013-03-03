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
extern class BaseLocale
{
	@:public @:static @:final public static var SEP(default, null) : String;
	
	@:overload @:public @:static public static function createInstance(language : String, region : String) : sun.util.locale.BaseLocale;
	
	@:overload @:public @:static public static function getInstance(language : String, script : String, region : String, variant : String) : sun.util.locale.BaseLocale;
	
	@:overload @:public public function getLanguage() : String;
	
	@:overload @:public public function getScript() : String;
	
	@:overload @:public public function getRegion() : String;
	
	@:overload @:public public function getVariant() : String;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
@:native('sun$util$locale$BaseLocale$Key') @:internal extern class BaseLocale_Key implements java.lang.Comparable<sun.util.locale.BaseLocale.BaseLocale_Key>
{
	@:overload @:public public function new(language : String, script : String, region : String, variant : String) : Void;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function compareTo(other : sun.util.locale.BaseLocale.BaseLocale_Key) : Int;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public @:static public static function normalize(key : sun.util.locale.BaseLocale.BaseLocale_Key) : sun.util.locale.BaseLocale.BaseLocale_Key;
	
	
}
@:native('sun$util$locale$BaseLocale$Cache') @:internal extern class BaseLocale_Cache extends sun.util.locale.LocaleObjectCache<sun.util.locale.BaseLocale.BaseLocale_Key, sun.util.locale.BaseLocale>
{
	@:overload @:public public function new() : Void;
	
	@:overload @:protected private function normalizeKey(key : sun.util.locale.BaseLocale.BaseLocale_Key) : sun.util.locale.BaseLocale.BaseLocale_Key;
	
	@:overload @:protected private function createObject(key : sun.util.locale.BaseLocale.BaseLocale_Key) : sun.util.locale.BaseLocale;
	
	
}
