package com.sun.imageio.plugins.bmp;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class BMPImageWriter extends javax.imageio.ImageWriter implements com.sun.imageio.plugins.bmp.BMPConstants
{
	/** Constructs <code>BMPImageWriter</code> based on the provided
	*  <code>ImageWriterSpi</code>.
	*/
	@:overload public function new(originator : javax.imageio.spi.ImageWriterSpi) : Void;
	
	@:overload public function setOutput(output : Dynamic) : Void;
	
	@:overload public function getDefaultWriteParam() : javax.imageio.ImageWriteParam;
	
	@:overload public function getDefaultStreamMetadata(param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload public function getDefaultImageMetadata(imageType : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload public function convertStreamMetadata(inData : javax.imageio.metadata.IIOMetadata, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload public function convertImageMetadata(metadata : javax.imageio.metadata.IIOMetadata, type : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload public function canWriteRasters() : Bool;
	
	@:overload public function write(streamMetadata : javax.imageio.metadata.IIOMetadata, image : javax.imageio.IIOImage, param : javax.imageio.ImageWriteParam) : Void;
	
	@:overload public function reset() : Void;
	
	/*
	* Returns preferred compression type for given image.
	* The default compression type is BI_RGB, but some image types can't be
	* encodeed with using default compression without cahnge color resolution.
	* For example, TYPE_USHORT_565_RGB may be encodeed only by using BI_BITFIELDS
	* compression type.
	*
	* NB: we probably need to extend this method if we encounter other image
	* types which can not be encoded with BI_RGB compression type.
	*/
	@:overload private function getPreferredCompressionType(cm : java.awt.image.ColorModel, sm : java.awt.image.SampleModel) : Int;
	
	@:overload private function getPreferredCompressionType(imageType : javax.imageio.ImageTypeSpecifier) : Int;
	
	/*
	* Check whether we can encode image of given type using compression method in question.
	*
	* For example, TYPE_USHORT_565_RGB can be encodeed with BI_BITFIELDS compression only.
	*
	* NB: method should be extended if other cases when we can not encode
	*     with given compression will be discovered.
	*/
	@:overload private function canEncodeImage(compression : Int, cm : java.awt.image.ColorModel, sm : java.awt.image.SampleModel) : Bool;
	
	@:overload private function canEncodeImage(compression : Int, imgType : javax.imageio.ImageTypeSpecifier) : Bool;
	
	@:overload private function writeMaskToPalette(mask : Int, i : Int, r : java.NativeArray<java.StdTypes.Int8>, g : java.NativeArray<java.StdTypes.Int8>, b : java.NativeArray<java.StdTypes.Int8>, a : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
@:native('com$sun$imageio$plugins$bmp$BMPImageWriter$IIOWriteProgressAdapter') @:internal extern class BMPImageWriter_IIOWriteProgressAdapter implements javax.imageio.event.IIOWriteProgressListener
{
	@:overload public function imageComplete(source : javax.imageio.ImageWriter) : Void;
	
	@:overload public function imageProgress(source : javax.imageio.ImageWriter, percentageDone : Single) : Void;
	
	@:overload public function imageStarted(source : javax.imageio.ImageWriter, imageIndex : Int) : Void;
	
	@:overload public function thumbnailComplete(source : javax.imageio.ImageWriter) : Void;
	
	@:overload public function thumbnailProgress(source : javax.imageio.ImageWriter, percentageDone : Single) : Void;
	
	@:overload public function thumbnailStarted(source : javax.imageio.ImageWriter, imageIndex : Int, thumbnailIndex : Int) : Void;
	
	@:overload public function writeAborted(source : javax.imageio.ImageWriter) : Void;
	
	
}
