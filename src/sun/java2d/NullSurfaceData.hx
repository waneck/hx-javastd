package sun.java2d;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class NullSurfaceData extends sun.java2d.SurfaceData
{
	/**
	* This class provides an empty implementation of the SurfaceData
	* abstract superclass.  All operations on it translate into NOP
	* or harmless operations.
	*/
	@:public @:static @:final public static var theInstance(default, null) : sun.java2d.SurfaceData;
	
	/**
	* Sets this SurfaceData object to the invalid state.  All Graphics
	* objects must get a new SurfaceData object via the refresh method
	* and revalidate their pipelines before continuing.
	*/
	@:overload @:public override public function invalidate() : Void;
	
	/**
	* Return a new SurfaceData object that represents the current state
	* of the destination that this SurfaceData object describes.
	* This method is typically called when the SurfaceData is invalidated.
	*/
	@:overload @:public override public function getReplacement() : sun.java2d.SurfaceData;
	
	@:overload @:public override public function validatePipe(sg2d : sun.java2d.SunGraphics2D) : Void;
	
	@:overload @:public override public function getDeviceConfiguration() : java.awt.GraphicsConfiguration;
	
	/**
	* Return a readable Raster which contains the pixels for the
	* specified rectangular region of the destination surface.
	* The coordinate origin of the returned Raster is the same as
	* the device space origin of the destination surface.
	* In some cases the returned Raster might also be writeable.
	* In most cases, the returned Raster might contain more pixels
	* than requested.
	*
	* @see useTightBBoxes
	*/
	@:overload @:public override public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	/**
	* Does the pixel accessibility of the destination surface
	* suggest that rendering algorithms might want to take
	* extra time to calculate a more accurate bounding box for
	* the operation being performed?
	* The typical case when this will be true is when a copy of
	* the pixels has to be made when doing a getRaster.  The
	* fewer pixels copied, the faster the operation will go.
	*
	* @see getRaster
	*/
	@:overload @:public override public function useTightBBoxes() : Bool;
	
	/**
	* Returns the pixel data for the specified Argb value packed
	* into an integer for easy storage and conveyance.
	*/
	@:overload @:public override public function pixelFor(rgb : Int) : Int;
	
	/**
	* Returns the Argb representation for the specified integer value
	* which is packed in the format of the associated ColorModel.
	*/
	@:overload @:public override public function rgbFor(pixel : Int) : Int;
	
	/**
	* Returns the bounds of the destination surface.
	*/
	@:overload @:public override public function getBounds() : java.awt.Rectangle;
	
	/**
	* Performs Security Permissions checks to see if a Custom
	* Composite object should be allowed access to the pixels
	* of this surface.
	*/
	@:overload @:protected override private function checkCustomComposite() : Void;
	
	/**
	* Performs a copyarea within this surface.  Returns
	* false if there is no algorithm to perform the copyarea
	* given the current settings of the SunGraphics2D.
	*/
	@:overload @:public override public function copyArea(sg2d : sun.java2d.SunGraphics2D, x : Int, y : Int, w : Int, h : Int, dx : Int, dy : Int) : Bool;
	
	/**
	* Returns destination Image associated with this SurfaceData (null)
	*/
	@:overload @:public override public function getDestination() : Dynamic;
	
	
}
