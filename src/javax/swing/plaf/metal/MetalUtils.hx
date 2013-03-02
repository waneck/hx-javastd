package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MetalUtils
{
	
}
@:native('javax$swing$plaf$metal$MetalUtils$GradientPainter') @:internal extern class MetalUtils_GradientPainter extends sun.swing.CachedPainter
{
	/**
	* Instance used for painting.  This is the only instance that is
	* ever created.
	*/
	public static var INSTANCE(default, null) : javax.swing.plaf.metal.MetalUtils.MetalUtils_GradientPainter;
	
	@:overload public function paint(c : java.awt.Component, g : java.awt.Graphics2D, gradient : java.util.List<Dynamic>, x : Int, y : Int, w : Int, h : Int, isVertical : Bool) : Void;
	
	@:overload private function paintToImage(c : java.awt.Component, image : java.awt.Image, g : java.awt.Graphics, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload private function paintImage(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, imageW : Int, imageH : Int, image : java.awt.Image, args : java.NativeArray<Dynamic>) : Void;
	
	
}
/**
* Used to create a disabled Icon with the ocean look.
*/
@:native('javax$swing$plaf$metal$MetalUtils$OceanDisabledButtonImageFilter') @:internal extern class MetalUtils_OceanDisabledButtonImageFilter extends java.awt.image.RGBImageFilter
{
	@:overload public function filterRGB(x : Int, y : Int, rgb : Int) : Int;
	
	
}
/**
* Used to create the rollover icons with the ocean look.
*/
@:native('javax$swing$plaf$metal$MetalUtils$OceanToolBarImageFilter') @:internal extern class MetalUtils_OceanToolBarImageFilter extends java.awt.image.RGBImageFilter
{
	@:overload public function filterRGB(x : Int, y : Int, rgb : Int) : Int;
	
	
}
