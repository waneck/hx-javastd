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
extern class JPEGImageWriter extends javax.imageio.ImageWriter
{
	@:protected @:static @:final private static var WARNING_DEST_IGNORED(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_STREAM_METADATA_IGNORED(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_DEST_METADATA_COMP_MISMATCH(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_DEST_METADATA_JFIF_MISMATCH(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_DEST_METADATA_ADOBE_MISMATCH(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_IMAGE_METADATA_JFIF_MISMATCH(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_IMAGE_METADATA_ADOBE_MISMATCH(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_METADATA_NOT_JPEG_FOR_RASTER(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_NO_BANDS_ON_INDEXED(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_ILLEGAL_THUMBNAIL(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_IGNORING_THUMBS(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_FORCING_JFIF(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_THUMB_CLIPPED(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_METADATA_ADJUSTED_FOR_THUMB(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_NO_RGB_THUMB_AS_INDEXED(default, null) : Int;
	
	@:protected @:static @:final private static var WARNING_NO_GRAY_THUMB_AS_INDEXED(default, null) : Int;
	
	@:overload @:public public function new(originator : javax.imageio.spi.ImageWriterSpi) : Void;
	
	@:overload @:public override public function setOutput(output : Dynamic) : Void;
	
	@:overload @:public override public function getDefaultWriteParam() : javax.imageio.ImageWriteParam;
	
	@:overload @:public override public function getDefaultStreamMetadata(param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload @:public override public function getDefaultImageMetadata(imageType : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload @:public override public function convertStreamMetadata(inData : javax.imageio.metadata.IIOMetadata, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload @:public override public function convertImageMetadata(inData : javax.imageio.metadata.IIOMetadata, imageType : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload @:public override public function getNumThumbnailsSupported(imageType : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam, streamMetadata : javax.imageio.metadata.IIOMetadata, imageMetadata : javax.imageio.metadata.IIOMetadata) : Int;
	
	@:overload @:public override public function getPreferredThumbnailSizes(imageType : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam, streamMetadata : javax.imageio.metadata.IIOMetadata, imageMetadata : javax.imageio.metadata.IIOMetadata) : java.NativeArray<java.awt.Dimension>;
	
	@:overload @:public override public function canWriteRasters() : Bool;
	
	@:overload @:public override public function write(streamMetadata : javax.imageio.metadata.IIOMetadata, image : javax.imageio.IIOImage, param : javax.imageio.ImageWriteParam) : Void;
	
	@:overload @:public override public function prepareWriteSequence(streamMetadata : javax.imageio.metadata.IIOMetadata) : Void;
	
	@:overload @:public override public function writeToSequence(image : javax.imageio.IIOImage, param : javax.imageio.ImageWriteParam) : Void;
	
	@:overload @:public override public function endWriteSequence() : Void;
	
	@:overload @:public @:synchronized override public function abort() : Void;
	
	@:overload @:public override public function reset() : Void;
	
	@:overload @:public override public function dispose() : Void;
	
	
}
@:native('com$sun$imageio$plugins$jpeg$JPEGImageWriter$JPEGWriterDisposerRecord') @:internal extern class JPEGImageWriter_JPEGWriterDisposerRecord implements sun.java2d.DisposerRecord
{
	@:overload @:public public function new(pData : haxe.Int64) : Void;
	
	@:overload @:public @:synchronized public function dispose() : Void;
	
	
}
