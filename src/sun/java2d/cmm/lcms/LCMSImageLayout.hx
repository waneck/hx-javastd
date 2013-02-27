package sun.java2d.cmm.lcms;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class LCMSImageLayout
{
	@:overload public static function BYTES_SH(x : Int) : Int;
	
	@:overload public static function EXTRA_SH(x : Int) : Int;
	
	@:overload public static function CHANNELS_SH(x : Int) : Int;
	
	public static var SWAPFIRST(default, null) : Int;
	
	public static var DOSWAP(default, null) : Int;
	
	public static var PT_RGB_8(default, null) : Int;
	
	public static var PT_GRAY_8(default, null) : Int;
	
	public static var PT_GRAY_16(default, null) : Int;
	
	public static var PT_RGBA_8(default, null) : Int;
	
	public static var PT_ARGB_8(default, null) : Int;
	
	public static var PT_BGR_8(default, null) : Int;
	
	public static var PT_ABGR_8(default, null) : Int;
	
	public static var PT_BGRA_8(default, null) : Int;
	
	public static var DT_BYTE(default, null) : Int;
	
	public static var DT_SHORT(default, null) : Int;
	
	public static var DT_INT(default, null) : Int;
	
	public static var DT_DOUBLE(default, null) : Int;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>, np : Int, pixelType : Int, pixelSize : Int) : Void;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int16>, np : Int, pixelType : Int, pixelSize : Int) : Void;
	
	@:overload public function new(data : java.NativeArray<Int>, np : Int, pixelType : Int, pixelSize : Int) : Void;
	
	@:overload public function new(data : java.NativeArray<Float>, np : Int, pixelType : Int, pixelSize : Int) : Void;
	
	@:overload public function new(image : java.awt.image.BufferedImage) : Void;
	
	@:overload public static function isSupported(image : java.awt.image.BufferedImage) : Bool;
	
	
}
