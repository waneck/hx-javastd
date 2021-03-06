package sun.awt.image;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class BufferedImageDevice extends java.awt.GraphicsDevice
{
	@:overload @:public public function new(gc : sun.awt.image.BufferedImageGraphicsConfig) : Void;
	
	/**
	* Returns the type of this <code>GraphicsDevice</code>.
	* @return the type of this <code>GraphicsDevice</code>, which can
	* either be TYPE_RASTER_SCREEN, TYPE_PRINTER or TYPE_IMAGE_BUFFER.
	* @see #TYPE_RASTER_SCREEN
	* @see #TYPE_PRINTER
	* @see #TYPE_IMAGE_BUFFER
	*/
	@:overload @:public override public function getType() : Int;
	
	/**
	* Returns the identification string associated with this
	* <code>GraphicsDevice</code>.
	* @return a <code>String</code> that is the identification
	* of this <code>GraphicsDevice</code>.
	*/
	@:overload @:public override public function getIDstring() : String;
	
	/**
	* Returns all of the <code>GraphicsConfiguration</code>
	* objects associated with this <code>GraphicsDevice</code>.
	* @return an array of <code>GraphicsConfiguration</code>
	* objects that are associated with this
	* <code>GraphicsDevice</code>.
	*/
	@:overload @:public override public function getConfigurations() : java.NativeArray<java.awt.GraphicsConfiguration>;
	
	/**
	* Returns the default <code>GraphicsConfiguration</code>
	* associated with this <code>GraphicsDevice</code>.
	* @return the default <code>GraphicsConfiguration</code>
	* of this <code>GraphicsDevice</code>.
	*/
	@:overload @:public override public function getDefaultConfiguration() : java.awt.GraphicsConfiguration;
	
	
}
