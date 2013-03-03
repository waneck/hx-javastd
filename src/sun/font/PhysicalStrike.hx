package sun.font;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class PhysicalStrike extends sun.font.FontStrike
{
	@:protected private var mapper : sun.font.CharToGlyphMapper;
	
	/* the ScalerContext is a native structure pre-filled with the
	* info needed to setup the scaler for this strike. Its immutable
	* so we set it up when the strike is created and free it when the
	* strike is disposed. There's then no need to pass the info down
	* separately to native on every call to the scaler.
	*/
	@:protected private var pScalerContext : haxe.Int64;
	
	/* Only one of these two arrays is non-null.
	* use the one that matches size of an address (32 or 64 bits)
	*/
	@:protected private var longGlyphImages : java.NativeArray<haxe.Int64>;
	
	@:protected private var intGlyphImages : java.NativeArray<Int>;
	
	@:protected private var getImageWithAdvance : Bool;
	
	@:protected @:static @:final private static var complexTX(default, null) : Int;
	
	@:overload @:protected private function new() : Void;
	
	/* A number of methods are delegated by the strike to the scaler
	* context which is a shared resource on a physical font.
	*/
	@:overload @:public override public function getNumGlyphs() : Int;
	
	@:overload @:protected private function adjustPoint(pt : java.awt.geom.Point2D.Point2D_Float) : Void;
	
	
}
