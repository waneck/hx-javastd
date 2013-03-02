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
extern class ShapeGraphicAttribute extends java.awt.font.GraphicAttribute
{
	/**
	* A key indicating the shape should be stroked with a 1-pixel wide stroke.
	*/
	public static var STROKE(default, null) : Bool;
	
	/**
	* A key indicating the shape should be filled.
	*/
	public static var FILL(default, null) : Bool;
	
	/**
	* Constructs a <code>ShapeGraphicAttribute</code> for the specified
	* {@link Shape}.
	* @param shape the <code>Shape</code> to render.  The
	* <code>Shape</code> is rendered with its origin at the origin of
	* this <code>ShapeGraphicAttribute</code> in the
	* host <code>TextLayout</code>.  This object maintains a reference to
	* <code>shape</code>.
	* @param alignment one of the alignments from this
	* <code>ShapeGraphicAttribute</code>.
	* @param stroke <code>true</code> if the <code>Shape</code> should be
	* stroked; <code>false</code> if the <code>Shape</code> should be
	* filled.
	*/
	@:overload public function new(shape : java.awt.Shape, alignment : Int, stroke : Bool) : Void;
	
	/**
	* Returns the ascent of this <code>ShapeGraphicAttribute</code>.  The
	* ascent of a <code>ShapeGraphicAttribute</code> is the positive
	* distance from the origin of its <code>Shape</code> to the top of
	* bounds of its <code>Shape</code>.
	* @return the ascent of this <code>ShapeGraphicAttribute</code>.
	*/
	@:overload override public function getAscent() : Single;
	
	/**
	* Returns the descent of this <code>ShapeGraphicAttribute</code>.
	* The descent of a <code>ShapeGraphicAttribute</code> is the distance
	* from the origin of its <code>Shape</code> to the bottom of the
	* bounds of its <code>Shape</code>.
	* @return the descent of this <code>ShapeGraphicAttribute</code>.
	*/
	@:overload override public function getDescent() : Single;
	
	/**
	* Returns the advance of this <code>ShapeGraphicAttribute</code>.
	* The advance of a <code>ShapeGraphicAttribute</code> is the distance
	* from the origin of its <code>Shape</code> to the right side of the
	* bounds of its <code>Shape</code>.
	* @return the advance of this <code>ShapeGraphicAttribute</code>.
	*/
	@:overload override public function getAdvance() : Single;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function draw(graphics : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	/**
	* Returns a {@link Rectangle2D} that encloses all of the
	* bits drawn by this <code>ShapeGraphicAttribute</code> relative to
	* the rendering position.  A graphic can be rendered beyond its
	* origin, ascent, descent, or advance;  but if it does, this method's
	* implementation should indicate where the graphic is rendered.
	* @return a <code>Rectangle2D</code> that encloses all of the bits
	* rendered by this <code>ShapeGraphicAttribute</code>.
	*/
	@:overload override public function getBounds() : java.awt.geom.Rectangle2D;
	
	/**
	* Return a {@link java.awt.Shape} that represents the region that
	* this <code>ShapeGraphicAttribute</code> renders.  This is used when a
	* {@link TextLayout} is requested to return the outline of the text.
	* The (untransformed) shape must not extend outside the rectangular
	* bounds returned by <code>getBounds</code>.
	* @param tx an optional {@link AffineTransform} to apply to the
	*   this <code>ShapeGraphicAttribute</code>. This can be null.
	* @return the <code>Shape</code> representing this graphic attribute,
	*   suitable for stroking or filling.
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getOutline(tx : java.awt.geom.AffineTransform) : java.awt.Shape;
	
	/**
	* Returns a hashcode for this <code>ShapeGraphicAttribute</code>.
	* @return  a hash code value for this
	* <code>ShapeGraphicAttribute</code>.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares this <code>ShapeGraphicAttribute</code> to the specified
	* <code>Object</code>.
	* @param rhs the <code>Object</code> to compare for equality
	* @return <code>true</code> if this
	* <code>ShapeGraphicAttribute</code> equals <code>rhs</code>;
	* <code>false</code> otherwise.
	*/
	@:overload public function equals(rhs : Dynamic) : Bool;
	
	/**
	* Compares this <code>ShapeGraphicAttribute</code> to the specified
	* <code>ShapeGraphicAttribute</code>.
	* @param rhs the <code>ShapeGraphicAttribute</code> to compare for
	* equality
	* @return <code>true</code> if this
	* <code>ShapeGraphicAttribute</code> equals <code>rhs</code>;
	* <code>false</code> otherwise.
	*/
	@:overload public function equals(rhs : java.awt.font.ShapeGraphicAttribute) : Bool;
	
	
}
