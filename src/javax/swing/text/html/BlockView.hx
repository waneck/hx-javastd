package javax.swing.text.html;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A view implementation to display a block (as a box)
* with CSS specifications.
*
* @author  Timothy Prinzing
*/
extern class BlockView extends javax.swing.text.BoxView
{
	/**
	* Creates a new view that represents an
	* html box.  This can be used for a number
	* of elements.
	*
	* @param elem the element to create a view for
	* @param axis either View.X_AXIS or View.Y_AXIS
	*/
	@:overload public function new(elem : javax.swing.text.Element, axis : Int) : Void;
	
	/**
	* Establishes the parent view for this view.  This is
	* guaranteed to be called before any other methods if the
	* parent view is functioning properly.
	* <p>
	* This is implemented
	* to forward to the superclass as well as call the
	* {@link #setPropertiesFromAttributes()}
	* method to set the paragraph properties from the css
	* attributes.  The call is made at this time to ensure
	* the ability to resolve upward through the parents
	* view attributes.
	*
	* @param parent the new parent, or null if the view is
	*  being removed from a parent it was previously added
	*  to
	*/
	@:overload override public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Calculate the requirements of the block along the major
	* axis (i.e. the axis along with it tiles).  This is implemented
	* to provide the superclass behavior and then adjust it if the
	* CSS width or height attribute is specified and applicable to
	* the axis.
	*/
	@:overload override private function calculateMajorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Calculate the requirements of the block along the minor
	* axis (i.e. the axis orthoginal to the axis along with it tiles).
	* This is implemented
	* to provide the superclass behavior and then adjust it if the
	* CSS width or height attribute is specified and applicable to
	* the axis.
	*/
	@:overload override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Performs layout for the minor axis of the box (i.e. the
	* axis orthoginal to the axis that it represents). The results
	* of the layout (the offset and span for each children) are
	* placed in the given arrays which represent the allocations to
	* the children along the minor axis.
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the childre.
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views; this is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view; this is a return
	*  value and is filled in by the implementation of this method
	*/
	@:overload override private function layoutMinorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Renders using the given rendering surface and area on that
	* surface.  This is implemented to delegate to the css box
	* painter to paint the border and background prior to the
	* interior.
	*
	* @param g the rendering surface to use
	* @param allocation the allocated region to render into
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Fetches the attributes to use when rendering.  This is
	* implemented to multiplex the attributes specified in the
	* model with a StyleSheet.
	*/
	@:overload override public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Gets the resize weight.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the weight
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload override public function getResizeWeight(axis : Int) : Int;
	
	/**
	* Gets the alignment.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return the alignment
	*/
	@:overload override public function getAlignment(axis : Int) : Single;
	
	@:overload override public function changedUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either <code>View.X_AXIS</code>
	*           or <code>View.Y_AXIS</code>
	* @return   the span the view would like to be rendered into >= 0;
	*           typically the view is told to render into the span
	*           that is returned, although there is no guarantee;
	*           the parent may choose to resize or break the view
	* @exception IllegalArgumentException for an invalid axis type
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an
	* axis.
	*
	* @param axis may be either <code>View.X_AXIS</code>
	*           or <code>View.Y_AXIS</code>
	* @return  the span the view would like to be rendered into >= 0;
	*           typically the view is told to render into the span
	*           that is returned, although there is no guarantee;
	*           the parent may choose to resize or break the view
	* @exception IllegalArgumentException for an invalid axis type
	*/
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an
	* axis.
	*
	* @param axis may be either <code>View.X_AXIS</code>
	*           or <code>View.Y_AXIS</code>
	* @return   the span the view would like to be rendered into >= 0;
	*           typically the view is told to render into the span
	*           that is returned, although there is no guarantee;
	*           the parent may choose to resize or break the view
	* @exception IllegalArgumentException for an invalid axis type
	*/
	@:overload override public function getMaximumSpan(axis : Int) : Single;
	
	/**
	* Update any cached values that come from attributes.
	*/
	@:overload private function setPropertiesFromAttributes() : Void;
	
	@:overload private function getStyleSheet() : javax.swing.text.html.StyleSheet;
	
	
}
