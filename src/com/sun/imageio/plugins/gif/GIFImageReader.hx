package com.sun.imageio.plugins.gif;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class GIFImageReader extends javax.imageio.ImageReader
{
	@:overload @:public public function new(originatingProvider : javax.imageio.spi.ImageReaderSpi) : Void;
	
	@:overload @:public override public function setInput(input : Dynamic, seekForwardOnly : Bool, ignoreMetadata : Bool) : Void;
	
	@:overload @:public override public function getNumImages(allowSearch : Bool) : Int;
	
	@:overload @:public override public function getWidth(imageIndex : Int) : Int;
	
	@:overload @:public override public function getHeight(imageIndex : Int) : Int;
	
	@:overload @:public override public function getImageTypes(imageIndex : Int) : java.util.Iterator<Dynamic>;
	
	@:overload @:public override public function getDefaultReadParam() : javax.imageio.ImageReadParam;
	
	@:overload @:public override public function getStreamMetadata() : javax.imageio.metadata.IIOMetadata;
	
	@:overload @:public override public function getImageMetadata(imageIndex : Int) : javax.imageio.metadata.IIOMetadata;
	
	@:overload @:public public function initializeStringTable(prefix : java.NativeArray<Int>, suffix : java.NativeArray<java.StdTypes.Int8>, initial : java.NativeArray<java.StdTypes.Int8>, length : java.NativeArray<Int>) : Void;
	
	@:overload @:public override public function read(imageIndex : Int, param : javax.imageio.ImageReadParam) : java.awt.image.BufferedImage;
	
	/**
	* Remove all settings including global settings such as
	* <code>Locale</code>s and listeners, as well as stream settings.
	*/
	@:overload @:public override public function reset() : Void;
	
	
}
