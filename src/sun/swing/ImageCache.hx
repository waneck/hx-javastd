package sun.swing;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ImageCache
{
	@:overload public function new(maxCount : Int) : Void;
	
	@:overload public function flush() : Void;
	
	/**
	* Returns the cached Image, or null, for the specified arguments.
	*/
	@:overload public function getImage(key : Dynamic, config : java.awt.GraphicsConfiguration, w : Int, h : Int, args : java.NativeArray<Dynamic>) : java.awt.Image;
	
	/**
	* Sets the cached image for the specified constraints.
	*/
	@:overload public function setImage(key : Dynamic, config : java.awt.GraphicsConfiguration, w : Int, h : Int, args : java.NativeArray<Dynamic>, image : java.awt.Image) : Void;
	
	
}
/**
* Caches set of arguments and Image.
*/
@:native('sun$swing$ImageCache$Entry') @:internal extern class ImageCache_Entry
{
	@:overload public function setImage(image : java.awt.Image) : Void;
	
	@:overload public function getImage() : java.awt.Image;
	
	@:overload public function toString() : String;
	
	@:overload public function equals(config : java.awt.GraphicsConfiguration, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Bool;
	
	
}
