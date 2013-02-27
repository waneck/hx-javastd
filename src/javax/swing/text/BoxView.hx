package javax.swing.text;
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
extern class BoxView extends javax.swing.text.CompositeView
{
	/**
	* Constructs a <code>BoxView</code>.
	*
	* @param elem the element this view is responsible for
	* @param axis either <code>View.X_AXIS</code> or <code>View.Y_AXIS</code>
	*/
	@:overload public function new(elem : javax.swing.text.Element, axis : Int) : Void;
	
	/**
	* Fetches the tile axis property.  This is the axis along which
	* the child views are tiled.
	*
	* @return the major axis of the box, either
	*  <code>View.X_AXIS</code> or <code>View.Y_AXIS</code>
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAxis() : Int;
	
	/**
	* Sets the tile axis property.  This is the axis along which
	* the child views are tiled.
	*
	* @param axis either <code>View.X_AXIS</code> or <code>View.Y_AXIS</code>
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAxis(axis : Int) : Void;
	
	/**
	* Invalidates the layout along an axis.  This happens
	* automatically if the preferences have changed for
	* any of the child views.  In some cases the layout
	* may need to be recalculated when the preferences
	* have not changed.  The layout can be marked as
	* invalid by calling this method.  The layout will
	* be updated the next time the <code>setSize</code> method
	* is called on this view (typically in paint).
	*
	* @param axis either <code>View.X_AXIS</code> or <code>View.Y_AXIS</code>
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function layoutChanged(axis : Int) : Void;
	
	/**
	* Determines if the layout is valid along the given axis.
	*
	* @param axis either <code>View.X_AXIS</code> or <code>View.Y_AXIS</code>
	*
	* @since 1.4
	*/
	@:require(java4) @:overload private function isLayoutValid(axis : Int) : Bool;
	
	/**
	* Paints a child.  By default
	* that is all it does, but a subclass can use this to paint
	* things relative to the child.
	*
	* @param g the graphics context
	* @param alloc the allocated region to paint into
	* @param index the child index, >= 0 && < getViewCount()
	*/
	@:overload private function paintChild(g : java.awt.Graphics, alloc : java.awt.Rectangle, index : Int) : Void;
	
	/**
	* Invalidates the layout and resizes the cache of
	* requests/allocations.  The child allocations can still
	* be accessed for the old layout, but the new children
	* will have an offset and span of 0.
	*
	* @param index the starting index into the child views to insert
	*   the new views; this should be a value >= 0 and <= getViewCount
	* @param length the number of existing child views to remove;
	*   This should be a value >= 0 and <= (getViewCount() - offset)
	* @param elems the child views to add; this value can be
	*   <code>null</code>to indicate no children are being added
	*   (useful to remove)
	*/
	@:overload override public function replace(index : Int, length : Int, elems : java.NativeArray<javax.swing.text.View>) : Void;
	
	/**
	* Forwards the given <code>DocumentEvent</code> to the child views
	* that need to be notified of the change to the model.
	* If a child changed its requirements and the allocation
	* was valid prior to forwarding the portion of the box
	* from the starting child to the end of the box will
	* be repainted.
	*
	* @param ec changes to the element this view is responsible
	*  for (may be <code>null</code> if there were no changes)
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see #insertUpdate
	* @see #removeUpdate
	* @see #changedUpdate
	* @since 1.3
	*/
	@:require(java3) @:overload override private function forwardUpdate(ec : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange, e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* This is called by a child to indicate its
	* preferred span has changed.  This is implemented to
	* throw away cached layout information so that new
	* calculations will be done the next time the children
	* need an allocation.
	*
	* @param child the child view
	* @param width true if the width preference should change
	* @param height true if the height preference should change
	*/
	@:overload override public function preferenceChanged(child : javax.swing.text.View, width : Bool, height : Bool) : Void;
	
	/**
	* Gets the resize weight.  A value of 0 or less is not resizable.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*          <code>View.Y_AXIS</code>
	* @return the weight
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload override public function getResizeWeight(axis : Int) : Int;
	
	/**
	* Sets the size of the view.  This should cause
	* layout of the view if the view caches any layout
	* information.  This is implemented to call the
	* layout method with the sizes inside of the insets.
	*
	* @param width the width >= 0
	* @param height the height >= 0
	*/
	@:overload override public function setSize(width : Single, height : Single) : Void;
	
	/**
	* Renders the <code>BoxView</code> using the given
	* rendering surface and area
	* on that surface.  Only the children that intersect
	* the clip bounds of the given <code>Graphics</code>
	* will be rendered.
	*
	* @param g the rendering surface to use
	* @param allocation the allocated region to render into
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Fetches the allocation for the given child view.
	* This enables finding out where various views
	* are located.  This is implemented to return
	* <code>null</code> if the layout is invalid,
	* otherwise the superclass behavior is executed.
	*
	* @param index the index of the child, >= 0 && < getViewCount()
	* @param a  the allocation to this view
	* @return the allocation to the child; or <code>null</code>
	*          if <code>a</code> is <code>null</code>;
	*          or <code>null</code> if the layout is invalid
	*/
	@:overload override public function getChildAllocation(index : Int, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.  This makes
	* sure the allocation is valid before calling the superclass.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does
	*  not represent a valid location in the associated document
	* @see View#modelToView
	*/
	@:overload override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param x   x coordinate of the view location to convert >= 0
	* @param y   y coordinate of the view location to convert >= 0
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point in the view >= 0
	* @see View#viewToModel
	*/
	@:overload override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Determines the desired alignment for this view along an
	* axis.  This is implemented to give the total alignment
	* needed to position the children with the alignment points
	* lined up along the axis orthoginal to the axis that is
	* being tiled.  The axis being tiled will request to be
	* centered (i.e. 0.5f).
	*
	* @param axis may be either <code>View.X_AXIS</code>
	*   or <code>View.Y_AXIS</code>
	* @return the desired alignment >= 0.0f && <= 1.0f; this should
	*   be a value between 0.0 and 1.0 where 0 indicates alignment at the
	*   origin and 1.0 indicates alignment to the full span
	*   away from the origin; an alignment of 0.5 would be the
	*   center of the view
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload override public function getAlignment(axis : Int) : Single;
	
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
	* Are the allocations for the children still
	* valid?
	*
	* @return true if allocations still valid
	*/
	@:overload private function isAllocationValid() : Bool;
	
	/**
	* Determines if a point falls before an allocated region.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param innerAlloc the allocated region; this is the area
	*   inside of the insets
	* @return true if the point lies before the region else false
	*/
	@:overload override private function isBefore(x : Int, y : Int, innerAlloc : java.awt.Rectangle) : Bool;
	
	/**
	* Determines if a point falls after an allocated region.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param innerAlloc the allocated region; this is the area
	*   inside of the insets
	* @return true if the point lies after the region else false
	*/
	@:overload override private function isAfter(x : Int, y : Int, innerAlloc : java.awt.Rectangle) : Bool;
	
	/**
	* Fetches the child view at the given coordinates.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param alloc the parents inner allocation on entry, which should
	*   be changed to the childs allocation on exit
	* @return the view
	*/
	@:overload override private function getViewAtPoint(x : Int, y : Int, alloc : java.awt.Rectangle) : javax.swing.text.View;
	
	/**
	* Allocates a region for a child view.
	*
	* @param index the index of the child view to
	*   allocate, >= 0 && < getViewCount()
	* @param alloc the allocated region
	*/
	@:overload override private function childAllocation(index : Int, alloc : java.awt.Rectangle) : Void;
	
	/**
	* Perform layout on the box
	*
	* @param width the width (inside of the insets) >= 0
	* @param height the height (inside of the insets) >= 0
	*/
	@:overload private function layout(width : Int, height : Int) : Void;
	
	/**
	* Returns the current width of the box.  This is the width that
	* it was last allocated.
	* @return the current width of the box
	*/
	@:overload public function getWidth() : Int;
	
	/**
	* Returns the current height of the box.  This is the height that
	* it was last allocated.
	* @return the current height of the box
	*/
	@:overload public function getHeight() : Int;
	
	/**
	* Performs layout for the major axis of the box (i.e. the
	* axis that it represents). The results of the layout (the
	* offset and span for each children) are placed in the given
	* arrays which represent the allocations to the children
	* along the major axis.
	*
	* @param targetSpan the total span given to the view, which
	*  would be used to layout the children
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views; this is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view; this is a return
	*  value and is filled in by the implementation of this method
	*/
	@:overload private function layoutMajorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Performs layout for the minor axis of the box (i.e. the
	* axis orthoginal to the axis that it represents). The results
	* of the layout (the offset and span for each children) are
	* placed in the given arrays which represent the allocations to
	* the children along the minor axis.
	*
	* @param targetSpan the total span given to the view, which
	*  would be used to layout the children
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views; this is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view; this is a return
	*  value and is filled in by the implementation of this method
	*/
	@:overload private function layoutMinorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Calculates the size requirements for the major axis
	* <code>axis</code>.
	*
	* @param axis the axis being studied
	* @param r the <code>SizeRequirements</code> object;
	*          if <code>null</code> one will be created
	* @return the newly initialized <code>SizeRequirements</code> object
	* @see javax.swing.SizeRequirements
	*/
	@:overload private function calculateMajorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Calculates the size requirements for the minor axis
	* <code>axis</code>.
	*
	* @param axis the axis being studied
	* @param r the <code>SizeRequirements</code> object;
	*          if <code>null</code> one will be created
	* @return the newly initialized <code>SizeRequirements</code> object
	* @see javax.swing.SizeRequirements
	*/
	@:overload private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Computes the location and extent of each child view
	* in this <code>BoxView</code> given the <code>targetSpan</code>,
	* which is the width (or height) of the region we have to
	* work with.
	*
	* @param targetSpan the total span given to the view, which
	*  would be used to layout the children
	* @param axis the axis being studied, either
	*          <code>View.X_AXIS</code> or <code>View.Y_AXIS</code>
	* @param offsets an empty array filled by this method with
	*          values specifying the location  of each child view
	* @param spans  an empty array filled by this method with
	*          values specifying the extent of each child view
	*/
	@:overload private function baselineLayout(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Calculates the size requirements for this <code>BoxView</code>
	* by examining the size of each child view.
	*
	* @param axis the axis being studied
	* @param r the <code>SizeRequirements</code> object;
	*          if <code>null</code> one will be created
	* @return the newly initialized <code>SizeRequirements</code> object
	*/
	@:overload private function baselineRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Fetches the offset of a particular child's current layout.
	* @param axis the axis being studied
	* @param childIndex the index of the requested child
	* @return the offset (location) for the specified child
	*/
	@:overload private function getOffset(axis : Int, childIndex : Int) : Int;
	
	/**
	* Fetches the span of a particular childs current layout.
	* @param axis the axis being studied
	* @param childIndex the index of the requested child
	* @return the span (width or height) of the specified child
	*/
	@:overload private function getSpan(axis : Int, childIndex : Int) : Int;
	
	/**
	* Determines in which direction the next view lays.
	* Consider the View at index n. Typically the <code>View</code>s
	* are layed out from left to right, so that the <code>View</code>
	* to the EAST will be at index n + 1, and the <code>View</code>
	* to the WEST will be at index n - 1. In certain situations,
	* such as with bidirectional text, it is possible
	* that the <code>View</code> to EAST is not at index n + 1,
	* but rather at index n - 1, or that the <code>View</code>
	* to the WEST is not at index n - 1, but index n + 1.
	* In this case this method would return true,
	* indicating the <code>View</code>s are layed out in
	* descending order. Otherwise the method would return false
	* indicating the <code>View</code>s are layed out in ascending order.
	* <p>
	* If the receiver is laying its <code>View</code>s along the
	* <code>Y_AXIS</code>, this will will return the value from
	* invoking the same method on the <code>View</code>
	* responsible for rendering <code>position</code> and
	* <code>bias</code>. Otherwise this will return false.
	*
	* @param position position into the model
	* @param bias either <code>Position.Bias.Forward</code> or
	*          <code>Position.Bias.Backward</code>
	* @return true if the <code>View</code>s surrounding the
	*          <code>View</code> responding for rendering
	*          <code>position</code> and <code>bias</code>
	*          are layed out in descending order; otherwise false
	*/
	@:overload override private function flipEastAndWestAtEnds(position : Int, bias : javax.swing.text.Position.Position_Bias) : Bool;
	
	
}
