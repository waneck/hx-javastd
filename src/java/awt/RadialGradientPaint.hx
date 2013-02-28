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
extern class RadialGradientPaint extends java.awt.MultipleGradientPaint
{
	/**
	* Constructs a {@code RadialGradientPaint} with a default
	* {@code NO_CYCLE} repeating method and {@code SRGB} color space,
	* using the center as the focus point.
	*
	* @param cx the X coordinate in user space of the center point of the
	*           circle defining the gradient.  The last color of the
	*           gradient is mapped to the perimeter of this circle.
	* @param cy the Y coordinate in user space of the center point of the
	*           circle defining the gradient.  The last color of the
	*           gradient is mapped to the perimeter of this circle.
	* @param radius the radius of the circle defining the extents of the
	*               color gradient
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors to use in the gradient.  The first color
	*               is used at the focus point, the last color around the
	*               perimeter of the circle.
	*
	* @throws NullPointerException
	* if {@code fractions} array is null,
	* or {@code colors} array is null
	* @throws IllegalArgumentException
	* if {@code radius} is non-positive,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload public function new(cx : Single, cy : Single, radius : Single, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>) : Void;
	
	/**
	* Constructs a {@code RadialGradientPaint} with a default
	* {@code NO_CYCLE} repeating method and {@code SRGB} color space,
	* using the center as the focus point.
	*
	* @param center the center point, in user space, of the circle defining
	*               the gradient
	* @param radius the radius of the circle defining the extents of the
	*               color gradient
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors to use in the gradient.  The first color
	*               is used at the focus point, the last color around the
	*               perimeter of the circle.
	*
	* @throws NullPointerException
	* if {@code center} point is null,
	* or {@code fractions} array is null,
	* or {@code colors} array is null
	* @throws IllegalArgumentException
	* if {@code radius} is non-positive,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload public function new(center : java.awt.geom.Point2D, radius : Single, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>) : Void;
	
	/**
	* Constructs a {@code RadialGradientPaint} with a default
	* {@code SRGB} color space, using the center as the focus point.
	*
	* @param cx the X coordinate in user space of the center point of the
	*           circle defining the gradient.  The last color of the
	*           gradient is mapped to the perimeter of this circle.
	* @param cy the Y coordinate in user space of the center point of the
	*           circle defining the gradient.  The last color of the
	*           gradient is mapped to the perimeter of this circle.
	* @param radius the radius of the circle defining the extents of the
	*               color gradient
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors to use in the gradient.  The first color
	*               is used at the focus point, the last color around the
	*               perimeter of the circle.
	* @param cycleMethod either {@code NO_CYCLE}, {@code REFLECT},
	*                    or {@code REPEAT}
	*
	* @throws NullPointerException
	* if {@code fractions} array is null,
	* or {@code colors} array is null,
	* or {@code cycleMethod} is null
	* @throws IllegalArgumentException
	* if {@code radius} is non-positive,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload public function new(cx : Single, cy : Single, radius : Single, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod) : Void;
	
	/**
	* Constructs a {@code RadialGradientPaint} with a default
	* {@code SRGB} color space, using the center as the focus point.
	*
	* @param center the center point, in user space, of the circle defining
	*               the gradient
	* @param radius the radius of the circle defining the extents of the
	*               color gradient
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors to use in the gradient.  The first color
	*               is used at the focus point, the last color around the
	*               perimeter of the circle.
	* @param cycleMethod either {@code NO_CYCLE}, {@code REFLECT},
	*                    or {@code REPEAT}
	*
	* @throws NullPointerException
	* if {@code center} point is null,
	* or {@code fractions} array is null,
	* or {@code colors} array is null,
	* or {@code cycleMethod} is null
	* @throws IllegalArgumentException
	* if {@code radius} is non-positive,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload public function new(center : java.awt.geom.Point2D, radius : Single, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod) : Void;
	
	/**
	* Constructs a {@code RadialGradientPaint} with a default
	* {@code SRGB} color space.
	*
	* @param cx the X coordinate in user space of the center point of the
	*           circle defining the gradient.  The last color of the
	*           gradient is mapped to the perimeter of this circle.
	* @param cy the Y coordinate in user space of the center point of the
	*           circle defining the gradient.  The last color of the
	*           gradient is mapped to the perimeter of this circle.
	* @param radius the radius of the circle defining the extents of the
	*               color gradient
	* @param fx the X coordinate of the point in user space to which the
	*           first color is mapped
	* @param fy the Y coordinate of the point in user space to which the
	*           first color is mapped
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors to use in the gradient.  The first color
	*               is used at the focus point, the last color around the
	*               perimeter of the circle.
	* @param cycleMethod either {@code NO_CYCLE}, {@code REFLECT},
	*                    or {@code REPEAT}
	*
	* @throws NullPointerException
	* if {@code fractions} array is null,
	* or {@code colors} array is null,
	* or {@code cycleMethod} is null
	* @throws IllegalArgumentException
	* if {@code radius} is non-positive,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload public function new(cx : Single, cy : Single, radius : Single, fx : Single, fy : Single, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod) : Void;
	
	/**
	* Constructs a {@code RadialGradientPaint} with a default
	* {@code SRGB} color space.
	*
	* @param center the center point, in user space, of the circle defining
	*               the gradient.  The last color of the gradient is mapped
	*               to the perimeter of this circle.
	* @param radius the radius of the circle defining the extents of the color
	*               gradient
	* @param focus the point in user space to which the first color is mapped
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors to use in the gradient. The first color
	*               is used at the focus point, the last color around the
	*               perimeter of the circle.
	* @param cycleMethod either {@code NO_CYCLE}, {@code REFLECT},
	*                    or {@code REPEAT}
	*
	* @throws NullPointerException
	* if one of the points is null,
	* or {@code fractions} array is null,
	* or {@code colors} array is null,
	* or {@code cycleMethod} is null
	* @throws IllegalArgumentException
	* if {@code radius} is non-positive,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload public function new(center : java.awt.geom.Point2D, radius : Single, focus : java.awt.geom.Point2D, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod) : Void;
	
	/**
	* Constructs a {@code RadialGradientPaint}.
	*
	* @param center the center point in user space of the circle defining the
	*               gradient.  The last color of the gradient is mapped to
	*               the perimeter of this circle.
	* @param radius the radius of the circle defining the extents of the
	*               color gradient
	* @param focus the point in user space to which the first color is mapped
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors to use in the gradient.  The first color
	*               is used at the focus point, the last color around the
	*               perimeter of the circle.
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
	* if {@code radius} is non-positive,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload public function new(center : java.awt.geom.Point2D, radius : Single, focus : java.awt.geom.Point2D, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod, colorSpace : java.awt.MultipleGradientPaint.MultipleGradientPaint_ColorSpaceType, gradientTransform : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Constructs a {@code RadialGradientPaint} with a default
	* {@code SRGB} color space.
	* The gradient circle of the {@code RadialGradientPaint} is defined
	* by the given bounding box.
	* <p>
	* This constructor is a more convenient way to express the
	* following (equivalent) code:<br>
	*
	* <pre>
	*     double gw = gradientBounds.getWidth();
	*     double gh = gradientBounds.getHeight();
	*     double cx = gradientBounds.getCenterX();
	*     double cy = gradientBounds.getCenterY();
	*     Point2D center = new Point2D.Double(cx, cy);
	*
	*     AffineTransform gradientTransform = new AffineTransform();
	*     gradientTransform.translate(cx, cy);
	*     gradientTransform.scale(gw / 2, gh / 2);
	*     gradientTransform.translate(-cx, -cy);
	*
	*     RadialGradientPaint gp =
	*         new RadialGradientPaint(center, 1.0f, center,
	*                                 fractions, colors,
	*                                 cycleMethod,
	*                                 ColorSpaceType.SRGB,
	*                                 gradientTransform);
	* </pre>
	*
	* @param gradientBounds the bounding box, in user space, of the circle
	*                       defining the outermost extent of the gradient
	* @param fractions numbers ranging from 0.0 to 1.0 specifying the
	*                  distribution of colors along the gradient
	* @param colors array of colors to use in the gradient.  The first color
	*               is used at the focus point, the last color around the
	*               perimeter of the circle.
	* @param cycleMethod either {@code NO_CYCLE}, {@code REFLECT},
	*                    or {@code REPEAT}
	*
	* @throws NullPointerException
	* if {@code gradientBounds} is null,
	* or {@code fractions} array is null,
	* or {@code colors} array is null,
	* or {@code cycleMethod} is null
	* @throws IllegalArgumentException
	* if {@code gradientBounds} is empty,
	* or {@code fractions.length != colors.length},
	* or {@code colors} is less than 2 in size,
	* or a {@code fractions} value is less than 0.0 or greater than 1.0,
	* or the {@code fractions} are not provided in strictly increasing order
	*/
	@:overload public function new(gradientBounds : java.awt.geom.Rectangle2D, fractions : java.NativeArray<Single>, colors : java.NativeArray<java.awt.Color>, cycleMethod : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod) : Void;
	
	/**
	* Creates and returns a {@link PaintContext} used to
	* generate a circular radial color gradient pattern.
	* See the description of the {@link Paint#createContext createContext} method
	* for information on null parameter handling.
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
	@:overload override public function createContext(cm : java.awt.image.ColorModel, deviceBounds : java.awt.Rectangle, userBounds : java.awt.geom.Rectangle2D, transform : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints) : java.awt.PaintContext;
	
	/**
	* Returns a copy of the center point of the radial gradient.
	*
	* @return a {@code Point2D} object that is a copy of the center point
	*/
	@:overload public function getCenterPoint() : java.awt.geom.Point2D;
	
	/**
	* Returns a copy of the focus point of the radial gradient.
	* Note that if the focus point specified when the radial gradient
	* was constructed lies outside of the radius of the circle, this
	* method will still return the original focus point even though
	* the rendering may center the rings of color on a different
	* point that lies inside the radius.
	*
	* @return a {@code Point2D} object that is a copy of the focus point
	*/
	@:overload public function getFocusPoint() : java.awt.geom.Point2D;
	
	/**
	* Returns the radius of the circle defining the radial gradient.
	*
	* @return the radius of the circle defining the radial gradient
	*/
	@:overload public function getRadius() : Single;
	
	
}
