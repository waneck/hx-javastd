package sun.awt.X11;
//// This is a generated file: do not edit! Edit keysym2ucs.h if necessary.
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class XKeysym
{
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	@:overload @:public @:static public static function convertKeysym(ks : haxe.Int64, state : Int) : java.StdTypes.Char16;
	
	@:overload @:public @:static public static function isKPEvent(ev : sun.awt.X11.XKeyEvent) : Bool;
	
	/**
	Return uppercase keysym correspondent to a given keysym.
	If input keysym does not belong to any lower/uppercase pair, return -1.
	*/
	@:overload @:public @:static public static function getUppercaseAlphabetic(keysym : haxe.Int64) : haxe.Int64;
	
	
}
@:native('sun$awt$X11$XKeysym$Keysym2JavaKeycode') @:internal extern class XKeysym_Keysym2JavaKeycode
{
	
}
