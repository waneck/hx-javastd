package sun.awt.windows;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* This is a stubbed out placeholder class, intended to allow building
* WindowsLookAndFeel on Unix. This class is never actually called on
* Unix, and will be deleted when WindowsLookAndFeel is no longer built
* on Unix.
*
* @author Leif Samuelsson
*/
extern class ThemeReader
{
	@:overload public static function isThemed() : Bool;
	
	@:overload public static function paintBackground(buffer : java.NativeArray<Int>, widget : String, part : Int, state : Int, x : Int, y : Int, w : Int, h : Int, stride : Int) : Void;
	
	@:overload public static function getThemeMargins(widget : String, part : Int, state : Int, marginType : Int) : java.awt.Insets;
	
	@:overload public static function isThemePartDefined(widget : String, part : Int, state : Int) : Bool;
	
	@:overload public static function getColor(widget : String, part : Int, state : Int, property : Int) : java.awt.Color;
	
	@:overload public static function getInt(widget : String, part : Int, state : Int, property : Int) : Int;
	
	@:overload public static function getEnum(widget : String, part : Int, state : Int, property : Int) : Int;
	
	@:overload public static function getBoolean(widget : String, part : Int, state : Int, property : Int) : Bool;
	
	@:overload public static function getSysBoolean(widget : String, property : Int) : Bool;
	
	@:overload public static function getPoint(widget : String, part : Int, state : Int, property : Int) : java.awt.Point;
	
	@:overload public static function getPosition(widget : String, part : Int, state : Int, property : Int) : java.awt.Dimension;
	
	@:overload public static function getPartSize(widget : String, part : Int, state : Int) : java.awt.Dimension;
	
	@:overload public static function getThemeTransitionDuration(widget : String, part : Int, stateFrom : Int, stateTo : Int, propId : Int) : haxe.Int64;
	
	@:overload public static function isGetThemeTransitionDurationDefined() : Bool;
	
	@:overload public static function getThemeBackgroundContentMargins(widget : String, part : Int, state : Int, boundingWidth : Int, boundingHeight : Int) : java.awt.Insets;
	
	
}
