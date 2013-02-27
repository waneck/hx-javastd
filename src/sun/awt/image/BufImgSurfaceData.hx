package sun.awt.image;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BufImgSurfaceData extends sun.java2d.SurfaceData
{
	@:overload public static function createData(bufImg : java.awt.image.BufferedImage) : sun.java2d.SurfaceData;
	
	@:overload public static function createData(ras : java.awt.image.Raster, cm : java.awt.image.ColorModel) : sun.java2d.SurfaceData;
	
	@:overload public static function createDataIC(bImg : java.awt.image.BufferedImage, sType : sun.java2d.loops.SurfaceType) : sun.java2d.SurfaceData;
	
	@:overload public static function createDataSC(bImg : java.awt.image.BufferedImage, sType : sun.java2d.loops.SurfaceType, icm : java.awt.image.IndexColorModel) : sun.java2d.SurfaceData;
	
	@:overload public static function createDataBC(bImg : java.awt.image.BufferedImage, sType : sun.java2d.loops.SurfaceType, primaryBank : Int) : sun.java2d.SurfaceData;
	
	@:overload public static function createDataBP(bImg : java.awt.image.BufferedImage, sType : sun.java2d.loops.SurfaceType) : sun.java2d.SurfaceData;
	
	@:overload override public function getRenderLoops(sg2d : sun.java2d.SunGraphics2D) : sun.java2d.loops.RenderLoops;
	
	@:overload override public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	/**
	* Initializes the native Ops pointer.
	*/
	@:overload @:native private function initRaster(theArray : Dynamic, offset : Int, bitoffset : Int, width : Int, height : Int, pixStr : Int, scanStr : Int, icm : java.awt.image.IndexColorModel) : Void;
	
	@:overload public function new(db : java.awt.image.DataBuffer, bufImg : java.awt.image.BufferedImage, sType : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload private function new(surfaceType : sun.java2d.loops.SurfaceType, cm : java.awt.image.ColorModel) : Void;
	
	@:overload public function initSolidLoops() : Void;
	
	@:overload @:synchronized public static function getSolidLoops(type : sun.java2d.loops.SurfaceType) : sun.java2d.loops.RenderLoops;
	
	@:overload override public function getReplacement() : sun.java2d.SurfaceData;
	
	@:overload @:synchronized override public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	@:overload override private function checkCustomComposite() : Void;
	
	/**
	* Returns destination Image associated with this SurfaceData.
	*/
	@:overload override public function getDestination() : Dynamic;
	
	
}
@:native('sun$awt$image$BufImgSurfaceData$ICMColorData') extern class BufImgSurfaceData_ICMColorData
{
	@:overload public function finalize() : Void;
	
	
}
