package sun.java2d.pipe.hw;
/*
* Copyright (c) 2007, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* This is an image with forced type of the accelerated surface.
*/
extern class AccelTypedVolatileImage extends sun.awt.image.SunVolatileImage
{
	/**
	* Creates a volatile image with specified type of accelerated surface.
	*
	* @param graphicsConfig a GraphicsConfiguration for which this image should
	*        be created.
	* @param width width
	* @param height width
	* @param transparency type of {@link java.awt.Transparency transparency}
	*        requested for the image
	* @param accType type of the desired accelerated surface as defined in
	*        AccelSurface interface
	* @see sun.java2d.pipe.hw.AccelSurface
	*/
	@:overload @:public public function new(graphicsConfig : java.awt.GraphicsConfiguration, width : Int, height : Int, transparency : Int, accType : Int) : Void;
	
	/**
	* {@inheritDoc}
	*
	* This method will throw {@code UnsupportedOperationException} if it this
	* image's destination surface can not be rendered to.
	*/
	@:overload @:public override public function createGraphics() : java.awt.Graphics2D;
	
	
}
