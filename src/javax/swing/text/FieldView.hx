package javax.swing.text;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Extends the multi-line plain text view to be suitable
* for a single-line editor view.  If the view is
* allocated extra space, the field must adjust for it.
* If the hosting component is a JTextField, this view
* will manage the ranges of the associated BoundedRangeModel
* and will adjust the horizontal allocation to match the
* current visibility settings of the JTextField.
*
* @author  Timothy Prinzing
* @see     View
*/
extern class FieldView extends javax.swing.text.PlainView
{
	/**
	* Constructs a new FieldView wrapped on an element.
	*
	* @param elem the element
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Fetches the font metrics associated with the component hosting
	* this view.
	*
	* @return the metrics
	*/
	@:overload private function getFontMetrics() : java.awt.FontMetrics;
	
	/**
	* Adjusts the allocation given to the view
	* to be a suitable allocation for a text field.
	* If the view has been allocated more than the
	* preferred span vertically, the allocation is
	* changed to be centered vertically.  Horizontally
	* the view is adjusted according to the horizontal
	* alignment property set on the associated JTextField
	* (if that is the type of the hosting component).
	*
	* @param a the allocation given to the view, which may need
	*  to be adjusted.
	* @return the allocation that the superclass should use.
	*/
	@:overload private function adjustAllocation(a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Renders using the given rendering surface and area on that surface.
	* The view may need to do layout and create child views to enable
	* itself to render into the given allocation.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	*
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the resizability of the view along the
	* given axis.  A value of 0 or less is not resizable.
	*
	* @param axis View.X_AXIS or View.Y_AXIS
	* @return the weight -> 1 for View.X_AXIS, else 0
	*/
	@:overload override public function getResizeWeight(axis : Int) : Int;
	
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
	* @param fx the X coordinate >= 0.0f
	* @param fy the Y coordinate >= 0.0f
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point in the view
	* @see View#viewToModel
	*/
	@:overload override public function viewToModel(fx : Single, fy : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Gives notification that something was inserted into the document
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#insertUpdate
	*/
	@:overload override public function insertUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#removeUpdate
	*/
	@:overload override public function removeUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	
}
