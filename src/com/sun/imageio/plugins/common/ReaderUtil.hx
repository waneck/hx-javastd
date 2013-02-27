package com.sun.imageio.plugins.common;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ReaderUtil
{
	/**
	* A utility method that computes the exact set of destination
	* pixels that will be written during a particular decoding pass.
	* The intent is to simplify the work done by readers in combining
	* the source region, source subsampling, and destination offset
	* information obtained from the <code>ImageReadParam</code> with
	* the offsets and periods of a progressive or interlaced decoding
	* pass.
	*
	* @param sourceRegion a <code>Rectangle</code> containing the
	* source region being read, offset by the source subsampling
	* offsets, and clipped against the source bounds, as returned by
	* the <code>getSourceRegion</code> method.
	* @param destinationOffset a <code>Point</code> containing the
	* coordinates of the upper-left pixel to be written in the
	* destination.
	* @param dstMinX the smallest X coordinate (inclusive) of the
	* destination <code>Raster</code>.
	* @param dstMinY the smallest Y coordinate (inclusive) of the
	* destination <code>Raster</code>.
	* @param dstMaxX the largest X coordinate (inclusive) of the destination
	* <code>Raster</code>.
	* @param dstMaxY the largest Y coordinate (inclusive) of the destination
	* <code>Raster</code>.
	* @param sourceXSubsampling the X subsampling factor.
	* @param sourceYSubsampling the Y subsampling factor.
	* @param passXStart the smallest source X coordinate (inclusive)
	* of the current progressive pass.
	* @param passYStart the smallest source Y coordinate (inclusive)
	* of the current progressive pass.
	* @param passWidth the width in pixels of the current progressive
	* pass.
	* @param passHeight the height in pixels of the current progressive
	* pass.
	* @param passPeriodX the X period (horizontal spacing between
	* pixels) of the current progressive pass.
	* @param passPeriodY the Y period (vertical spacing between
	* pixels) of the current progressive pass.
	*
	* @return an array of 6 <code>int</code>s containing the
	* destination min X, min Y, width, height, X period and Y period
	* of the region that will be updated.
	*/
	@:overload public static function computeUpdatedPixels(sourceRegion : java.awt.Rectangle, destinationOffset : java.awt.Point, dstMinX : Int, dstMinY : Int, dstMaxX : Int, dstMaxY : Int, sourceXSubsampling : Int, sourceYSubsampling : Int, passXStart : Int, passYStart : Int, passWidth : Int, passHeight : Int, passPeriodX : Int, passPeriodY : Int) : java.NativeArray<Int>;
	
	@:overload public static function readMultiByteInteger(iis : javax.imageio.stream.ImageInputStream) : Int;
	
	
}
