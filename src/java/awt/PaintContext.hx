package java.awt;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface PaintContext
{
	/**
	* Releases the resources allocated for the operation.
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Returns the <code>ColorModel</code> of the output.  Note that
	* this <code>ColorModel</code> might be different from the hint
	* specified in the
	* {@link Paint#createContext(ColorModel, Rectangle, Rectangle2D,
AffineTransform, RenderingHints) createContext} method of
	* <code>Paint</code>.  Not all <code>PaintContext</code> objects are
	* capable of generating color patterns in an arbitrary
	* <code>ColorModel</code>.
	* @return the <code>ColorModel</code> of the output.
	*/
	@:overload public function getColorModel() : java.awt.image.ColorModel;
	
	/**
	* Returns a <code>Raster</code> containing the colors generated for
	* the graphics operation.
	* @param x the x coordinate of the area in device space
	* for which colors are generated.
	* @param y the y coordinate of the area in device space
	* for which colors are generated.
	* @param w the width of the area in device space
	* @param h the height of the area in device space
	* @return a <code>Raster</code> representing the specified
	* rectangular area and containing the colors generated for
	* the graphics operation.
	*/
	@:overload public function getRaster(x : Int, y : Int, w : Int, h : Int) : java.awt.image.Raster;
	
	
}
