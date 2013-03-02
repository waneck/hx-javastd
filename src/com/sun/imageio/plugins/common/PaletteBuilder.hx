package com.sun.imageio.plugins.common;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class PaletteBuilder
{
	/**
	* maximum of tree depth
	*/
	private static var MAXLEVEL(default, null) : Int;
	
	private var src : java.awt.image.RenderedImage;
	
	private var srcColorModel : java.awt.image.ColorModel;
	
	private var srcRaster : java.awt.image.Raster;
	
	private var requiredSize : Int;
	
	private var root : com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode;
	
	private var numNodes : Int;
	
	private var maxNodes : Int;
	
	private var currLevel : Int;
	
	private var currSize : Int;
	
	private var reduceList : java.NativeArray<com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode>;
	
	private var palette : java.NativeArray<com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode>;
	
	private var transparency : Int;
	
	private var transColor : com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode;
	
	/**
	* Creates an image representing given image
	* <code>src</code> using <code>IndexColorModel</code>.
	*
	* Lossless conversion is not always possible (e.g. if number
	* of colors in the  given image exceeds maximum palette size).
	* Result image then is an approximation constructed by octree
	* quantization method.
	*
	* @exception IllegalArgumentException if <code>src</code> is
	* <code>null</code>.
	*
	* @exception UnsupportedOperationException if implemented method
	* is unable to create approximation of <code>src</code>
	* and <code>canCreatePalette</code> returns <code>false</code>.
	*
	* @see createIndexColorModel
	*
	* @see canCreatePalette
	*
	*/
	@:overload public static function createIndexedImage(src : java.awt.image.RenderedImage) : java.awt.image.RenderedImage;
	
	/**
	* Creates an palette representing colors from given image
	* <code>img</code>. If number of colors in the given image exceeds
	* maximum palette size closest colors would be merged.
	*
	* @exception IllegalArgumentException if <code>img</code> is
	* <code>null</code>.
	*
	* @exception UnsupportedOperationException if implemented method
	* is unable to create approximation of <code>img</code>
	* and <code>canCreatePalette</code> returns <code>false</code>.
	*
	* @see createIndexedImage
	*
	* @see canCreatePalette
	*
	*/
	@:overload public static function createIndexColorModel(img : java.awt.image.RenderedImage) : java.awt.image.IndexColorModel;
	
	/**
	* Returns <code>true</code> if PaletteBuilder is able to create
	* palette for given image type.
	*
	* @param type an instance of <code>ImageTypeSpecifier</code> to be
	* indexed.
	*
	* @return <code>true</code> if the <code>PaletteBuilder</code>
	* is likely to be able to create palette for this image type.
	*
	* @exception IllegalArgumentException if <code>type</code>
	* is <code>null</code>.
	*/
	@:overload public static function canCreatePalette(type : javax.imageio.ImageTypeSpecifier) : Bool;
	
	/**
	* Returns <code>true</code> if PaletteBuilder is able to create
	* palette for given rendered image.
	*
	* @param image an instance of <code>RenderedImage</code> to be
	* indexed.
	*
	* @return <code>true</code> if the <code>PaletteBuilder</code>
	* is likely to be able to create palette for this image type.
	*
	* @exception IllegalArgumentException if <code>image</code>
	* is <code>null</code>.
	*/
	@:overload public static function canCreatePalette(image : java.awt.image.RenderedImage) : Bool;
	
	@:overload private function getIndexedImage() : java.awt.image.RenderedImage;
	
	@:overload private function new(src : java.awt.image.RenderedImage) : Void;
	
	@:overload private function new(src : java.awt.image.RenderedImage, size : Int) : Void;
	
	@:overload private function findColorIndex(aNode : com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode, aColor : java.awt.Color) : Int;
	
	@:overload private function buildPalette() : Void;
	
	@:overload private function insertNode(aNode : com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode, aColor : java.awt.Color, aLevel : Int) : com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode;
	
	@:overload private function getIndexColorModel() : java.awt.image.IndexColorModel;
	
	@:overload private function findPaletteEntry(aNode : com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode, index : Int, red : java.NativeArray<java.StdTypes.Int8>, green : java.NativeArray<java.StdTypes.Int8>, blue : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload private function getBranchIndex(aColor : java.awt.Color, aLevel : Int) : Int;
	
	@:overload private function reduceTree() : Void;
	
	@:overload private function freeTree(aNode : com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode) : com.sun.imageio.plugins.common.PaletteBuilder.PaletteBuilder_ColorNode;
	
	
}
/**
* The node of color tree.
*/
@:native('com$sun$imageio$plugins$common$PaletteBuilder$ColorNode') extern class PaletteBuilder_ColorNode
{
	public var isLeaf : Bool;
	
	public var childCount : Int;
	
	public var colorCount : Int;
	
	public var red : haxe.Int64;
	
	public var blue : haxe.Int64;
	
	public var green : haxe.Int64;
	
	public var paletteIndex : Int;
	
	public var level : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function getLeafChildCount() : Int;
	
	@:overload public function getRGB() : Int;
	
	
}
