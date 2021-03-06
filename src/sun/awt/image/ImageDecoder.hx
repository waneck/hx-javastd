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
extern class ImageDecoder
{
	@:protected private var aborted : Bool;
	
	@:protected private var finished : Bool;
	
	@:overload @:public public function new(src : sun.awt.image.InputStreamImageSource, is : java.io.InputStream) : Void;
	
	@:overload @:public public function isConsumer(ic : java.awt.image.ImageConsumer) : Bool;
	
	@:overload @:public public function removeConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	@:overload @:protected private function nextConsumer(cq : sun.awt.image.ImageConsumerQueue) : sun.awt.image.ImageConsumerQueue;
	
	@:overload @:protected private function setDimensions(w : Int, h : Int) : Int;
	
	@:overload @:protected private function setProperties(props : java.util.Hashtable<Dynamic, Dynamic>) : Int;
	
	@:overload @:protected private function setColorModel(model : java.awt.image.ColorModel) : Int;
	
	@:overload @:protected private function setHints(hints : Int) : Int;
	
	@:overload @:protected private function headerComplete() : Void;
	
	@:overload @:protected private function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pix : java.NativeArray<java.StdTypes.Int8>, off : Int, scansize : Int) : Int;
	
	@:overload @:protected private function setPixels(x : Int, y : Int, w : Int, h : Int, model : java.awt.image.ColorModel, pix : java.NativeArray<Int>, off : Int, scansize : Int) : Int;
	
	@:overload @:protected private function imageComplete(status : Int, done : Bool) : Int;
	
	@:overload @:public @:abstract public function produceImage() : Void;
	
	@:overload @:public public function abort() : Void;
	
	@:overload @:public @:synchronized public function close() : Void;
	
	
}
