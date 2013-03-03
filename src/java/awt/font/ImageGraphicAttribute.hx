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
extern class ImageGraphicAttribute extends java.awt.font.GraphicAttribute
{
	/**
	* Constucts an <code>ImageGraphicAttribute</code> from the specified
	* {@link Image}.  The origin is at (0,&nbsp;0).
	* @param image the <code>Image</code> rendered by this
	* <code>ImageGraphicAttribute</code>.
	* This object keeps a reference to <code>image</code>.
	* @param alignment one of the alignments from this
	* <code>ImageGraphicAttribute</code>
	*/
	@:overload @:public public function new(image : java.awt.Image, alignment : Int) : Void;
	
	/**
	* Constructs an <code>ImageGraphicAttribute</code> from the specified
	* <code>Image</code>. The point
	* (<code>originX</code>,&nbsp;<code>originY</code>) in the
	* <code>Image</code> appears at the origin of the
	* <code>ImageGraphicAttribute</code> within the text.
	* @param image the <code>Image</code> rendered by this
	* <code>ImageGraphicAttribute</code>.
	* This object keeps a reference to <code>image</code>.
	* @param alignment one of the alignments from this
	* <code>ImageGraphicAttribute</code>
	* @param originX the X coordinate of the point within
	* the <code>Image</code> that appears at the origin of the
	* <code>ImageGraphicAttribute</code> in the text line.
	* @param originY the Y coordinate of the point within
	* the <code>Image</code> that appears at the origin of the
	* <code>ImageGraphicAttribute</code> in the text line.
	*/
	@:overload @:public public function new(image : java.awt.Image, alignment : Int, originX : Single, originY : Single) : Void;
	
	/**
	* Returns the ascent of this <code>ImageGraphicAttribute</code>.  The
	* ascent of an <code>ImageGraphicAttribute</code> is the distance
	* from the top of the image to the origin.
	* @return the ascent of this <code>ImageGraphicAttribute</code>.
	*/
	@:overload @:public override public function getAscent() : Single;
	
	/**
	* Returns the descent of this <code>ImageGraphicAttribute</code>.
	* The descent of an <code>ImageGraphicAttribute</code> is the
	* distance from the origin to the bottom of the image.
	* @return the descent of this <code>ImageGraphicAttribute</code>.
	*/
	@:overload @:public override public function getDescent() : Single;
	
	/**
	* Returns the advance of this <code>ImageGraphicAttribute</code>.
	* The advance of an <code>ImageGraphicAttribute</code> is the
	* distance from the origin to the right edge of the image.
	* @return the advance of this <code>ImageGraphicAttribute</code>.
	*/
	@:overload @:public override public function getAdvance() : Single;
	
	/**
	* Returns a {@link Rectangle2D} that encloses all of the
	* bits rendered by this <code>ImageGraphicAttribute</code>, relative
	* to the rendering position.  A graphic can be rendered beyond its
	* origin, ascent, descent, or advance;  but if it is, this
	* method's implementation must indicate where the graphic is rendered.
	* @return a <code>Rectangle2D</code> that encloses all of the bits
	* rendered by this <code>ImageGraphicAttribute</code>.
	*/
	@:overload @:public override public function getBounds() : java.awt.geom.Rectangle2D;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function draw(graphics : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	/**
	* Returns a hashcode for this <code>ImageGraphicAttribute</code>.
	* @return  a hash code value for this object.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares this <code>ImageGraphicAttribute</code> to the specified
	* {@link Object}.
	* @param rhs the <code>Object</code> to compare for equality
	* @return <code>true</code> if this
	* <code>ImageGraphicAttribute</code> equals <code>rhs</code>;
	* <code>false</code> otherwise.
	*/
	@:overload @:public public function equals(rhs : Dynamic) : Bool;
	
	/**
	* Compares this <code>ImageGraphicAttribute</code> to the specified
	* <code>ImageGraphicAttribute</code>.
	* @param rhs the <code>ImageGraphicAttribute</code> to compare for
	* equality
	* @return <code>true</code> if this
	* <code>ImageGraphicAttribute</code> equals <code>rhs</code>;
	* <code>false</code> otherwise.
	*/
	@:overload @:public public function equals(rhs : java.awt.font.ImageGraphicAttribute) : Bool;
	
	
}
