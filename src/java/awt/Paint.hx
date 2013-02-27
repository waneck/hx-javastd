package java.awt;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface Paint extends java.awt.Transparency
{
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
	@:overload public function createContext(cm : java.awt.image.ColorModel, deviceBounds : java.awt.Rectangle, userBounds : java.awt.geom.Rectangle2D, xform : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints) : java.awt.PaintContext;
	
	
}