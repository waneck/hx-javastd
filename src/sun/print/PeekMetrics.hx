package sun.print;
/*
* Copyright (c) 1998, 2000, Oracle and/or its affiliates. All rights reserved.
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
extern class PeekMetrics
{
	/**
	* Return <code>true</code> if the application
	* has done any drawing with a Paint that
	* is not an instance of <code>Color</code>
	*/
	@:overload public function hasNonSolidColors() : Bool;
	
	/**
	* Return true if the application has
	* done any drawing with an alpha other
	* than 1.0.
	*/
	@:overload public function hasCompositing() : Bool;
	
	/**
	* Return true if the application has
	* drawn any text.
	*/
	@:overload public function hasText() : Bool;
	
	/**
	* Return true if the application has
	* drawn any images.
	*/
	@:overload public function hasImages() : Bool;
	
	/**
	* The application is performing a fill
	* so record the needed information.
	*/
	@:overload public function fill(g : java.awt.Graphics2D) : Void;
	
	/**
	* The application is performing a draw
	* so record the needed information.
	*/
	@:overload public function draw(g : java.awt.Graphics2D) : Void;
	
	/**
	* The application is performing a clearRect
	* so record the needed information.
	*/
	@:overload public function clear(g : java.awt.Graphics2D) : Void;
	
	/**
	* The application is drawing text
	* so record the needed information.
	*/
	@:overload public function drawText(g : java.awt.Graphics2D) : Void;
	
	/**
	* The application is drawing text
	* defined by <code>TextLayout</code>
	* so record the needed information.
	*/
	@:overload public function drawText(g : java.awt.Graphics2D, textLayout : java.awt.font.TextLayout) : Void;
	
	/**
	* The application is drawing the passed
	* in image.
	*/
	@:overload public function drawImage(g : java.awt.Graphics2D, image : java.awt.Image) : Void;
	
	/**
	* The application is drawing the passed
	* in image.
	*/
	@:overload public function drawImage(g : java.awt.Graphics2D, image : java.awt.image.RenderedImage) : Void;
	
	/**
	* The application is drawing the passed
	* in image.
	*/
	@:overload public function drawImage(g : java.awt.Graphics2D, image : java.awt.image.renderable.RenderableImage) : Void;
	
	
}
