package com.sun.imageio.plugins.png;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PNGImageDataEnumeration implements java.util.Enumeration<java.io.InputStream>
{
	@:overload public function new(stream : javax.imageio.stream.ImageInputStream) : Void;
	
	@:overload public function nextElement() : java.io.InputStream;
	
	@:overload public function hasMoreElements() : Bool;
	
	
}
extern class PNGImageReader extends javax.imageio.ImageReader
{
	@:overload public function new(originatingProvider : javax.imageio.spi.ImageReaderSpi) : Void;
	
	@:overload override public function setInput(input : Dynamic, seekForwardOnly : Bool, ignoreMetadata : Bool) : Void;
	
	@:overload override public function getNumImages(allowSearch : Bool) : Int;
	
	@:overload override public function getWidth(imageIndex : Int) : Int;
	
	@:overload override public function getHeight(imageIndex : Int) : Int;
	
	@:overload override public function getImageTypes(imageIndex : Int) : java.util.Iterator<javax.imageio.ImageTypeSpecifier>;
	
	/*
	* Super class implementation uses first element
	* of image types list as raw image type.
	*
	* Also, super implementation uses first element of this list
	* as default destination type image read param does not specify
	* anything other.
	*
	* However, in case of RGB and RGBA color types, raw image type
	* produces buffered image of custom type. It causes some
	* performance degradation of subsequent rendering operations.
	*
	* To resolve this contradiction we put standard image types
	* at the first positions of image types list (to produce standard
	* images by default) and put raw image type (which is custom)
	* at the last position of this list.
	*
	* After this changes we should override getRawImageType()
	* to return last element of image types list.
	*/
	@:overload override public function getRawImageType(imageIndex : Int) : javax.imageio.ImageTypeSpecifier;
	
	@:overload override public function getDefaultReadParam() : javax.imageio.ImageReadParam;
	
	@:overload override public function getStreamMetadata() : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function getImageMetadata(imageIndex : Int) : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function read(imageIndex : Int, param : javax.imageio.ImageReadParam) : java.awt.image.BufferedImage;
	
	@:overload override public function reset() : Void;
	
	
}
