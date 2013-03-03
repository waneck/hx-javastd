package sun.java2d.xr;
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
/**
* XRender color class.
*
* @author Clemens Eisserer
*/
extern class XRColor
{
	@:public @:static @:final public static var FULL_ALPHA(default, null) : sun.java2d.xr.XRColor;
	
	@:public @:static @:final public static var NO_ALPHA(default, null) : sun.java2d.xr.XRColor;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(alpha : Int, red : Int, green : Int, blue : Int) : Void;
	
	@:overload @:public public function new(color : java.awt.Color) : Void;
	
	@:overload @:public public function setColorValues(color : java.awt.Color) : Void;
	
	@:overload @:public @:static public static function ARGBPrePixelToXRColors(pixels : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload @:public public function setColorValues(pixel : Int, pre : Bool) : Void;
	
	@:overload @:public @:static public static function byteToXRColorValue(byteValue : Int) : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function setAlpha(alpha : Int) : Void;
	
	@:overload @:public public function getAlpha() : Int;
	
	@:overload @:public public function getRed() : Int;
	
	@:overload @:public public function getGreen() : Int;
	
	@:overload @:public public function getBlue() : Int;
	
	
}
