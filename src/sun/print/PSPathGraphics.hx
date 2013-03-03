package sun.print;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PSPathGraphics extends sun.print.PathGraphics
{
	/**
	* Creates a new <code>Graphics</code> object that is
	* a copy of this <code>Graphics</code> object.
	* @return     a new graphics context that is a copy of
	*                       this graphics context.
	* @since      JDK1.0
	*/
	@:require(java0) @:overload @:public override public function create() : java.awt.Graphics;
	
	/**
	* Override the inherited implementation of fill
	* so that we can generate PostScript in user space
	* rather than device space.
	*/
	@:overload @:public override public function fill(s : java.awt.Shape, color : java.awt.Color) : Void;
	
	/**
	* Draws the text given by the specified string, using this
	* graphics context's current font and color. The baseline of the
	* first character is at position (<i>x</i>,&nbsp;<i>y</i>) in this
	* graphics context's coordinate system.
	* @param       str      the string to be drawn.
	* @param       x        the <i>x</i> coordinate.
	* @param       y        the <i>y</i> coordinate.
	* @see         java.awt.Graphics#drawBytes
	* @see         java.awt.Graphics#drawChars
	* @since       JDK1.0
	*/
	@:require(java0) @:overload @:public override public function drawString(str : String, x : Int, y : Int) : Void;
	
	/**
	* Renders the text specified by the specified <code>String</code>,
	* using the current <code>Font</code> and <code>Paint</code> attributes
	* in the <code>Graphics2D</code> context.
	* The baseline of the first character is at position
	* (<i>x</i>,&nbsp;<i>y</i>) in the User Space.
	* The rendering attributes applied include the <code>Clip</code>,
	* <code>Transform</code>, <code>Paint</code>, <code>Font</code> and
	* <code>Composite</code> attributes. For characters in script systems
	* such as Hebrew and Arabic, the glyphs can be rendered from right to
	* left, in which case the coordinate supplied is the location of the
	* leftmost character on the baseline.
	* @param s the <code>String</code> to be rendered
	* @param x,&nbsp;y the coordinates where the <code>String</code>
	* should be rendered
	* @see #setPaint
	* @see java.awt.Graphics#setColor
	* @see java.awt.Graphics#setFont
	* @see #setTransform
	* @see #setComposite
	* @see #setClip
	*/
	@:overload @:public override public function drawString(str : String, x : Single, y : Single) : Void;
	
	@:overload @:protected override private function canDrawStringToWidth() : Bool;
	
	@:overload @:protected override private function platformFontCount(font : java.awt.Font, str : String) : Int;
	
	@:overload @:protected override private function drawString(str : String, x : Single, y : Single, font : java.awt.Font, frc : java.awt.font.FontRenderContext, w : Single) : Void;
	
	/**
	* The various <code>drawImage()</code> methods for
	* <code>WPathGraphics</code> are all decomposed
	* into an invocation of <code>drawImageToPlatform</code>.
	* The portion of the passed in image defined by
	* <code>srcX, srcY, srcWidth, and srcHeight</code>
	* is transformed by the supplied AffineTransform and
	* drawn using PS to the printer context.
	*
	* @param   img     The image to be drawn.
	*                  This method does nothing if <code>img</code> is null.
	* @param   xform   Used to tranform the image before drawing.
	*                  This can be null.
	* @param   bgcolor This color is drawn where the image has transparent
	*                  pixels. If this parameter is null then the
	*                  pixels already in the destination should show
	*                  through.
	* @param   srcX    With srcY this defines the upper-left corner
	*                  of the portion of the image to be drawn.
	*
	* @param   srcY    With srcX this defines the upper-left corner
	*                  of the portion of the image to be drawn.
	* @param   srcWidth    The width of the portion of the image to
	*                      be drawn.
	* @param   srcHeight   The height of the portion of the image to
	*                      be drawn.
	* @param   handlingTransparency if being recursively called to
	*                    print opaque region of transparent image
	*/
	@:overload @:protected override private function drawImageToPlatform(image : java.awt.Image, xform : java.awt.geom.AffineTransform, bgcolor : java.awt.Color, srcX : Int, srcY : Int, srcWidth : Int, srcHeight : Int, handlingTransparency : Bool) : Bool;
	
	/** Redraw a rectanglular area using a proxy graphics
	* To do this we need to know the rectangular area to redraw and
	* the transform & clip in effect at the time of the original drawImage
	*
	*/
	@:overload @:public override public function redrawRegion(region : java.awt.geom.Rectangle2D, scaleX : Float, scaleY : Float, savedClip : java.awt.Shape, savedTransform : java.awt.geom.AffineTransform) : Void;
	
	/*
	* Fill the path defined by <code>pathIter</code>
	* with the specified color.
	* The path is provided in current user space.
	*/
	@:overload @:protected override private function deviceFill(pathIter : java.awt.geom.PathIterator, color : java.awt.Color) : Void;
	
	/*
	* Draw the bounding rectangle using path by calling draw()
	* function and passing a rectangle shape.
	*/
	@:overload @:protected override private function deviceFrameRect(x : Int, y : Int, width : Int, height : Int, color : java.awt.Color) : Void;
	
	/*
	* Draw a line using path by calling draw() function and passing
	* a line shape.
	*/
	@:overload @:protected override private function deviceDrawLine(xBegin : Int, yBegin : Int, xEnd : Int, yEnd : Int, color : java.awt.Color) : Void;
	
	/*
	* Fill the rectangle with the specified color by calling fill().
	*/
	@:overload @:protected override private function deviceFillRect(x : Int, y : Int, width : Int, height : Int, color : java.awt.Color) : Void;
	
	/*
	* This method should not be invoked by PSPathGraphics.
	* FIX: Rework PathGraphics so that this method is
	* not an abstract method there.
	*/
	@:overload @:protected override private function deviceClip(pathIter : java.awt.geom.PathIterator) : Void;
	
	
}
