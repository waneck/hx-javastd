package javax.imageio;
/*
* Copyright (c) 2000, Oracle and/or its affiliates. All rights reserved.
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
extern interface ImageTranscoder
{
	/**
	* Returns an <code>IIOMetadata</code> object that may be used for
	* encoding and optionally modified using its document interfaces
	* or other interfaces specific to the writer plug-in that will be
	* used for encoding.
	*
	* <p> An optional <code>ImageWriteParam</code> may be supplied
	* for cases where it may affect the structure of the stream
	* metadata.
	*
	* <p> If the supplied <code>ImageWriteParam</code> contains
	* optional setting values not understood by this writer or
	* transcoder, they will be ignored.
	*
	* @param inData an <code>IIOMetadata</code> object representing
	* stream metadata, used to initialize the state of the returned
	* object.
	* @param param an <code>ImageWriteParam</code> that will be used to
	* encode the image, or <code>null</code>.
	*
	* @return an <code>IIOMetadata</code> object, or
	* <code>null</code> if the plug-in does not provide metadata
	* encoding capabilities.
	*
	* @exception IllegalArgumentException if <code>inData</code> is
	* <code>null</code>.
	*/
	@:overload public function convertStreamMetadata(inData : javax.imageio.metadata.IIOMetadata, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	/**
	* Returns an <code>IIOMetadata</code> object that may be used for
	* encoding and optionally modified using its document interfaces
	* or other interfaces specific to the writer plug-in that will be
	* used for encoding.
	*
	* <p> An optional <code>ImageWriteParam</code> may be supplied
	* for cases where it may affect the structure of the image
	* metadata.
	*
	* <p> If the supplied <code>ImageWriteParam</code> contains
	* optional setting values not understood by this writer or
	* transcoder, they will be ignored.
	*
	* @param inData an <code>IIOMetadata</code> object representing
	* image metadata, used to initialize the state of the returned
	* object.
	* @param imageType an <code>ImageTypeSpecifier</code> indicating
	* the layout and color information of the image with which the
	* metadata will be associated.
	* @param param an <code>ImageWriteParam</code> that will be used to
	* encode the image, or <code>null</code>.
	*
	* @return an <code>IIOMetadata</code> object,
	* or <code>null</code> if the plug-in does not provide
	* metadata encoding capabilities.
	*
	* @exception IllegalArgumentException if either of
	* <code>inData</code> or <code>imageType</code> is
	* <code>null</code>.
	*/
	@:overload public function convertImageMetadata(inData : javax.imageio.metadata.IIOMetadata, imageType : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	
}
