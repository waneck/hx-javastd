package com.sun.media.sound;
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
/**
* Hann windowed sinc interpolation resampler with anti-alias filtering.
*
* Using 30 points for the interpolation.
*
* @author Karl Helgason
*/
extern class SoftSincResampler extends com.sun.media.sound.SoftAbstractResampler
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public @:static public static function sinc(x : Float) : Float;
	
	@:overload @:public @:static public static function wHanning(size : Int, offset : Single) : java.NativeArray<Single>;
	
	@:overload @:public @:static public static function sincTable(size : Int, offset : Single, scale : Single) : java.NativeArray<Single>;
	
	@:overload @:public override public function getPadding() : Int;
	
	@:overload @:public override public function interpolate(_in : java.NativeArray<Single>, in_offset : java.NativeArray<Single>, in_end : Single, startpitch : java.NativeArray<Single>, pitchstep : Single, out : java.NativeArray<Single>, out_offset : java.NativeArray<Int>, out_end : Int) : Void;
	
	
}
