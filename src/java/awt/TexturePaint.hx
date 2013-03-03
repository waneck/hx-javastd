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
extern class TexturePaint implements java.awt.Paint
{
	/**
	* Constructs a <code>TexturePaint</code> object.
	* @param txtr the <code>BufferedImage</code> object with the texture
	* used for painting
	* @param anchor the <code>Rectangle2D</code> in user space used to
	* anchor and replicate the texture
	*/
	@:overload @:public public function new(txtr : java.awt.image.BufferedImage, anchor : java.awt.geom.Rectangle2D) : Void;
	
	/**
	* Returns the <code>BufferedImage</code> texture used to
	* fill the shapes.
	* @return a <code>BufferedImage</code>.
	*/
	@:overload @:public public function getImage() : java.awt.image.BufferedImage;
	
	/**
	* Returns a copy of the anchor rectangle which positions and
	* sizes the textured image.
	* @return the <code>Rectangle2D</code> used to anchor and
	* size this <code>TexturePaint</code>.
	*/
	@:overload @:public public function getAnchorRect() : java.awt.geom.Rectangle2D;
	
	/**
	* Creates and returns a {@link PaintContext} used to
	* generate a tiled image pattern.
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
	@:overload @:public public function createContext(cm : java.awt.image.ColorModel, deviceBounds : java.awt.Rectangle, userBounds : java.awt.geom.Rectangle2D, xform : java.awt.geom.AffineTransform, hints : java.awt.RenderingHints) : java.awt.PaintContext;
	
	/**
	* Returns the transparency mode for this <code>TexturePaint</code>.
	* @return the transparency mode for this <code>TexturePaint</code>
	* as an integer value.
	* @see Transparency
	*/
	@:overload @:public public function getTransparency() : Int;
	
	
}
