package com.sun.imageio.plugins.bmp;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class BMPImageReader extends javax.imageio.ImageReader implements com.sun.imageio.plugins.bmp.BMPConstants
{
	/** Constructs <code>BMPImageReader</code> from the provided
	*  <code>ImageReaderSpi</code>.
	*/
	@:overload public function new(originator : javax.imageio.spi.ImageReaderSpi) : Void;
	
	/** Overrides the method defined in the superclass. */
	@:overload override public function setInput(input : Dynamic, seekForwardOnly : Bool, ignoreMetadata : Bool) : Void;
	
	/** Overrides the method defined in the superclass. */
	@:overload override public function getNumImages(allowSearch : Bool) : Int;
	
	@:overload override public function getWidth(imageIndex : Int) : Int;
	
	@:overload override public function getHeight(imageIndex : Int) : Int;
	
	@:overload public function readHeader() : Void;
	
	@:overload override public function getImageTypes(imageIndex : Int) : java.util.Iterator<Dynamic>;
	
	@:overload override public function getDefaultReadParam() : javax.imageio.ImageReadParam;
	
	@:overload override public function getImageMetadata(imageIndex : Int) : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function getStreamMetadata() : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function isRandomAccessEasy(imageIndex : Int) : Bool;
	
	@:overload override public function read(imageIndex : Int, param : javax.imageio.ImageReadParam) : java.awt.image.BufferedImage;
	
	@:overload override public function canReadRaster() : Bool;
	
	@:overload override public function readRaster(imageIndex : Int, param : javax.imageio.ImageReadParam) : java.awt.image.Raster;
	
	@:overload override public function reset() : Void;
	
	
}
@:native('com$sun$imageio$plugins$bmp$BMPImageReader$EmbeddedProgressAdapter') @:internal extern class BMPImageReader_EmbeddedProgressAdapter implements javax.imageio.event.IIOReadProgressListener
{
	@:overload public function imageComplete(src : javax.imageio.ImageReader) : Void;
	
	@:overload public function imageProgress(src : javax.imageio.ImageReader, percentageDone : Single) : Void;
	
	@:overload public function imageStarted(src : javax.imageio.ImageReader, imageIndex : Int) : Void;
	
	@:overload public function thumbnailComplete(src : javax.imageio.ImageReader) : Void;
	
	@:overload public function thumbnailProgress(src : javax.imageio.ImageReader, percentageDone : Single) : Void;
	
	@:overload public function thumbnailStarted(src : javax.imageio.ImageReader, iIdx : Int, tIdx : Int) : Void;
	
	@:overload public function sequenceComplete(src : javax.imageio.ImageReader) : Void;
	
	@:overload public function sequenceStarted(src : javax.imageio.ImageReader, minIndex : Int) : Void;
	
	@:overload public function readAborted(src : javax.imageio.ImageReader) : Void;
	
	
}
