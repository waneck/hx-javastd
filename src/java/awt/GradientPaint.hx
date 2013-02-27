package java.awt;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class GradientPaint implements java.awt.Paint
{
	/**
	* Constructs a simple acyclic <code>GradientPaint</code> object.
	* @param x1 x coordinate of the first specified
	* <code>Point</code> in user space
	* @param y1 y coordinate of the first specified
	* <code>Point</code> in user space
	* @param color1 <code>Color</code> at the first specified
	* <code>Point</code>
	* @param x2 x coordinate of the second specified
	* <code>Point</code> in user space
	* @param y2 y coordinate of the second specified
	* <code>Point</code> in user space
	* @param color2 <code>Color</code> at the second specified
	* <code>Point</code>
	* @throws NullPointerException if either one of colors is null
	*/
	@:overload public function new(x1 : Single, y1 : Single, color1 : java.awt.Color, x2 : Single, y2 : Single, color2 : java.awt.Color) : Void;
	
	/**
	* Constructs a simple acyclic <code>GradientPaint</code> object.
	* @param pt1 the first specified <code>Point</code> in user space
	* @param color1 <code>Color</code> at the first specified
	* <code>Point</code>
	* @param pt2 the second specified <code>Point</code> in user space
	* @param color2 <code>Color</code> at the second specified
	* <code>Point</code>
	* @throws NullPointerException if either one of colors or points
	* is null
	*/
	@:overload public function new(pt1 : java.awt.geom.Point2D, color1 : java.awt.Color, pt2 : java.awt.geom.Point2D, color2 : java.awt.Color) : Void;
	
	/**
	* Constructs either a cyclic or acyclic <code>GradientPaint</code>
	* object depending on the <code>boolean</code> parameter.
	* @param x1 x coordinate of the first specified
	* <code>Point</code> in user space
	* @param y1 y coordinate of the first specified
	* <code>Point</code> in user space
	* @param color1 <code>Color</code> at the first specified
	* <code>Point</code>
	* @param x2 x coordinate of the second specified
	* <code>Point</code> in user space
	* @param y2 y coordinate of the second specified
	* <code>Point</code> in user space
	* @param color2 <code>Color</code> at the second specified
	* <code>Point</code>
	* @param cyclic <code>true</code> if the gradient pattern should cycle
	* repeatedly between the two colors; <code>false</code> otherwise
	*/
	@:overload public function new(x1 : Single, y1 : Single, color1 : java.awt.Color, x2 : Single, y2 : Single, color2 : java.awt.Color, cyclic : Bool) : Void;
	
	/**
	* Constructs either a cyclic or acyclic <code>GradientPaint</code>
	* object depending on the <code>boolean</code> parameter.
	* @param pt1 the first specified <code>Point</code>
	* in user space
	* @param color1 <code>Color</code> at the first specified
	* <code>Point</code>
	* @param pt2 the second specified <code>Point</code>
	* in user space
	* @param color2 <code>Color</code> at the second specified
	* <code>Point</code>
	* @param cyclic <code>true</code> if the gradient pattern should cycle
	* repeatedly between the two colors; <code>false</code> otherwise
	* @throws NullPointerException if either one of colors or points
	* is null
	*/
	@:overload public function new(pt1 : java.awt.geom.Point2D, color1 : java.awt.Color, pt2 : java.awt.geom.Point2D, color2 : java.awt.Color, cyclic : Bool) : Void;
	
	/**
	* Returns a copy of the point P1 that anchors the first color.
	* @return a {@link Point2D} object that is a copy of the point
	* that anchors the first color of this
	* <code>GradientPaint</code>.
	*/
	@:overload public function getPoint1() : java.awt.geom.Point2D;
	
	/**
	* Returns the color C1 anchored by the point P1.
	* @return a <code>Color</code> object that is the color
	* anchored by P1.
	*/
	@:overload public function getColor1() : java.awt.Color;
	
	/**
	* Returns a copy of the point P2 which anchors the second color.
	* @return a {@link Point2D} object that is a copy of the point
	* that anchors the second color of this
	* <code>GradientPaint</code>.
	*/
	@:overload public function getPoint2() : java.awt.geom.Point2D;
	
	/**
	* Returns the color C2 anchored by the point P2.
	* @return a <code>Color</code> object that is the color
	* anchored by P2.
	*/
	@:overload public function getColor2() : java.awt.Color;
	
	/**
	* Returns <code>true</code> if the gradient cycles repeatedly
	* between the two colors C1 and C2.
	* @return <code>true</code> if the gradient cycles repeatedly
	* between the two colors; <code>false</code> otherwise.
	*/
	@:overload public function isCyclic() : Bool;
	
	/**
	* Creates and returns a {@link PaintContext} used to
	* generate a linear color gradient pattern.
	* See the {@link Paint#createContext specification} of the
	* method in the {@link Paint} interface for information
	* on null parameter handling.
	*
	* @param cm the preferred {@link ColorModel} which represents the most convenient
	*           format for the caller to receive the pixel data, or {@code null}
	*           if there is no preference.
	* @param deviceBounds the device space bounding box
	*                     of the graphics primitive being rendered.
	* @param userBounds the user space bounding box
	*                   of the graphics primitive being rendered.
	* @param xform the {@link AffineTransform} from user
	*              space into device space.
	* @param hints the set of hints that the context object can use to
	*              choose between rendering alternatives.
	* @return the {@code PaintContext} for
	*         generating color patterns.
	* @see Paint
	* @see PaintContext
	* @see ColorModel
	* @see Rectangle
	* @see Rectangle2D
	* @see AffineTransform
	* @see RenderingHints
	*/
	@:overload public function createContext(cm : java.awt.image.ColorModel, deviceBounds : java.awt.Rectangle, userBounds : java.awt.geom.Rectangle2D, xform : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints) : java.awt.PaintContext;
	
	/**
	* Returns the transparency mode for this <code>GradientPaint</code>.
	* @return an integer value representing this <code>GradientPaint</code>
	* object's transparency mode.
	* @see Transparency
	*/
	@:overload public function getTransparency() : Int;
	
	
}
