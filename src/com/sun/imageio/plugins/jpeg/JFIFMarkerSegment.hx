package com.sun.imageio.plugins.jpeg;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class JFIFMarkerSegment extends com.sun.imageio.plugins.jpeg.MarkerSegment
{
	/**
	* Returns a deep-copy clone of this object.
	*/
	@:overload @:protected override private function clone() : Dynamic;
	
	
}
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$IllegalThumbException') @:internal extern class JFIFMarkerSegment_IllegalThumbException extends java.lang.Exception
{
	
}
/**
* A JFIF extension APP0 marker segment.
*/
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$JFIFExtensionMarkerSegment') @:internal extern class JFIFMarkerSegment_JFIFExtensionMarkerSegment extends com.sun.imageio.plugins.jpeg.MarkerSegment
{
	@:overload @:protected override private function clone() : Dynamic;
	
	
}
/**
* A superclass for the varieties of thumbnails that can
* be stored in a JFIF extension marker segment.
*/
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$JFIFThumb') @:internal extern class JFIFMarkerSegment_JFIFThumb implements java.lang.Cloneable
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:protected private function new(buffer : com.sun.imageio.plugins.jpeg.JPEGBuffer) : Void;
	
	@:overload @:protected private function clone() : Dynamic;
	
	
}
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$JFIFThumbUncompressed') @:internal extern class JFIFMarkerSegment_JFIFThumbUncompressed extends com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFMarkerSegment_JFIFThumb
{
	
}
/**
* A JFIF thumbnail stored as RGB, one byte per channel,
* interleaved.
*/
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$JFIFThumbRGB') @:internal extern class JFIFMarkerSegment_JFIFThumbRGB extends com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFMarkerSegment_JFIFThumbUncompressed
{
	
}
/**
* A JFIF thumbnail stored as an indexed palette image
* using an RGB palette.
*/
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$JFIFThumbPalette') @:internal extern class JFIFMarkerSegment_JFIFThumbPalette extends com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFMarkerSegment_JFIFThumbUncompressed
{
	
}
/**
* A JFIF thumbnail stored as a JPEG stream.  No JFIF or
* JFIF extension markers are permitted.  There is no need
* to clip these, but the entire image must fit into a
* single JFXX marker segment.
*/
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$JFIFThumbJPEG') @:internal extern class JFIFMarkerSegment_JFIFThumbJPEG extends com.sun.imageio.plugins.jpeg.JFIFMarkerSegment.JFIFMarkerSegment_JFIFThumb
{
	@:overload @:protected override private function clone() : Dynamic;
	
	
}
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener') @:internal extern class JFIFMarkerSegment_JFIFThumbJPEG_ThumbnailReadListener implements javax.imageio.event.IIOReadProgressListener
{
	@:overload @:public public function sequenceStarted(source : javax.imageio.ImageReader, minIndex : Int) : Void;
	
	@:overload @:public public function sequenceComplete(source : javax.imageio.ImageReader) : Void;
	
	@:overload @:public public function imageStarted(source : javax.imageio.ImageReader, imageIndex : Int) : Void;
	
	@:overload @:public public function imageProgress(source : javax.imageio.ImageReader, percentageDone : Single) : Void;
	
	@:overload @:public public function imageComplete(source : javax.imageio.ImageReader) : Void;
	
	@:overload @:public public function thumbnailStarted(source : javax.imageio.ImageReader, imageIndex : Int, thumbnailIndex : Int) : Void;
	
	@:overload @:public public function thumbnailProgress(source : javax.imageio.ImageReader, percentageDone : Single) : Void;
	
	@:overload @:public public function thumbnailComplete(source : javax.imageio.ImageReader) : Void;
	
	@:overload @:public public function readAborted(source : javax.imageio.ImageReader) : Void;
	
	
}
/**
* An APP2 marker segment containing an ICC profile.  In the stream
* a profile larger than 64K is broken up into a series of chunks.
* This inner class represents the complete profile as a single objec,
* combining chunks as necessary.
*/
@:native('com$sun$imageio$plugins$jpeg$JFIFMarkerSegment$ICCMarkerSegment') @:internal extern class JFIFMarkerSegment_ICCMarkerSegment extends com.sun.imageio.plugins.jpeg.MarkerSegment
{
	@:overload @:protected override private function clone() : Dynamic;
	
	
}
