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
extern class MultipleGradientPaint implements java.awt.Paint
{
	/**
	* Returns a copy of the array of floats used by this gradient
	* to calculate color distribution.
	* The returned array always has 0 as its first value and 1 as its
	* last value, with increasing values in between.
	*
	* @return a copy of the array of floats used by this gradient to
	* calculate color distribution
	*/
	@:overload @:public @:final public function getFractions() : java.NativeArray<Single>;
	
	/**
	* Returns a copy of the array of colors used by this gradient.
	* The first color maps to the first value in the fractions array,
	* and the last color maps to the last value in the fractions array.
	*
	* @return a copy of the array of colors used by this gradient
	*/
	@:overload @:public @:final public function getColors() : java.NativeArray<java.awt.Color>;
	
	/**
	* Returns the enumerated type which specifies cycling behavior.
	*
	* @return the enumerated type which specifies cycling behavior
	*/
	@:overload @:public @:final public function getCycleMethod() : java.awt.MultipleGradientPaint.MultipleGradientPaint_CycleMethod;
	
	/**
	* Returns the enumerated type which specifies color space for
	* interpolation.
	*
	* @return the enumerated type which specifies color space for
	* interpolation
	*/
	@:overload @:public @:final public function getColorSpace() : java.awt.MultipleGradientPaint.MultipleGradientPaint_ColorSpaceType;
	
	/**
	* Returns a copy of the transform applied to the gradient.
	*
	* <p>
	* Note that if no transform is applied to the gradient
	* when it is created, the identity transform is used.
	*
	* @return a copy of the transform applied to the gradient
	*/
	@:overload @:public @:final public function getTransform() : java.awt.geom.AffineTransform;
	
	/**
	* Returns the transparency mode for this {@code Paint} object.
	*
	* @return {@code OPAQUE} if all colors used by this
	*         {@code Paint} object are opaque,
	*         {@code TRANSLUCENT} if at least one of the
	*         colors used by this {@code Paint} object is not opaque.
	* @see java.awt.Transparency
	*/
	@:overload @:public @:final public function getTransparency() : Int;
	
	/**
	* Creates and returns a {@link PaintContext} used to
	* generate the color pattern.
	* The arguments to this method convey additional information
	* about the rendering operation that may be
	* used or ignored on various implementations of the {@code Paint} interface.
	* A caller must pass non-{@code null} values for all of the arguments
	* except for the {@code ColorModel} argument which may be {@code null} to
	* indicate that no specific {@code ColorModel} type is preferred.
	* Implementations of the {@code Paint} interface are allowed to use or ignore
	* any of the arguments as makes sense for their function, and are
	* not constrained to use the specified {@code ColorModel} for the returned
	* {@code PaintContext}, even if it is not {@code null}.
	* Implementations are allowed to throw {@code NullPointerException} for
	* any {@code null} argument other than the {@code ColorModel} argument,
	* but are not required to do so.
	*
	* @param cm the preferred {@link ColorModel} which represents the most convenient
	*           format for the caller to receive the pixel data, or {@code null}
	*           if there is no preference.
	* @param deviceBounds the device space bounding box
	*                     of the graphics primitive being rendered.
	*                     Implementations of the {@code Paint} interface
	*                     are allowed to throw {@code NullPointerException}
	*                     for a {@code null} {@code deviceBounds}.
	* @param userBounds the user space bounding box
	*                   of the graphics primitive being rendered.
	*                     Implementations of the {@code Paint} interface
	*                     are allowed to throw {@code NullPointerException}
	*                     for a {@code null} {@code userBounds}.
	* @param xform the {@link AffineTransform} from user
	*              space into device space.
	*                     Implementations of the {@code Paint} interface
	*                     are allowed to throw {@code NullPointerException}
	*                     for a {@code null} {@code xform}.
	* @param hints the set of hints that the context object can use to
	*              choose between rendering alternatives.
	*                     Implementations of the {@code Paint} interface
	*                     are allowed to throw {@code NullPointerException}
	*                     for a {@code null} {@code hints}.
	* @return the {@code PaintContext} for
	*         generating color patterns.
	* @see PaintContext
	* @see ColorModel
	* @see Rectangle
	* @see Rectangle2D
	* @see AffineTransform
	* @see RenderingHints
	*/
	@:overload @:public public function createContext(cm : java.awt.image.ColorModel, deviceBounds : java.awt.Rectangle, userBounds : java.awt.geom.Rectangle2D, xform : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints) : java.awt.PaintContext;
	
	
}
/** The method to use when painting outside the gradient bounds.
* @since 1.6
*/
@:require(java6) @:native('java$awt$MultipleGradientPaint$CycleMethod') extern enum MultipleGradientPaint_CycleMethod
{
	/**
	* Use the terminal colors to fill the remaining area.
	*/
	NO_CYCLE;
	/**
	* Cycle the gradient colors start-to-end, end-to-start
	* to fill the remaining area.
	*/
	REFLECT;
	/**
	* Cycle the gradient colors start-to-end, start-to-end
	* to fill the remaining area.
	*/
	REPEAT;
	
}

/** The color space in which to perform the gradient interpolation.
* @since 1.6
*/
@:require(java6) @:native('java$awt$MultipleGradientPaint$ColorSpaceType') extern enum MultipleGradientPaint_ColorSpaceType
{
	/**
	* Indicates that the color interpolation should occur in sRGB space.
	*/
	SRGB;
	/**
	* Indicates that the color interpolation should occur in linearized
	* RGB space.
	*/
	LINEAR_RGB;
	
}

