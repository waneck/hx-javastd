package sun.awt.image;
/*
* Copyright (c) 1995, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class ToolkitImage extends java.awt.Image
{
	@:overload private function new() : Void;
	
	/**
	* Construct an image from an ImageProducer object.
	*/
	@:overload public function new(is : java.awt.image.ImageProducer) : Void;
	
	@:overload override public function getSource() : java.awt.image.ImageProducer;
	
	/**
	* Return the width of the original image source.
	* If the width isn't known, then the image is reconstructed.
	*/
	@:overload public function getWidth() : Int;
	
	/**
	* Return the width of the original image source.
	* If the width isn't known, then the ImageObserver object will be
	* notified when the data is available.
	*/
	@:overload @:synchronized override public function getWidth(iw : java.awt.image.ImageObserver) : Int;
	
	/**
	* Return the height of the original image source.
	* If the height isn't known, then the image is reconstructed.
	*/
	@:overload public function getHeight() : Int;
	
	/**
	* Return the height of the original image source.
	* If the height isn't known, then the ImageObserver object will be
	* notified when the data is available.
	*/
	@:overload @:synchronized override public function getHeight(iw : java.awt.image.ImageObserver) : Int;
	
	/**
	* Return a property of the image by name.  Individual property names
	* are defined by the various image formats.  If a property is not
	* defined for a particular image, then this method will return the
	* UndefinedProperty object.  If the properties for this image are
	* not yet known, then this method will return null and the ImageObserver
	* object will be notified later.  The property name "comment" should
	* be used to store an optional comment which can be presented to
	* the user as a description of the image, its source, or its author.
	*/
	@:overload override public function getProperty(name : String, observer : java.awt.image.ImageObserver) : Dynamic;
	
	@:overload public function hasError() : Bool;
	
	@:overload public function check(iw : java.awt.image.ImageObserver) : Int;
	
	@:overload public function preload(iw : java.awt.image.ImageObserver) : Void;
	
	@:overload override public function flush() : Void;
	
	@:overload private function makeImageRep() : sun.awt.image.ImageRepresentation;
	
	@:overload @:synchronized public function getImageRep() : sun.awt.image.ImageRepresentation;
	
	@:overload override public function getGraphics() : java.awt.Graphics;
	
	/* this method is needed by printing code */
	@:overload public function getColorModel() : java.awt.image.ColorModel;
	
	/* this method is needed by printing code */
	@:overload public function getBufferedImage() : java.awt.image.BufferedImage;
	
	@:overload override public function setAccelerationPriority(priority : Single) : Void;
	
	
}
