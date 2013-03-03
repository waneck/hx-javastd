package sun.awt.image;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
*      Reads GIF images from an InputStream and reports the
*      image data to an InputStreamImageSource object.
*
* The algorithm is copyright of CompuServe.
*/
/**
* Gif Image converter
*
* @author Arthur van Hoff
* @author Jim Graham
*/
extern class GifImageDecoder extends sun.awt.image.ImageDecoder
{
	@:overload @:public public function new(src : sun.awt.image.InputStreamImageSource, is : java.io.InputStream) : Void;
	
	/**
	* produce an image from the stream.
	*/
	@:overload @:public override public function produceImage() : Void;
	
	@:overload @:public @:static public static function grow_colormap(colormap : java.NativeArray<java.StdTypes.Int8>, newlen : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
@:internal extern class GifFrame
{
	@:overload @:public public function new(id : sun.awt.image.GifImageDecoder, dm : Int, dl : Int, init : Bool, cm : java.awt.image.IndexColorModel, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public public function dispose() : Bool;
	
	
}
