package sun.awt.image;
/*
* Copyright (c) 1996, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class OffScreenImage extends java.awt.image.BufferedImage
{
	/**
	* This is a special variant of BufferedImage that keeps a reference to
	* a Component.  The Component's foreground and background colors and
	* default font are used as the defaults for this image.
	*/
	@:protected private var c : java.awt.Component;
	
	/**
	* Constructs an OffScreenImage given a color model and tile,
	* for offscreen rendering to be used with a given component.
	* The component is used to obtain the foreground color, background
	* color and font.
	*/
	@:overload @:public public function new(c : java.awt.Component, cm : java.awt.image.ColorModel, raster : java.awt.image.WritableRaster, isRasterPremultiplied : Bool) : Void;
	
	@:overload @:public override public function getGraphics() : java.awt.Graphics;
	
	@:overload @:public override public function createGraphics() : java.awt.Graphics2D;
	
	@:overload @:public override public function getSource() : java.awt.image.ImageProducer;
	
	
}
