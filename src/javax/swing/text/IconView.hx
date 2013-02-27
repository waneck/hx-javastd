package javax.swing.text;
/*
* Copyright (c) 1997, 2000, Oracle and/or its affiliates. All rights reserved.
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
* Icon decorator that implements the view interface.  The
* entire element is used to represent the icon.  This acts
* as a gateway from the display-only View implementations to
* interactive lightweight icons (that is, it allows icons
* to be embedded into the View hierarchy.  The parent of the icon
* is the container that is handed out by the associated view
* factory.
*
* @author Timothy Prinzing
*/
extern class IconView extends javax.swing.text.View
{
	/**
	* Creates a new icon view that represents an element.
	*
	* @param elem the element to create a view for
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Paints the icon.
	* The real paint behavior occurs naturally from the association
	* that the icon has with its parent container (the same
	* container hosting this view), so this simply allows us to
	* position the icon properly relative to the view.  Since
	* the coordinate system for the view is simply the parent
	* containers, positioning the child icon is easy.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return  the span the view would like to be rendered into
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the desired alignment for this view along an
	* axis.  This is implemented to give the alignment to the
	* bottom of the icon along the y axis, and the default
	* along the x axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return the desired alignment >= 0.0f && <= 1.0f.  This should be
	*   a value between 0.0 and 1.0 where 0 indicates alignment at the
	*   origin and 1.0 indicates alignment to the full span
	*   away from the origin.  An alignment of 0.5 would be the
	*   center of the view.
	*/
	@:overload override public function getAlignment(axis : Int) : Single;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does not
	*   represent a valid location in the associated document
	* @see View#modelToView
	*/
	@:overload override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point of view >= 0
	* @see View#viewToModel
	*/
	@:overload override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	
}
