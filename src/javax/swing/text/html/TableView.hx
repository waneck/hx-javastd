package javax.swing.text.html;
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
/**
* HTML table view.
*
* @author  Timothy Prinzing
* @see     View
*/
/*public*/
@:internal extern class TableView extends javax.swing.text.BoxView implements javax.swing.text.ViewFactory
{
	/**
	* Constructs a TableView for the given element.
	*
	* @param elem the element that this view is responsible for
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Creates a new table row.
	*
	* @param elem an element
	* @return the row
	*/
	@:overload @:protected private function createTableRow(elem : javax.swing.text.Element) : javax.swing.text.html.TableView.TableView_RowView;
	
	/**
	* The number of columns in the table.
	*/
	@:overload @:public public function getColumnCount() : Int;
	
	/**
	* Fetches the span (width) of the given column.
	* This is used by the nested cells to query the
	* sizes of grid locations outside of themselves.
	*/
	@:overload @:public public function getColumnSpan(col : Int) : Int;
	
	/**
	* The number of rows in the table.
	*/
	@:overload @:public public function getRowCount() : Int;
	
	/**
	* Fetch the span of multiple rows.  This includes
	* the border area.
	*/
	@:overload @:public public function getMultiRowSpan(row0 : Int, row1 : Int) : Int;
	
	/**
	* Fetches the span (height) of the given row.
	*/
	@:overload @:public public function getRowSpan(row : Int) : Int;
	
	@:overload @:protected override private function getViewAtPoint(x : Int, y : Int, alloc : java.awt.Rectangle) : javax.swing.text.View;
	
	/**
	* Determines the number of columns occupied by
	* the table cell represented by given element.
	*/
	@:overload @:protected private function getColumnsOccupied(v : javax.swing.text.View) : Int;
	
	/**
	* Determines the number of rows occupied by
	* the table cell represented by given element.
	*/
	@:overload @:protected private function getRowsOccupied(v : javax.swing.text.View) : Int;
	
	@:overload @:protected private function invalidateGrid() : Void;
	
	@:overload @:protected private function getStyleSheet() : javax.swing.text.html.StyleSheet;
	
	/**
	* Update any cached values that come from attributes.
	*/
	@:overload @:protected private function setPropertiesFromAttributes() : Void;
	
	/**
	* Layout the columns to fit within the given target span.
	*
	* @param targetSpan the given span for total of all the table
	*  columns
	* @param reqs the requirements desired for each column.  This
	*  is the column maximum of the cells minimum, preferred, and
	*  maximum requested span
	* @param spans the return value of how much to allocated to
	*  each column
	* @param offsets the return value of the offset from the
	*  origin for each column
	* @return the offset from the origin and the span for each column
	*  in the offsets and spans parameters
	*/
	@:overload @:protected private function layoutColumns(targetSpan : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>, reqs : java.NativeArray<javax.swing.SizeRequirements>) : Void;
	
	/**
	* Calculate the requirements for the minor axis.  This is called by
	* the superclass whenever the requirements need to be updated (i.e.
	* a preferenceChanged was messaged through this view).
	* <p>
	* This is implemented to calculate the requirements as the sum of the
	* requirements of the columns and then adjust it if the
	* CSS width or height attribute is specified and applicable to
	* the axis.
	*/
	@:overload @:protected override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Calculate the requirements for the major axis.  This is called by
	* the superclass whenever the requirements need to be updated (i.e.
	* a preferenceChanged was messaged through this view).
	* <p>
	* This is implemented to provide the superclass behavior adjusted for
	* multi-row table cells.
	*/
	@:overload @:protected override private function calculateMajorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Perform layout for the minor axis of the box (i.e. the
	* axis orthoginal to the axis that it represents).  The results
	* of the layout should be placed in the given arrays which represent
	* the allocations to the children along the minor axis.  This
	* is called by the superclass whenever the layout needs to be
	* updated along the minor axis.
	* <p>
	* This is implemented to call the
	* <a href="#layoutColumns">layoutColumns</a> method, and then
	* forward to the superclass to actually carry out the layout
	* of the tables rows.
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the children
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views.  This is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view;  this is a return
	*  value and is filled in by the implementation of this method
	* @return the offset and span for each child view in the
	*  offsets and spans parameters
	*/
	@:overload @:protected override private function layoutMinorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Perform layout for the major axis of the box (i.e. the
	* axis that it represents).  The results
	* of the layout should be placed in the given arrays which represent
	* the allocations to the children along the minor axis.  This
	* is called by the superclass whenever the layout needs to be
	* updated along the minor axis.
	* <p>
	* This method is where the layout of the table rows within the
	* table takes place.  This method is implemented to call the use
	* the RowIterator and the CSS collapsing tile to layout
	* with border spacing and border collapsing capabilities.
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the children
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views; this is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view; this is a return
	*  value and is filled in by the implementation of this method
	* @return the offset and span for each child view in the
	*  offsets and spans parameters
	*/
	@:overload @:protected override private function layoutMajorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Fetches the child view that represents the given position in
	* the model.  This is implemented to walk through the children
	* looking for a range that contains the given position.  In this
	* view the children do not necessarily have a one to one mapping
	* with the child elements.
	*
	* @param pos  the search position >= 0
	* @param a  the allocation to the table on entry, and the
	*   allocation of the view containing the position on exit
	* @return  the view representing the given position, or
	*   null if there isn't one
	*/
	@:overload @:protected override private function getViewAtPosition(pos : Int, a : java.awt.Rectangle) : javax.swing.text.View;
	
	/**
	* Fetches the attributes to use when rendering.  This is
	* implemented to multiplex the attributes specified in the
	* model with a StyleSheet.
	*/
	@:overload @:public override public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Renders using the given rendering surface and area on that
	* surface.  This is implemented to delegate to the css box
	* painter to paint the border and background prior to the
	* interior.  The superclass culls rendering the children
	* that don't directly intersect the clip and the row may
	* have cells hanging from a row above in it.  The table
	* does not use the superclass rendering behavior and instead
	* paints all of the rows and lets the rows cull those
	* cells not intersecting the clip region.
	*
	* @param g the rendering surface to use
	* @param allocation the allocated region to render into
	* @see View#paint
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Establishes the parent view for this view.  This is
	* guaranteed to be called before any other methods if the
	* parent view is functioning properly.
	* <p>
	* This is implemented
	* to forward to the superclass as well as call the
	* <a href="#setPropertiesFromAttributes">setPropertiesFromAttributes</a>
	* method to set the paragraph properties from the css
	* attributes.  The call is made at this time to ensure
	* the ability to resolve upward through the parents
	* view attributes.
	*
	* @param parent the new parent, or null if the view is
	*  being removed from a parent it was previously added
	*  to
	*/
	@:overload @:public override public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Fetches the ViewFactory implementation that is feeding
	* the view hierarchy.
	* This replaces the ViewFactory with an implementation that
	* calls through to the createTableRow and createTableCell
	* methods.   If the element given to the factory isn't a
	* table row or cell, the request is delegated to the factory
	* produced by the superclass behavior.
	*
	* @return the factory, null if none
	*/
	@:overload @:public override public function getViewFactory() : javax.swing.text.ViewFactory;
	
	/**
	* Gives notification that something was inserted into
	* the document in a location that this view is responsible for.
	* This replaces the ViewFactory with an implementation that
	* calls through to the createTableRow and createTableCell
	* methods.   If the element given to the factory isn't a
	* table row or cell, the request is delegated to the factory
	* passed as an argument.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#insertUpdate
	*/
	@:overload @:public override public function insertUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	* This replaces the ViewFactory with an implementation that
	* calls through to the createTableRow and createTableCell
	* methods.   If the element given to the factory isn't a
	* table row or cell, the request is delegated to the factory
	* passed as an argument.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#removeUpdate
	*/
	@:overload @:public override public function removeUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	* This replaces the ViewFactory with an implementation that
	* calls through to the createTableRow and createTableCell
	* methods.   If the element given to the factory isn't a
	* table row or cell, the request is delegated to the factory
	* passed as an argument.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload @:public override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	@:overload @:protected override private function forwardUpdate(ec : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange, e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Change the child views.  This is implemented to
	* provide the superclass behavior and invalidate the
	* grid so that rows and columns will be recalculated.
	*/
	@:overload @:public override public function replace(offset : Int, length : Int, views : java.NativeArray<javax.swing.text.View>) : Void;
	
	/**
	* The table itself acts as a factory for the various
	* views that actually represent pieces of the table.
	* All other factory activity is delegated to the factory
	* returned by the parent of the table.
	*/
	@:overload @:public public function create(elem : javax.swing.text.Element) : javax.swing.text.View;
	
	
}
@:native('javax$swing$text$html$TableView$ColumnIterator') @:internal extern class TableView_ColumnIterator implements javax.swing.text.html.CSS.CSS_LayoutIterator
{
	/**
	* Set the layout arrays to use for holding layout results
	*/
	@:overload @:public public function setLayoutArrays(offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>, targetSpan : Int) : Void;
	
	@:overload @:public public function getCount() : Int;
	
	@:overload @:public public function setIndex(i : Int) : Void;
	
	@:overload @:public public function setOffset(offs : Int) : Void;
	
	@:overload @:public public function getOffset() : Int;
	
	@:overload @:public public function setSpan(span : Int) : Void;
	
	@:overload @:public public function getSpan() : Int;
	
	@:overload @:public public function getMinimumSpan(parentSpan : Single) : Single;
	
	@:overload @:public public function getPreferredSpan(parentSpan : Single) : Single;
	
	@:overload @:public public function getMaximumSpan(parentSpan : Single) : Single;
	
	@:overload @:public public function getBorderWidth() : Single;
	
	@:overload @:public public function getLeadingCollapseSpan() : Single;
	
	@:overload @:public public function getTrailingCollapseSpan() : Single;
	
	@:overload @:public public function getAdjustmentWeight() : Int;
	
	
}
@:native('javax$swing$text$html$TableView$RowIterator') @:internal extern class TableView_RowIterator implements javax.swing.text.html.CSS.CSS_LayoutIterator
{
	@:overload @:public public function setOffset(offs : Int) : Void;
	
	@:overload @:public public function getOffset() : Int;
	
	@:overload @:public public function setSpan(span : Int) : Void;
	
	@:overload @:public public function getSpan() : Int;
	
	@:overload @:public public function getCount() : Int;
	
	@:overload @:public public function setIndex(i : Int) : Void;
	
	@:overload @:public public function getMinimumSpan(parentSpan : Single) : Single;
	
	@:overload @:public public function getPreferredSpan(parentSpan : Single) : Single;
	
	@:overload @:public public function getMaximumSpan(parentSpan : Single) : Single;
	
	@:overload @:public public function getBorderWidth() : Single;
	
	@:overload @:public public function getLeadingCollapseSpan() : Single;
	
	@:overload @:public public function getTrailingCollapseSpan() : Single;
	
	@:overload @:public public function getAdjustmentWeight() : Int;
	
	
}
/**
* View of a row in a row-centric table.
*/
@:native('javax$swing$text$html$TableView$RowView') extern class TableView_RowView extends javax.swing.text.BoxView
{
	/**
	* Constructs a TableView for the given element.
	*
	* @param elem the element that this view is responsible for
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Fetches the attributes to use when rendering.  This is
	* implemented to multiplex the attributes specified in the
	* model with a StyleSheet.
	*/
	@:overload @:public override public function getAttributes() : javax.swing.text.AttributeSet;
	
	@:overload @:protected private function getStyleSheet() : javax.swing.text.html.StyleSheet;
	
	/**
	* This is called by a child to indicate its
	* preferred span has changed.  This is implemented to
	* execute the superclass behavior and well as try to
	* determine if a row with a multi-row cell hangs across
	* this row.  If a multi-row cell covers this row it also
	* needs to propagate a preferenceChanged so that it will
	* recalculate the multi-row cell.
	*
	* @param child the child view
	* @param width true if the width preference should change
	* @param height true if the height preference should change
	*/
	@:overload @:public override public function preferenceChanged(child : javax.swing.text.View, width : Bool, height : Bool) : Void;
	
	@:overload @:protected override private function calculateMajorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	@:overload @:public override public function getMinimumSpan(axis : Int) : Single;
	
	@:overload @:public override public function getMaximumSpan(axis : Int) : Single;
	
	@:overload @:public override public function getPreferredSpan(axis : Int) : Single;
	
	@:overload @:public override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
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
	@:overload @:public override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Change the child views.  This is implemented to
	* provide the superclass behavior and invalidate the
	* grid so that rows and columns will be recalculated.
	*/
	@:overload @:public override public function replace(offset : Int, length : Int, views : java.NativeArray<javax.swing.text.View>) : Void;
	
	/**
	* Calculate the height requirements of the table row.  The
	* requirements of multi-row cells are not considered for this
	* calculation.  The table itself will check and adjust the row
	* requirements for all the rows that have multi-row cells spanning
	* them.  This method updates the multi-row flag that indicates that
	* this row and rows below need additional consideration.
	*/
	@:overload @:protected override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Perform layout for the major axis of the box (i.e. the
	* axis that it represents).  The results of the layout should
	* be placed in the given arrays which represent the allocations
	* to the children along the major axis.
	* <p>
	* This is re-implemented to give each child the span of the column
	* width for the table, and to give cells that span multiple columns
	* the multi-column span.
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the children
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views; this is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view; this is a return
	*  value and is filled in by the implementation of this method
	* @return the offset and span for each child view in the
	*  offsets and spans parameters
	*/
	@:overload @:protected override private function layoutMajorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Perform layout for the minor axis of the box (i.e. the
	* axis orthoginal to the axis that it represents).  The results
	* of the layout should be placed in the given arrays which represent
	* the allocations to the children along the minor axis.  This
	* is called by the superclass whenever the layout needs to be
	* updated along the minor axis.
	* <p>
	* This is implemented to delegate to the superclass, then adjust
	* the span for any cell that spans multiple rows.
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the children
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views; this is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view; this is a return
	*  value and is filled in by the implementation of this method
	* @return the offset and span for each child view in the
	*  offsets and spans parameters
	*/
	@:overload @:protected override private function layoutMinorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Determines the resizability of the view along the
	* given axis.  A value of 0 or less is not resizable.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return the resize weight
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload @:public override public function getResizeWeight(axis : Int) : Int;
	
	/**
	* Fetches the child view that represents the given position in
	* the model.  This is implemented to walk through the children
	* looking for a range that contains the given position.  In this
	* view the children do not necessarily have a one to one mapping
	* with the child elements.
	*
	* @param pos  the search position >= 0
	* @param a  the allocation to the table on entry, and the
	*   allocation of the view containing the position on exit
	* @return  the view representing the given position, or
	*   null if there isn't one
	*/
	@:overload @:protected override private function getViewAtPosition(pos : Int, a : java.awt.Rectangle) : javax.swing.text.View;
	
	
}
/**
* Default view of an html table cell.  This needs to be moved
* somewhere else.
*/
@:native('javax$swing$text$html$TableView$CellView') @:internal extern class TableView_CellView extends javax.swing.text.html.BlockView
{
	/**
	* Constructs a TableCell for the given element.
	*
	* @param elem the element that this view is responsible for
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Perform layout for the major axis of the box (i.e. the
	* axis that it represents).  The results of the layout should
	* be placed in the given arrays which represent the allocations
	* to the children along the major axis.  This is called by the
	* superclass to recalculate the positions of the child views
	* when the layout might have changed.
	* <p>
	* This is implemented to delegate to the superclass to
	* tile the children.  If the target span is greater than
	* was needed, the offsets are adjusted to align the children
	* (i.e. position according to the html valign attribute).
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the children
	* @param axis the axis being layed out
	* @param offsets the offsets from the origin of the view for
	*  each of the child views; this is a return value and is
	*  filled in by the implementation of this method
	* @param spans the span of each child view; this is a return
	*  value and is filled in by the implementation of this method
	* @return the offset and span for each child view in the
	*  offsets and spans parameters
	*/
	@:overload @:protected override private function layoutMajorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Calculate the requirements needed along the major axis.
	* This is called by the superclass whenever the requirements
	* need to be updated (i.e. a preferenceChanged was messaged
	* through this view).
	* <p>
	* This is implemented to delegate to the superclass, but
	* indicate the maximum size is very large (i.e. the cell
	* is willing to expend to occupy the full height of the row).
	*
	* @param axis the axis being layed out.
	* @param r the requirements to fill in.  If null, a new one
	*  should be allocated.
	*/
	@:overload @:protected override private function calculateMajorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	@:overload @:protected override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	
}
