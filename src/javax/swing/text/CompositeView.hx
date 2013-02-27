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
extern class CompositeView extends javax.swing.text.View
{
	/**
	* Constructs a <code>CompositeView</code> for the given element.
	*
	* @param elem  the element this view is responsible for
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Loads all of the children to initialize the view.
	* This is called by the {@link #setParent}
	* method.  Subclasses can reimplement this to initialize
	* their child views in a different manner.  The default
	* implementation creates a child view for each
	* child element.
	*
	* @param f the view factory
	* @see #setParent
	*/
	@:overload private function loadChildren(f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Sets the parent of the view.
	* This is reimplemented to provide the superclass
	* behavior as well as calling the <code>loadChildren</code>
	* method if this view does not already have children.
	* The children should not be loaded in the
	* constructor because the act of setting the parent
	* may cause them to try to search up the hierarchy
	* (to get the hosting <code>Container</code> for example).
	* If this view has children (the view is being moved
	* from one place in the view hierarchy to another),
	* the <code>loadChildren</code> method will not be called.
	*
	* @param parent the parent of the view, <code>null</code> if none
	*/
	@:overload override public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Returns the number of child views of this view.
	*
	* @return the number of views >= 0
	* @see #getView
	*/
	@:overload override public function getViewCount() : Int;
	
	/**
	* Returns the n-th view in this container.
	*
	* @param n the number of the desired view, >= 0 && < getViewCount()
	* @return the view at index <code>n</code>
	*/
	@:overload override public function getView(n : Int) : javax.swing.text.View;
	
	/**
	* Replaces child views.  If there are no views to remove
	* this acts as an insert.  If there are no views to
	* add this acts as a remove.  Views being removed will
	* have the parent set to <code>null</code>,
	* and the internal reference to them removed so that they
	* may be garbage collected.
	*
	* @param offset the starting index into the child views to insert
	*   the new views; >= 0 and <= getViewCount
	* @param length the number of existing child views to remove;
	*   this should be a value >= 0 and <= (getViewCount() - offset)
	* @param views the child views to add; this value can be
	*  <code>null</code>
	*   to indicate no children are being added (useful to remove)
	*/
	@:overload override public function replace(offset : Int, length : Int, views : java.NativeArray<javax.swing.text.View>) : Void;
	
	/**
	* Fetches the allocation for the given child view to
	* render into. This enables finding out where various views
	* are located.
	*
	* @param index the index of the child, >= 0 && < getViewCount()
	* @param a  the allocation to this view
	* @return the allocation to the child
	*/
	@:overload override public function getChildAllocation(index : Int, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @param b a bias value of either <code>Position.Bias.Forward</code>
	*  or <code>Position.Bias.Backward</code>
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does
	*   not represent a valid location in the associated document
	* @see View#modelToView
	*/
	@:overload override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param p0 the position to convert >= 0
	* @param b0 the bias toward the previous character or the
	*  next character represented by p0, in case the
	*  position is a boundary of two views; either
	*  <code>Position.Bias.Forward</code> or
	*  <code>Position.Bias.Backward</code>
	* @param p1 the position to convert >= 0
	* @param b1 the bias toward the previous character or the
	*  next character represented by p1, in case the
	*  position is a boundary of two views
	* @param a the allocated region to render into
	* @return the bounding box of the given position is returned
	* @exception BadLocationException  if the given position does
	*   not represent a valid location in the associated document
	* @exception IllegalArgumentException for an invalid bias argument
	* @see View#viewToModel
	*/
	@:overload override public function modelToView(p0 : Int, b0 : javax.swing.text.Position.Position_Bias, p1 : Int, b1 : javax.swing.text.Position.Position_Bias, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param x   x coordinate of the view location to convert >= 0
	* @param y   y coordinate of the view location to convert >= 0
	* @param a the allocated region to render into
	* @param bias either <code>Position.Bias.Forward</code> or
	*  <code>Position.Bias.Backward</code>
	* @return the location within the model that best represents the
	*  given point in the view >= 0
	* @see View#viewToModel
	*/
	@:overload override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Provides a way to determine the next visually represented model
	* location that one might place a caret.  Some views may not be visible,
	* they might not be in the same order found in the model, or they just
	* might not allow access to some of the locations in the model.
	* This is a convenience method for {@link #getNextNorthSouthVisualPositionFrom}
	* and {@link #getNextEastWestVisualPositionFrom}.
	*
	* @param pos the position to convert >= 0
	* @param b a bias value of either <code>Position.Bias.Forward</code>
	*  or <code>Position.Bias.Backward</code>
	* @param a the allocated region to render into
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard;
	*  this may be one of the following:
	*  <ul>
	*  <li><code>SwingConstants.WEST</code>
	*  <li><code>SwingConstants.EAST</code>
	*  <li><code>SwingConstants.NORTH</code>
	*  <li><code>SwingConstants.SOUTH</code>
	*  </ul>
	* @param biasRet an array containing the bias that was checked
	* @return the location within the model that best represents the next
	*  location visual position
	* @exception BadLocationException
	* @exception IllegalArgumentException if <code>direction</code> is invalid
	*/
	@:overload override public function getNextVisualPositionFrom(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Returns the child view index representing the given
	* position in the model.  This is implemented to call the
	* <code>getViewIndexByPosition</code>
	* method for backward compatibility.
	*
	* @param pos the position >= 0
	* @return  index of the view representing the given position, or
	*   -1 if no view represents that position
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getViewIndex(pos : Int, b : javax.swing.text.Position.Position_Bias) : Int;
	
	/**
	* Tests whether a point lies before the rectangle range.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param alloc the rectangle
	* @return true if the point is before the specified range
	*/
	@:overload @:abstract private function isBefore(x : Int, y : Int, alloc : java.awt.Rectangle) : Bool;
	
	/**
	* Tests whether a point lies after the rectangle range.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param alloc the rectangle
	* @return true if the point is after the specified range
	*/
	@:overload @:abstract private function isAfter(x : Int, y : Int, alloc : java.awt.Rectangle) : Bool;
	
	/**
	* Fetches the child view at the given coordinates.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param alloc the parent's allocation on entry, which should
	*   be changed to the child's allocation on exit
	* @return the child view
	*/
	@:overload @:abstract private function getViewAtPoint(x : Int, y : Int, alloc : java.awt.Rectangle) : javax.swing.text.View;
	
	/**
	* Returns the allocation for a given child.
	*
	* @param index the index of the child, >= 0 && < getViewCount()
	* @param a  the allocation to the interior of the box on entry,
	*   and the allocation of the child view at the index on exit.
	*/
	@:overload @:abstract private function childAllocation(index : Int, a : java.awt.Rectangle) : Void;
	
	/**
	* Fetches the child view that represents the given position in
	* the model.  This is implemented to fetch the view in the case
	* where there is a child view for each child element.
	*
	* @param pos the position >= 0
	* @param a  the allocation to the interior of the box on entry,
	*   and the allocation of the view containing the position on exit
	* @return  the view representing the given position, or
	*   <code>null</code> if there isn't one
	*/
	@:overload private function getViewAtPosition(pos : Int, a : java.awt.Rectangle) : javax.swing.text.View;
	
	/**
	* Fetches the child view index representing the given position in
	* the model.  This is implemented to fetch the view in the case
	* where there is a child view for each child element.
	*
	* @param pos the position >= 0
	* @return  index of the view representing the given position, or
	*   -1 if no view represents that position
	*/
	@:overload private function getViewIndexAtPosition(pos : Int) : Int;
	
	/**
	* Translates the immutable allocation given to the view
	* to a mutable allocation that represents the interior
	* allocation (i.e. the bounds of the given allocation
	* with the top, left, bottom, and right insets removed.
	* It is expected that the returned value would be further
	* mutated to represent an allocation to a child view.
	* This is implemented to reuse an instance variable so
	* it avoids creating excessive Rectangles.  Typically
	* the result of calling this method would be fed to
	* the <code>childAllocation</code> method.
	*
	* @param a the allocation given to the view
	* @return the allocation that represents the inside of the
	*   view after the margins have all been removed; if the
	*   given allocation was <code>null</code>,
	*   the return value is <code>null</code>
	*/
	@:overload private function getInsideAllocation(a : java.awt.Shape) : java.awt.Rectangle;
	
	/**
	* Sets the insets from the paragraph attributes specified in
	* the given attributes.
	*
	* @param attr the attributes
	*/
	@:overload private function setParagraphInsets(attr : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Sets the insets for the view.
	*
	* @param top the top inset >= 0
	* @param left the left inset >= 0
	* @param bottom the bottom inset >= 0
	* @param right the right inset >= 0
	*/
	@:overload private function setInsets(top : java.StdTypes.Int16, left : java.StdTypes.Int16, bottom : java.StdTypes.Int16, right : java.StdTypes.Int16) : Void;
	
	/**
	* Gets the left inset.
	*
	* @return the inset >= 0
	*/
	@:overload private function getLeftInset() : java.StdTypes.Int16;
	
	/**
	* Gets the right inset.
	*
	* @return the inset >= 0
	*/
	@:overload private function getRightInset() : java.StdTypes.Int16;
	
	/**
	* Gets the top inset.
	*
	* @return the inset >= 0
	*/
	@:overload private function getTopInset() : java.StdTypes.Int16;
	
	/**
	* Gets the bottom inset.
	*
	* @return the inset >= 0
	*/
	@:overload private function getBottomInset() : java.StdTypes.Int16;
	
	/**
	* Returns the next visual position for the cursor, in either the
	* north or south direction.
	*
	* @param pos the position to convert >= 0
	* @param b a bias value of either <code>Position.Bias.Forward</code>
	*  or <code>Position.Bias.Backward</code>
	* @param a the allocated region to render into
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard;
	*  this may be one of the following:
	*  <ul>
	*  <li><code>SwingConstants.NORTH</code>
	*  <li><code>SwingConstants.SOUTH</code>
	*  </ul>
	* @param biasRet an array containing the bias that was checked
	* @return the location within the model that best represents the next
	*  north or south location
	* @exception BadLocationException
	* @exception IllegalArgumentException if <code>direction</code> is invalid
	* @see #getNextVisualPositionFrom
	*
	* @return the next position west of the passed in position
	*/
	@:overload private function getNextNorthSouthVisualPositionFrom(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Returns the next visual position for the cursor, in either the
	* east or west direction.
	*
	* @param pos the position to convert >= 0
	* @param b a bias value of either <code>Position.Bias.Forward</code>
	*  or <code>Position.Bias.Backward</code>
	* @param a the allocated region to render into
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard;
	*  this may be one of the following:
	*  <ul>
	*  <li><code>SwingConstants.WEST</code>
	*  <li><code>SwingConstants.EAST</code>
	*  </ul>
	* @param biasRet an array containing the bias that was checked
	* @return the location within the model that best represents the next
	*  west or east location
	* @exception BadLocationException
	* @exception IllegalArgumentException if <code>direction</code> is invalid
	* @see #getNextVisualPositionFrom
	*/
	@:overload private function getNextEastWestVisualPositionFrom(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Determines in which direction the next view lays.
	* Consider the <code>View</code> at index n. Typically the
	* <code>View</code>s are layed out from left to right,
	* so that the <code>View</code> to the EAST will be
	* at index n + 1, and the <code>View</code> to the WEST
	* will be at index n - 1. In certain situations,
	* such as with bidirectional text, it is possible
	* that the <code>View</code> to EAST is not at index n + 1,
	* but rather at index n - 1, or that the <code>View</code>
	* to the WEST is not at index n - 1, but index n + 1.
	* In this case this method would return true, indicating the
	* <code>View</code>s are layed out in descending order.
	* <p>
	* This unconditionally returns false, subclasses should override this
	* method if there is the possibility for laying <code>View</code>s in
	* descending order.
	*
	* @param position position into the model
	* @param bias either <code>Position.Bias.Forward</code> or
	*          <code>Position.Bias.Backward</code>
	* @return false
	*/
	@:overload private function flipEastAndWestAtEnds(position : Int, bias : javax.swing.text.Position.Position_Bias) : Bool;
	
	
}
