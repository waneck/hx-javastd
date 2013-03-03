package java.awt;
/*
* Copyright (c) 2006, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class LinearGradientPaint extends java.awt.MultipleGradientPaint
{
	/**
	* Constructs a {@code LinearGradientPaint} with a default
	* {@code NO_CYCLE} repeating method and {@code SRGB} color space.
	*
	* @param startX the X coordinate of the gradient axis start point
	*               in user space
	* @param startY the Y coordinate of the gradient axis start point
	*               in user space
	* @param endX   the X coordinate of the gradient axis end point
	*               in user space
	* @param endY   the Y coordinate of the gradient axis end point
	*               in user space
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors corresponding to each fractional value
	*
	* @throws NullPointerException
	* if {@code fractions} array is null,
	* or {@code colors} array is null,
	* @throws IllegalArgumentException
	* if start and end points are the same points,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload @:public public function new(startX : Single, startY : Single, endX : Single, endY : Single, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>) : Void;
	
	/**
	* Constructs a {@code LinearGradientPaint} with a default {@code SRGB}
	* color space.
	*
	* @param startX the X coordinate of the gradient axis start point
	*               in user space
	* @param startY the Y coordinate of the gradient axis start point
	*               in user space
	* @param endX   the X coordinate of the gradient axis end point
	*               in user space
	* @param endY   the Y coordinate of the gradient axis end point
	*               in user space
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors corresponding to each fractional value
	* @param cycleMethod either {@code NO_CYCLE}, {@code REFLECT},
	*                    or {@code REPEAT}
	*
	* @throws NullPointerException
	* if {@code fractions} array is null,
	* or {@code colors} array is null,
	* or {@code cycleMethod} is null
	* @throws IllegalArgumentException
	* if start and end points are the same points,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload @:public public function new(startX : Single, startY : Single, endX : Single, endY : Single, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod) : Void;
	
	/**
	* Constructs a {@code LinearGradientPaint} with a default
	* {@code NO_CYCLE} repeating method and {@code SRGB} color space.
	*
	* @param start the gradient axis start {@code Point2D} in user space
	* @param end the gradient axis end {@code Point2D} in user space
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors corresponding to each fractional value
	*
	* @throws NullPointerException
	* if one of the points is null,
	* or {@code fractions} array is null,
	* or {@code colors} array is null
	* @throws IllegalArgumentException
	* if start and end points are the same points,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload @:public public function new(start : java.awt.geom.Point2D, end : java.awt.geom.Point2D, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>) : Void;
	
	/**
	* Constructs a {@code LinearGradientPaint} with a default {@code SRGB}
	* color space.
	*
	* @param start the gradient axis start {@code Point2D} in user space
	* @param end the gradient axis end {@code Point2D} in user space
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors corresponding to each fractional value
	* @param cycleMethod either {@code NO_CYCLE}, {@code REFLECT},
	*                    or {@code REPEAT}
	*
	* @throws NullPointerException
	* if one of the points is null,
	* or {@code fractions} array is null,
	* or {@code colors} array is null,
	* or {@code cycleMethod} is null
	* @throws IllegalArgumentException
	* if start and end points are the same points,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload @:public public function new(start : java.awt.geom.Point2D, end : java.awt.geom.Point2D, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod) : Void;
	
	/**
	* Constructs a {@code LinearGradientPaint}.
	*
	* @param start the gradient axis start {@code Point2D} in user space
	* @param end the gradient axis end {@code Point2D} in user space
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors corresponding to each fractional value
	* @param cycleMethod either {@code NO_CYCLE}, {@code REFLECT},
	*                    or {@code REPEAT}
	* @param colorSpace which color space to use for interpolation,
	*                   either {@code SRGB} or {@code LINEAR_RGB}
	* @param gradientTransform transform to apply to the gradient
	*
	* @throws NullPointerException
	* if one of the points is null,
	* or {@code fractions} array is null,
	* or {@code colors} array is null,
	* or {@code cycleMethod} is null,
	* or {@code colorSpace} is null,
	* or {@code gradientTransform} is null
	* @throws IllegalArgumentException
	* if start and end points are the same points,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload @:public public function new(start : java.awt.geom.Point2D, end : java.awt.geom.Point2D, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod, colorSpace : java.awt.MultipleGradientPaint.MultipleGradientPaint_ColorSpaceType, gradientTransform : java.awt.geom.AffineTransform) : Void;
	
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
	* @param transform the {@link AffineTransform} from user
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
	@:overload @:public override public function createContext(cm : java.awt.image.ColorModel, deviceBounds : java.awt.Rectangle, userBounds : java.awt.geom.Rectangle2D, transform : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints) : java.awt.PaintContext;
	
	/**
	* Returns a copy of the start point of the gradient axis.
	*
	* @return a {@code Point2D} object that is a copy of the point
	* that anchors the first color of this {@code LinearGradientPaint}
	*/
	@:overload @:public public function getStartPoint() : java.awt.geom.Point2D;
	
	/**
	* Returns a copy of the end point of the gradient axis.
	*
	* @return a {@code Point2D} object that is a copy of the point
	* that anchors the last color of this {@code LinearGradientPaint}
	*/
	@:overload @:public public function getEndPoint() : java.awt.geom.Point2D;
	
	
}
