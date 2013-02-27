package sun.java2d;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class HeadlessGraphicsEnvironment extends java.awt.GraphicsEnvironment
{
	@:overload public function new(ge : java.awt.GraphicsEnvironment) : Void;
	
	@:overload override public function getScreenDevices() : java.NativeArray<java.awt.GraphicsDevice>;
	
	@:overload override public function getDefaultScreenDevice() : java.awt.GraphicsDevice;
	
	@:overload override public function getCenterPoint() : java.awt.Point;
	
	@:overload override public function getMaximumWindowBounds() : java.awt.Rectangle;
	
	@:overload override public function createGraphics(img : java.awt.image.BufferedImage) : java.awt.Graphics2D;
	
	@:overload override public function getAllFonts() : java.NativeArray<java.awt.Font>;
	
	@:overload override public function getAvailableFontFamilyNames() : java.NativeArray<String>;
	
	@:overload override public function getAvailableFontFamilyNames(l : java.util.Locale) : java.NativeArray<String>;
	
	/* Used by FontManager : internal API */
	@:overload public function getSunGraphicsEnvironment() : java.awt.GraphicsEnvironment;
	
	
}
