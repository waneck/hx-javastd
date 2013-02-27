package java.awt.image;
/*
* Copyright (c) 1996, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class AreaAveragingScaleFilter extends java.awt.image.ReplicateScaleFilter
{
	/**
	* Constructs an AreaAveragingScaleFilter that scales the pixels from
	* its source Image as specified by the width and height parameters.
	* @param width the target width to scale the image
	* @param height the target height to scale the image
	*/
	@:overload public function new(width : Int, height : Int) : Void;
	
	/**
	* Detect if the data is being delivered with the necessary hints
	* to allow the averaging algorithm to do its work.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code> whose
	* pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ImageConsumer#setHints
	*/
	@:overload override public function setHints(hints : Int) : Void;
	
	/**
	* Combine the components for the delivered byte pixels into the
	* accumulation arrays and send on any averaged data for rows of
	* pixels that are complete.  If the correct hints were not
	* specified in the setHints call then relay the work to our
	* superclass which is capable of scaling pixels regardless of
	* the delivery hints.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code>
	* whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ReplicateScaleFilter
	*/
	@:overload override public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<java.StdTypes.Int8>, off : Int, scansize : Int) : Void;
	
	/**
	* Combine the components for the delivered int pixels into the
	* accumulation arrays and send on any averaged data for rows of
	* pixels that are complete.  If the correct hints were not
	* specified in the setHints call then relay the work to our
	* superclass which is capable of scaling pixels regardless of
	* the delivery hints.
	* <p>
	* Note: This method is intended to be called by the
	* <code>ImageProducer</code> of the <code>Image</code>
	* whose pixels are being filtered.  Developers using
	* this class to filter pixels from an image should avoid calling
	* this method directly since that operation could interfere
	* with the filtering operation.
	* @see ReplicateScaleFilter
	*/
	@:overload override public function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pixels : java.NativeArray<Int>, off : Int, scansize : Int) : Void;
	
	
}
