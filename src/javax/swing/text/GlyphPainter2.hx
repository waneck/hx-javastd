package javax.swing.text;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class GlyphPainter2 extends javax.swing.text.GlyphView.GlyphView_GlyphPainter
{
	/**
	* A class to perform rendering of the glyphs.
	* This can be implemented to be stateless, or
	* to hold some information as a cache to
	* facilitate faster rendering and model/view
	* translation.  At a minimum, the GlyphPainter
	* allows a View implementation to perform its
	* duties independent of a particular version
	* of JVM and selection of capabilities (i.e.
	* shaping for i18n, etc).
	* <p>
	* This implementation is intended for operation
	* under the JDK.  It uses the
	* java.awt.font.TextLayout class to do i18n capable
	* rendering.
	*
	* @author  Timothy Prinzing
	* @see GlyphView
	*/
	@:overload public function new(layout : java.awt.font.TextLayout) : Void;
	
	/**
	* Create a painter to use for the given GlyphView.
	*/
	@:overload override public function getPainter(v : javax.swing.text.GlyphView, p0 : Int, p1 : Int) : javax.swing.text.GlyphView.GlyphView_GlyphPainter;
	
	/**
	* Determine the span the glyphs given a start location
	* (for tab expansion).  This implementation assumes it
	* has no tabs (i.e. TextLayout doesn't deal with tab
	* expansion).
	*/
	@:overload override public function getSpan(v : javax.swing.text.GlyphView, p0 : Int, p1 : Int, e : javax.swing.text.TabExpander, x : Single) : Single;
	
	@:overload override public function getHeight(v : javax.swing.text.GlyphView) : Single;
	
	/**
	* Fetch the ascent above the baseline for the glyphs
	* corresponding to the given range in the model.
	*/
	@:overload override public function getAscent(v : javax.swing.text.GlyphView) : Single;
	
	/**
	* Fetch the descent below the baseline for the glyphs
	* corresponding to the given range in the model.
	*/
	@:overload override public function getDescent(v : javax.swing.text.GlyphView) : Single;
	
	/**
	* Paint the glyphs for the given view.  This is implemented
	* to only render if the Graphics is of type Graphics2D which
	* is required by TextLayout (and this should be the case if
	* running on the JDK).
	*/
	@:overload override public function paint(v : javax.swing.text.GlyphView, g : java.awt.Graphics, a : java.awt.Shape, p0 : Int, p1 : Int) : Void;
	
	@:overload override public function modelToView(v : javax.swing.text.GlyphView, pos : Int, bias : javax.swing.text.Position.Position_Bias, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param v the view containing the view coordinates
	* @param x the X coordinate
	* @param y the Y coordinate
	* @param a the allocated region to render into
	* @param biasReturn either <code>Position.Bias.Forward</code>
	*  or <code>Position.Bias.Backward</code> is returned as the
	*  zero-th element of this array
	* @return the location within the model that best represents the
	*  given point of view
	* @see View#viewToModel
	*/
	@:overload override public function viewToModel(v : javax.swing.text.GlyphView, x : Single, y : Single, a : java.awt.Shape, biasReturn : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Determines the model location that represents the
	* maximum advance that fits within the given span.
	* This could be used to break the given view.  The result
	* should be a location just shy of the given advance.  This
	* differs from viewToModel which returns the closest
	* position which might be proud of the maximum advance.
	*
	* @param v the view to find the model location to break at.
	* @param p0 the location in the model where the
	*  fragment should start it's representation >= 0.
	* @param pos the graphic location along the axis that the
	*  broken view would occupy >= 0.  This may be useful for
	*  things like tab calculations.
	* @param len specifies the distance into the view
	*  where a potential break is desired >= 0.
	* @return the maximum model location possible for a break.
	* @see View#breakView
	*/
	@:overload override public function getBoundedPosition(v : javax.swing.text.GlyphView, p0 : Int, x : Single, len : Single) : Int;
	
	/**
	* Provides a way to determine the next visually represented model
	* location that one might place a caret.  Some views may not be
	* visible, they might not be in the same order found in the model, or
	* they just might not allow access to some of the locations in the
	* model.
	*
	* @param v the view to use
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard.
	*  This may be SwingConstants.WEST, SwingConstants.EAST,
	*  SwingConstants.NORTH, or SwingConstants.SOUTH.
	* @return the location within the model that best represents the next
	*  location visual position.
	* @exception BadLocationException
	* @exception IllegalArgumentException for an invalid direction
	*/
	@:overload override public function getNextVisualPositionFrom(v : javax.swing.text.GlyphView, pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	
}
