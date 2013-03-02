package sun.awt.image;
/*
* Copyright (c) 1995, 2003, Oracle and/or its affiliates. All rights reserved.
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
/*-
*      Reads JPEG images from an InputStream and reports the
*      image data to an InputStreamImageSource object.
*
* The native implementation of the JPEG image decoder was adapted from
* release 6 of the free JPEG software from the Independent JPEG Group.
*/
/**
* JPEG Image converter
*
* @author Jim Graham
*/
extern class JPEGImageDecoder extends sun.awt.image.ImageDecoder
{
	@:overload public function new(src : sun.awt.image.InputStreamImageSource, is : java.io.InputStream) : Void;
	
	@:overload public function sendHeaderInfo(width : Int, height : Int, gray : Bool, hasalpha : Bool, multipass : Bool) : Bool;
	
	@:overload public function sendPixels(pixels : java.NativeArray<Int>, y : Int) : Bool;
	
	@:overload public function sendPixels(pixels : java.NativeArray<java.StdTypes.Int8>, y : Int) : Bool;
	
	/**
	* produce an image from the stream.
	*/
	@:overload public function produceImage() : Void;
	
	
}
