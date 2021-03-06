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
@:internal extern class XRPaints
{
	@:overload @:public @:static public static function register(xrComp : sun.java2d.xr.XRCompositeManager) : Void;
	
	@:overload @:public public function getGradientLength(pt1 : java.awt.geom.Point2D, pt2 : java.awt.geom.Point2D) : Int;
	
	@:overload @:public public function convertToIntArgbPixels(colors : java.NativeArray<java.awt.Color>, linear : Bool) : java.NativeArray<Int>;
	
	@:overload @:public public function colorToIntArgbPixel(c : java.awt.Color, linear : Bool) : Int;
	
	
}
@:native('sun$java2d$xr$XRPaints$XRGradient') @:internal extern class XRPaints_XRGradient extends sun.java2d.xr.XRPaints
{
	
}
@:native('sun$java2d$xr$XRPaints$XRLinearGradient') @:internal extern class XRPaints_XRLinearGradient extends sun.java2d.xr.XRPaints
{
	
}
@:native('sun$java2d$xr$XRPaints$XRRadialGradient') @:internal extern class XRPaints_XRRadialGradient extends sun.java2d.xr.XRPaints
{
	
}
@:native('sun$java2d$xr$XRPaints$XRTexture') @:internal extern class XRPaints_XRTexture extends sun.java2d.xr.XRPaints
{
	
}
