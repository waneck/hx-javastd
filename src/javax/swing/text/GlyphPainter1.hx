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
* under the JDK1.1 API of the Java Platform.
* Since the JDK is backward compatible with
* JDK1.1 API, this class will also function on
* Java 2.  The JDK introduces improved
* API for rendering text however, so the GlyphPainter2
* is recommended for the DK.
*
* @author  Timothy Prinzing
* @see GlyphView
*/
@:internal extern class GlyphPainter1 extends javax.swing.text.GlyphView.GlyphView_GlyphPainter
{
	/**
	* Determine the span the glyphs given a start location
	* (for tab expansion).
	*/
	@:overload @:public override public function getSpan(v : javax.swing.text.GlyphView, p0 : Int, p1 : Int, e : javax.swing.text.TabExpander, x : Single) : Single;
	
	@:overload @:public override public function getHeight(v : javax.swing.text.GlyphView) : Single;
	
	/**
	* Fetches the ascent above the baseline for the glyphs
	* corresponding to the given range in the model.
	*/
	@:overload @:public override public function getAscent(v : javax.swing.text.GlyphView) : Single;
	
	/**
	* Fetches the descent below the baseline for the glyphs
	* corresponding to the given range in the model.
	*/
	@:overload @:public override public function getDescent(v : javax.swing.text.GlyphView) : Single;
	
	/**
	* Paints the glyphs representing the given range.
	*/
	@:overload @:public override public function paint(v : javax.swing.text.GlyphView, g : java.awt.Graphics, a : java.awt.Shape, p0 : Int, p1 : Int) : Void;
	
	@:overload @:public override public function modelToView(v : javax.swing.text.GlyphView, pos : Int, bias : javax.swing.text.Position.Position_Bias, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param v the view containing the view coordinates
	* @param x the X coordinate
	* @param y the Y coordinate
	* @param a the allocated region to render into
	* @param biasReturn always returns <code>Position.Bias.Forward</code>
	*   as the zero-th element of this array
	* @return the location within the model that best represents the
	*  given point in the view
	* @see View#viewToModel
	*/
	@:overload @:public override public function viewToModel(v : javax.swing.text.GlyphView, x : Single, y : Single, a : java.awt.Shape, biasReturn : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Determines the best location (in the model) to break
	* the given view.
	* This method attempts to break on a whitespace
	* location.  If a whitespace location can't be found, the
	* nearest character location is returned.
	*
	* @param v the view
	* @param p0 the location in the model where the
	*  fragment should start its representation >= 0
	* @param pos the graphic location along the axis that the
	*  broken view would occupy >= 0; this may be useful for
	*  things like tab calculations
	* @param len specifies the distance into the view
	*  where a potential break is desired >= 0
	* @return the model location desired for a break
	* @see View#breakView
	*/
	@:overload @:public override public function getBoundedPosition(v : javax.swing.text.GlyphView, p0 : Int, x : Single, len : Single) : Int;
	
	
}
