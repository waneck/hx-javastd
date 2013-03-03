package java.awt.font;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
/*
* (C) Copyright Taligent, Inc. 1996 - 1997, All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998, All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by Taligent, Inc., a wholly-owned subsidiary
* of IBM. These materials are provided under terms of a License
* Agreement between Taligent and Sun. This technology is protected
* by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class GraphicAttribute
{
	/**
	* Aligns top of graphic to top of line.
	*/
	@:public @:static @:final public static var TOP_ALIGNMENT(default, null) : Int;
	
	/**
	* Aligns bottom of graphic to bottom of line.
	*/
	@:public @:static @:final public static var BOTTOM_ALIGNMENT(default, null) : Int;
	
	/**
	* Aligns origin of graphic to roman baseline of line.
	*/
	@:public @:static @:final public static var ROMAN_BASELINE(default, null) : Int;
	
	/**
	* Aligns origin of graphic to center baseline of line.
	*/
	@:public @:static @:final public static var CENTER_BASELINE(default, null) : Int;
	
	/**
	* Aligns origin of graphic to hanging baseline of line.
	*/
	@:public @:static @:final public static var HANGING_BASELINE(default, null) : Int;
	
	/**
	* Constructs a <code>GraphicAttribute</code>.
	* Subclasses use this to define the alignment of the graphic.
	* @param alignment an int representing one of the
	* <code>GraphicAttribute</code> alignment fields
	* @throws IllegalArgumentException if alignment is not one of the
	* five defined values.
	*/
	@:overload @:protected private function new(alignment : Int) : Void;
	
	/**
	* Returns the ascent of this <code>GraphicAttribute</code>.  A
	* graphic can be rendered above its ascent.
	* @return the ascent of this <code>GraphicAttribute</code>.
	* @see #getBounds()
	*/
	@:overload @:public @:abstract public function getAscent() : Single;
	
	/**
	* Returns the descent of this <code>GraphicAttribute</code>.  A
	* graphic can be rendered below its descent.
	* @return the descent of this <code>GraphicAttribute</code>.
	* @see #getBounds()
	*/
	@:overload @:public @:abstract public function getDescent() : Single;
	
	/**
	* Returns the advance of this <code>GraphicAttribute</code>.  The
	* <code>GraphicAttribute</code> object's advance is the distance
	* from the point at which the graphic is rendered and the point where
	* the next character or graphic is rendered.  A graphic can be
	* rendered beyond its advance
	* @return the advance of this <code>GraphicAttribute</code>.
	* @see #getBounds()
	*/
	@:overload @:public @:abstract public function getAdvance() : Single;
	
	/**
	* Returns a {@link Rectangle2D} that encloses all of the
	* bits drawn by this <code>GraphicAttribute</code> relative to the
	* rendering position.
	* A graphic may be rendered beyond its origin, ascent, descent,
	* or advance;  but if it is, this method's implementation must
	* indicate where the graphic is rendered.
	* Default bounds is the rectangle (0, -ascent, advance, ascent+descent).
	* @return a <code>Rectangle2D</code> that encloses all of the bits
	* rendered by this <code>GraphicAttribute</code>.
	*/
	@:overload @:public public function getBounds() : java.awt.geom.Rectangle2D;
	
	/**
	* Return a {@link java.awt.Shape} that represents the region that
	* this <code>GraphicAttribute</code> renders.  This is used when a
	* {@link TextLayout} is requested to return the outline of the text.
	* The (untransformed) shape must not extend outside the rectangular
	* bounds returned by <code>getBounds</code>.
	* The default implementation returns the rectangle returned by
	* {@link #getBounds}, transformed by the provided {@link AffineTransform}
	* if present.
	* @param tx an optional {@link AffineTransform} to apply to the
	*   outline of this <code>GraphicAttribute</code>. This can be null.
	* @return a <code>Shape</code> representing this graphic attribute,
	*   suitable for stroking or filling.
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getOutline(tx : java.awt.geom.AffineTransform) : java.awt.Shape;
	
	/**
	* Renders this <code>GraphicAttribute</code> at the specified
	* location.
	* @param graphics the {@link Graphics2D} into which to render the
	* graphic
	* @param x the user-space X coordinate where the graphic is rendered
	* @param y the user-space Y coordinate where the graphic is rendered
	*/
	@:overload @:public @:abstract public function draw(graphics : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	/**
	* Returns the alignment of this <code>GraphicAttribute</code>.
	* Alignment can be to a particular baseline, or to the absolute top
	* or bottom of a line.
	* @return the alignment of this <code>GraphicAttribute</code>.
	*/
	@:overload @:public @:final public function getAlignment() : Int;
	
	/**
	* Returns the justification information for this
	* <code>GraphicAttribute</code>.  Subclasses
	* can override this method to provide different justification
	* information.
	* @return a {@link GlyphJustificationInfo} object that contains the
	* justification information for this <code>GraphicAttribute</code>.
	*/
	@:overload @:public public function getJustificationInfo() : java.awt.font.GlyphJustificationInfo;
	
	
}
