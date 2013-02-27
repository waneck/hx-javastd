package sun.swing.plaf.synth;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Paint9Painter extends sun.swing.CachedPainter
{
	public static var PAINT_TOP_LEFT(default, null) : Int;
	
	public static var PAINT_TOP(default, null) : Int;
	
	public static var PAINT_TOP_RIGHT(default, null) : Int;
	
	public static var PAINT_LEFT(default, null) : Int;
	
	public static var PAINT_CENTER(default, null) : Int;
	
	public static var PAINT_RIGHT(default, null) : Int;
	
	public static var PAINT_BOTTOM_RIGHT(default, null) : Int;
	
	public static var PAINT_BOTTOM(default, null) : Int;
	
	public static var PAINT_BOTTOM_LEFT(default, null) : Int;
	
	/**
	* Specifies that all regions should be painted.  If this is set any
	* other regions specified will not be painted.  For example
	* PAINT_ALL | PAINT_CENTER will paint all but the center.
	*/
	public static var PAINT_ALL(default, null) : Int;
	
	/**
	* Conveniance method for testing the validity of an image.
	*
	* @param image Image to check.
	* @return true if <code>image</code> is non-null and has a positive
	*         size.
	*/
	@:overload public static function validImage(image : java.awt.Image) : Bool;
	
	@:overload public function new(cacheCount : Int) : Void;
	
	/**
	* Paints using the algorightm specified by <code>paintType</code>.
	* NOTE that this just invokes super.paint(...) with the same
	* argument ordering as this method.
	*
	* @param c Component rendering to
	* @param g Graphics to render to
	* @param x X-coordinate
	* @param y Y-coordinate
	* @param w Width to render to
	* @param h Height to render to
	* @param source Image to render from, if <code>null</code> this method
	*               will do nothing
	* @param sInsets Insets specifying the portion of the image that
	*                will be stretched or tiled, if <code>null</code> empty
	*                <code>Insets</code> will be used.
	* @param dInsets Destination insets specifying the portion of the image
	*                will be stretched or tiled, if <code>null</code> empty
	*                <code>Insets</code> will be used.
	* @param paintType Specifies what type of algorithm to use in painting
	* @param mask Specifies portion of image to render, if
	*             <code>PAINT_ALL</code> is specified, any other regions
	*             specified will not be painted, for example
	*             PAINT_ALL | PAINT_CENTER paints everything but the center.
	*/
	@:overload public function paint(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, source : java.awt.Image, sInsets : java.awt.Insets, dInsets : java.awt.Insets, type : Paint9Painter_PaintType, mask : Int) : Void;
	
	@:overload override private function paintToImage(c : java.awt.Component, destImage : java.awt.Image, g : java.awt.Graphics, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload private function paint9(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int, image : java.awt.Image, sInsets : java.awt.Insets, dInsets : java.awt.Insets, type : Paint9Painter_PaintType, componentMask : Int) : Void;
	
	/**
	* Subclassed to always create a translucent image.
	*/
	@:overload override private function createImage(c : java.awt.Component, w : Int, h : Int, config : java.awt.GraphicsConfiguration, args : java.NativeArray<Dynamic>) : java.awt.Image;
	
	
}
/**
* Enumeration for the types of painting this class can handle.
*/
@:native('sun$swing$plaf$synth$Paint9Painter$PaintType') extern enum Paint9Painter_PaintType
{
	/**
	* Painting type indicating the image should be centered in
	* the space provided.  When used the <code>mask</code> is ignored.
	*/
	CENTER;
	/**
	* Painting type indicating the image should be tiled across the
	* specified width and height.  When used the <code>mask</code> is
	* ignored.
	*/
	TILE;
	/**
	* Painting type indicating the image should be split into nine
	* regions with the top, left, bottom and right areas stretched.
	*/
	PAINT9_STRETCH;
	/**
	* Painting type indicating the image should be split into nine
	* regions with the top, left, bottom and right areas tiled.
	*/
	PAINT9_TILE;
	
}

