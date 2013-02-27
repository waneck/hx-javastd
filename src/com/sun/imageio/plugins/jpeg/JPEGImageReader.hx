package com.sun.imageio.plugins.jpeg;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class JPEGImageReader extends javax.imageio.ImageReader
{
	/**
	* Warning code to be passed to warningOccurred to indicate
	* that the EOI marker is missing from the end of the stream.
	* This usually signals that the stream is corrupted, but
	* everything up to the last MCU should be usable.
	*/
	private static var WARNING_NO_EOI(default, null) : Int;
	
	/**
	* Warning code to be passed to warningOccurred to indicate
	* that a JFIF segment was encountered inside a JFXX JPEG
	* thumbnail and is being ignored.
	*/
	private static var WARNING_NO_JFIF_IN_THUMB(default, null) : Int;
	
	/**
	* Warning code to be passed to warningOccurred to indicate
	* that embedded ICC profile is invalid and will be ignored.
	*/
	private static var WARNING_IGNORE_INVALID_ICC(default, null) : Int;
	
	@:overload public function new(originator : javax.imageio.spi.ImageReaderSpi) : Void;
	
	/**
	* Called by the native code or other classes to signal a warning.
	* The code is used to lookup a localized message to be used when
	* sending warnings to listeners.
	*/
	@:overload private function warningOccurred(code : Int) : Void;
	
	/**
	* The library has it's own error facility that emits warning messages.
	* This routine is called by the native code when it has already
	* formatted a string for output.
	* XXX  For truly complete localization of all warning messages,
	* the sun_jpeg_output_message routine in the native code should
	* send only the codes and parameters to a method here in Java,
	* which will then format and send the warnings, using localized
	* strings.  This method will have to deal with all the parameters
	* and formats (%u with possibly large numbers, %02d, %02x, etc.)
	* that actually occur in the JPEG library.  For now, this prevents
	* library warnings from being printed to stderr.
	*/
	@:overload private function warningWithMessage(msg : String) : Void;
	
	@:overload override public function setInput(input : Dynamic, seekForwardOnly : Bool, ignoreMetadata : Bool) : Void;
	
	@:overload override public function getNumImages(allowSearch : Bool) : Int;
	
	@:overload override public function getWidth(imageIndex : Int) : Int;
	
	@:overload override public function getHeight(imageIndex : Int) : Int;
	
	@:overload override public function getRawImageType(imageIndex : Int) : javax.imageio.ImageTypeSpecifier;
	
	@:overload override public function getImageTypes(imageIndex : Int) : java.util.Iterator<Dynamic>;
	
	@:overload override public function getDefaultReadParam() : javax.imageio.ImageReadParam;
	
	@:overload override public function getStreamMetadata() : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function getImageMetadata(imageIndex : Int) : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function read(imageIndex : Int, param : javax.imageio.ImageReadParam) : java.awt.image.BufferedImage;
	
	@:overload override public function abort() : Void;
	
	@:overload override public function canReadRaster() : Bool;
	
	@:overload override public function readRaster(imageIndex : Int, param : javax.imageio.ImageReadParam) : java.awt.image.Raster;
	
	@:overload override public function readerSupportsThumbnails() : Bool;
	
	@:overload override public function getNumThumbnails(imageIndex : Int) : Int;
	
	@:overload override public function getThumbnailWidth(imageIndex : Int, thumbnailIndex : Int) : Int;
	
	@:overload override public function getThumbnailHeight(imageIndex : Int, thumbnailIndex : Int) : Int;
	
	@:overload override public function readThumbnail(imageIndex : Int, thumbnailIndex : Int) : java.awt.image.BufferedImage;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function dispose() : Void;
	
	
}
@:native('com$sun$imageio$plugins$jpeg$JPEGImageReader$JPEGReaderDisposerRecord') @:internal extern class JPEGImageReader_JPEGReaderDisposerRecord implements sun.java2d.DisposerRecord
{
	@:overload public function new(pData : haxe.Int64) : Void;
	
	@:overload @:synchronized public function dispose() : Void;
	
	
}
@:internal extern class ImageTypeIterator implements java.util.Iterator<javax.imageio.ImageTypeSpecifier>
{
	@:overload public function new(producers : java.util.Iterator<ImageTypeProducer>) : Void;
	
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : javax.imageio.ImageTypeSpecifier;
	
	@:overload public function remove() : Void;
	
	
}
@:internal extern class ImageTypeProducer
{
	@:overload public function new(csCode : Int) : Void;
	
	@:overload public function new() : Void;
	
	@:overload @:synchronized public function getType() : javax.imageio.ImageTypeSpecifier;
	
	@:overload @:synchronized public static function getTypeProducer(csCode : Int) : ImageTypeProducer;
	
	@:overload private function produce() : javax.imageio.ImageTypeSpecifier;
	
	
}
