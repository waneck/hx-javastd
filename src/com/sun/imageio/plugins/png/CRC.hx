package com.sun.imageio.plugins.png;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CRC
{
	@:overload public function new() : Void;
	
	@:overload public function reset() : Void;
	
	@:overload public function update(data : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload public function update(data : Int) : Void;
	
	@:overload public function getValue() : Int;
	
	
}
@:internal extern class ChunkStream extends javax.imageio.stream.ImageOutputStreamImpl
{
	@:overload public function new(type : Int, stream : javax.imageio.stream.ImageOutputStream) : Void;
	
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function write(b : Int) : Void;
	
	@:overload public function finish() : Void;
	
	@:overload override private function finalize() : Void;
	
	
}
@:internal extern class IDATOutputStream extends javax.imageio.stream.ImageOutputStreamImpl
{
	@:overload public function new(stream : javax.imageio.stream.ImageOutputStream, chunkLength : Int) : Void;
	
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload public function deflate() : Void;
	
	@:overload override public function write(b : Int) : Void;
	
	@:overload public function finish() : Void;
	
	@:overload override private function finalize() : Void;
	
	
}
@:internal extern class PNGImageWriteParam extends javax.imageio.ImageWriteParam
{
	@:overload public function new(locale : java.util.Locale) : Void;
	
	
}
extern class PNGImageWriter extends javax.imageio.ImageWriter
{
	@:overload public function new(originatingProvider : javax.imageio.spi.ImageWriterSpi) : Void;
	
	@:overload override public function setOutput(output : Dynamic) : Void;
	
	@:overload override public function getDefaultWriteParam() : javax.imageio.ImageWriteParam;
	
	@:overload override public function getDefaultStreamMetadata(param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function getDefaultImageMetadata(imageType : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function convertStreamMetadata(inData : javax.imageio.metadata.IIOMetadata, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function convertImageMetadata(inData : javax.imageio.metadata.IIOMetadata, imageType : javax.imageio.ImageTypeSpecifier, param : javax.imageio.ImageWriteParam) : javax.imageio.metadata.IIOMetadata;
	
	@:overload override public function write(streamMetadata : javax.imageio.metadata.IIOMetadata, image : javax.imageio.IIOImage, param : javax.imageio.ImageWriteParam) : Void;
	
	
}
