package java.awt.image;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/* ****************************************************************
******************************************************************
******************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997
*** As  an unpublished  work pursuant to Title 17 of the United
*** States Code.  All rights reserved.
******************************************************************
******************************************************************
******************************************************************/
extern interface WritableRenderedImage extends java.awt.image.RenderedImage
{
	/**
	* Adds an observer.  If the observer is already present,
	* it will receive multiple notifications.
	* @param to the specified <code>TileObserver</code>
	*/
	@:overload public function addTileObserver(to : java.awt.image.TileObserver) : Void;
	
	/**
	* Removes an observer.  If the observer was not registered,
	* nothing happens.  If the observer was registered for multiple
	* notifications, it will now be registered for one fewer.
	* @param to the specified <code>TileObserver</code>
	*/
	@:overload public function removeTileObserver(to : java.awt.image.TileObserver) : Void;
	
	/**
	* Checks out a tile for writing.
	*
	* The WritableRenderedImage is responsible for notifying all
	* of its TileObservers when a tile goes from having
	* no writers to having one writer.
	*
	* @param tileX the X index of the tile.
	* @param tileY the Y index of the tile.
	* @return a writable tile.
	*/
	@:overload public function getWritableTile(tileX : Int, tileY : Int) : java.awt.image.WritableRaster;
	
	/**
	* Relinquishes the right to write to a tile.  If the caller
	* continues to write to the tile, the results are undefined.
	* Calls to this method should only appear in matching pairs
	* with calls to getWritableTile; any other use will lead
	* to undefined results.
	*
	* The WritableRenderedImage is responsible for notifying all of
	* its TileObservers when a tile goes from having one writer
	* to having no writers.
	*
	* @param tileX the X index of the tile.
	* @param tileY the Y index of the tile.
	*/
	@:overload public function releaseWritableTile(tileX : Int, tileY : Int) : Void;
	
	/**
	* Returns whether a tile is currently checked out for writing.
	*
	* @param tileX the X index of the tile.
	* @param tileY the Y index of the tile.
	* @return <code>true</code> if specified tile is checked out
	*         for writing; <code>false</code> otherwise.
	*/
	@:overload public function isTileWritable(tileX : Int, tileY : Int) : Bool;
	
	/**
	* Returns an array of Point objects indicating which tiles
	* are checked out for writing.  Returns null if none are
	* checked out.
	* @return an array containing the locations of tiles that are
	*         checked out for writing.
	*/
	@:overload public function getWritableTileIndices() : java.NativeArray<java.awt.Point>;
	
	/**
	* Returns whether any tile is checked out for writing.
	* Semantically equivalent to (getWritableTileIndices() != null).
	* @return <code>true</code> if any tiles are checked out for
	*         writing; <code>false</code> otherwise.
	*/
	@:overload public function hasTileWriters() : Bool;
	
	/**
	* Sets a rect of the image to the contents of the Raster r, which is
	* assumed to be in the same coordinate space as the WritableRenderedImage.
	* The operation is clipped to the bounds of the WritableRenderedImage.
	* @param r the specified <code>Raster</code>
	*/
	@:overload public function setData(r : java.awt.image.Raster) : Void;
	
	
}
