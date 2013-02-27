package java.awt.image.renderable;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
/* ********************************************************************
**********************************************************************
**********************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997                      ***
*** As  an unpublished  work pursuant to Title 17 of the United    ***
*** States Code.  All rights reserved.                             ***
**********************************************************************
**********************************************************************
**********************************************************************/
extern class RenderableImageProducer implements java.awt.image.ImageProducer implements java.lang.Runnable
{
	/**
	* Constructs a new RenderableImageProducer from a RenderableImage
	* and a RenderContext.
	*
	* @param rdblImage the RenderableImage to be rendered.
	* @param rc the RenderContext to use for producing the pixels.
	*/
	@:overload public function new(rdblImage : java.awt.image.renderable.RenderableImage, rc : java.awt.image.renderable.RenderContext) : Void;
	
	/**
	* Sets a new RenderContext to use for the next startProduction() call.
	*
	* @param rc the new RenderContext.
	*/
	@:overload @:synchronized public function setRenderContext(rc : java.awt.image.renderable.RenderContext) : Void;
	
	/**
	* Adds an ImageConsumer to the list of consumers interested in
	* data for this image.
	*
	* @param ic an ImageConsumer to be added to the interest list.
	*/
	@:overload @:synchronized public function addConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Determine if an ImageConsumer is on the list of consumers
	* currently interested in data for this image.
	*
	* @param ic the ImageConsumer to be checked.
	* @return true if the ImageConsumer is on the list; false otherwise.
	*/
	@:overload @:synchronized public function isConsumer(ic : java.awt.image.ImageConsumer) : Bool;
	
	/**
	* Remove an ImageConsumer from the list of consumers interested in
	* data for this image.
	*
	* @param ic the ImageConsumer to be removed.
	*/
	@:overload @:synchronized public function removeConsumer(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Adds an ImageConsumer to the list of consumers interested in
	* data for this image, and immediately starts delivery of the
	* image data through the ImageConsumer interface.
	*
	* @param ic the ImageConsumer to be added to the list of consumers.
	*/
	@:overload @:synchronized public function startProduction(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* Requests that a given ImageConsumer have the image data delivered
	* one more time in top-down, left-right order.
	*
	* @param ic the ImageConsumer requesting the resend.
	*/
	@:overload public function requestTopDownLeftRightResend(ic : java.awt.image.ImageConsumer) : Void;
	
	/**
	* The runnable method for this class. This will produce an image using
	* the current RenderableImage and RenderContext and send it to all the
	* ImageConsumer currently registered with this class.
	*/
	@:overload public function run() : Void;
	
	
}
