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
* We render non-antialiased geometry (consisting of rectangles) into a mask,
* which is later used in a composition step.
* To avoid mask-allocations of large size, MaskTileManager splits
* geometry larger than MASK_SIZE into several tiles,
* and stores the geometry in instances of MaskTile.
*
* @author Clemens Eisserer
*/
extern class MaskTileManager
{
	public static var MASK_SIZE(default, null) : Int;
	
	@:overload public function new(xrMgr : sun.java2d.xr.XRCompositeManager, parentXid : Int) : Void;
	
	/**
	* Adds a rectangle to the mask.
	*/
	@:overload public function addRect(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Adds a line to the mask.
	*/
	@:overload public function addLine(x1 : Int, y1 : Int, x2 : Int, y2 : Int) : Void;
	
	/**
	* Transfers the geometry stored (rectangles, lines) to one or more masks,
	* and renders the result to the destination surface.
	*/
	@:overload public function fillMask(dst : sun.java2d.xr.XRSurfaceData) : Void;
	
	/**
	* Uploads aa geometry generated for maskblit/fill into the mask pixmap.
	*/
	@:overload public function uploadMask(w : Int, h : Int, maskscan : Int, maskoff : Int, mask : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Clears the area of the mask-pixmap used for uploading aa coverage values.
	*/
	@:overload public function clearUploadMask(mask : Int, w : Int, h : Int) : Void;
	
	/**
	* Renders the rectangles provided to the mask, and does a composition
	* operation with the properties set inXRCompositeManager.
	*/
	@:overload private function compositeSingleTile(dst : sun.java2d.xr.XRSurfaceData, tile : sun.java2d.xr.MaskTile, dirtyArea : sun.java2d.xr.DirtyRegion, maskRequired : Bool, tileStartX : Int, tileStartY : Int, maskColor : sun.java2d.xr.XRColor) : Void;
	
	/**
	* Allocates enough MaskTile instances, to cover the whole
	* mask area, or resets existing ones.
	*/
	@:overload private function allocTiles(maskArea : sun.java2d.xr.DirtyRegion) : Void;
	
	/**
	* Tiles the stored rectangles, if they are larger than the MASK_SIZE
	*/
	@:overload private function tileRects() : Void;
	
	
}
