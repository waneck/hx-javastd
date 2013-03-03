package javax.swing.text;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class TableView extends javax.swing.text.BoxView
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
	@:overload @:protected private function createTableRow(elem : javax.swing.text.Element) : javax.swing.text.TableView.TableView_TableRow;
	
	/**
	* @deprecated Table cells can now be any arbitrary
	* View implementation and should be produced by the
	* ViewFactory rather than the table.
	*
	* @param elem an element
	* @return the cell
	*/
	@:overload @:protected private function createTableCell(elem : javax.swing.text.Element) : javax.swing.text.TableView.TableView_TableCell;
	
	@:overload @:protected override private function forwardUpdate(ec : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange, e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Change the child views.  This is implemented to
	* provide the superclass behavior and invalidate the
	* grid so that rows and columns will be recalculated.
	*/
	@:overload @:public override public function replace(offset : Int, length : Int, views : java.NativeArray<javax.swing.text.View>) : Void;
	
	/**
	* Lays out the columns to fit within the given target span.
	* Returns the results through {@code offsets} and {@code spans}.
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
	*/
	@:overload @:protected private function layoutColumns(targetSpan : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>, reqs : java.NativeArray<javax.swing.SizeRequirements>) : Void;
	
	/**
	* Perform layout for the minor axis of the box (i.e. the
	* axis orthoginal to the axis that it represents).  The results
	* of the layout should be placed in the given arrays which represent
	* the allocations to the children along the minor axis.  This
	* is called by the superclass whenever the layout needs to be
	* updated along the minor axis.
	* <p>
	* This is implemented to call the
	* {@link #layoutColumns layoutColumns} method, and then
	* forward to the superclass to actually carry out the layout
	* of the tables rows.
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the children.
	* @param axis the axis being layed out.
	* @param offsets the offsets from the origin of the view for
	*  each of the child views.  This is a return value and is
	*  filled in by the implementation of this method.
	* @param spans the span of each child view.  This is a return
	*  value and is filled in by the implementation of this method.
	*/
	@:overload @:protected override private function layoutMinorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	/**
	* Calculate the requirements for the minor axis.  This is called by
	* the superclass whenever the requirements need to be updated (i.e.
	* a preferenceChanged was messaged through this view).
	* <p>
	* This is implemented to calculate the requirements as the sum of the
	* requirements of the columns.
	*/
	@:overload @:protected override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
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
	*   <code>null</code> if there isn't one
	*/
	@:overload @:protected override private function getViewAtPosition(pos : Int, a : java.awt.Rectangle) : javax.swing.text.View;
	
	
}
/**
* View of a row in a row-centric table.
*/
@:native('javax$swing$text$TableView$TableRow') extern class TableView_TableRow extends javax.swing.text.BoxView
{
	/**
	* Constructs a TableView for the given element.
	*
	* @param elem the element that this view is responsible for
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Change the child views.  This is implemented to
	* provide the superclass behavior and invalidate the
	* grid so that rows and columns will be recalculated.
	*/
	@:overload @:public override public function replace(offset : Int, length : Int, views : java.NativeArray<javax.swing.text.View>) : Void;
	
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
	*  whould be used to layout the children.
	* @param axis the axis being layed out.
	* @param offsets the offsets from the origin of the view for
	*  each of the child views.  This is a return value and is
	*  filled in by the implementation of this method.
	* @param spans the span of each child view.  This is a return
	*  value and is filled in by the implementation of this method.
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
	*  whould be used to layout the children.
	* @param axis the axis being layed out.
	* @param offsets the offsets from the origin of the view for
	*  each of the child views.  This is a return value and is
	*  filled in by the implementation of this method.
	* @param spans the span of each child view.  This is a return
	*  value and is filled in by the implementation of this method.
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
	*   <code>null</code> if there isn't one
	*/
	@:overload @:protected override private function getViewAtPosition(pos : Int, a : java.awt.Rectangle) : javax.swing.text.View;
	
	
}
/**
* @deprecated  A table cell can now be any View implementation.
*/
@:native('javax$swing$text$TableView$TableCell') extern class TableView_TableCell extends javax.swing.text.BoxView implements javax.swing.text.TableView.TableView_GridCell
{
	/**
	* Constructs a TableCell for the given element.
	*
	* @param elem the element that this view is responsible for
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Gets the number of columns this cell spans (e.g. the
	* grid width).
	*
	* @return the number of columns
	*/
	@:overload @:public public function getColumnCount() : Int;
	
	/**
	* Gets the number of rows this cell spans (that is, the
	* grid height).
	*
	* @return the number of rows
	*/
	@:overload @:public public function getRowCount() : Int;
	
	/**
	* Sets the grid location.
	*
	* @param row the row >= 0
	* @param col the column >= 0
	*/
	@:overload @:public public function setGridLocation(row : Int, col : Int) : Void;
	
	/**
	* Gets the row of the grid location
	*/
	@:overload @:public public function getGridRow() : Int;
	
	/**
	* Gets the column of the grid location
	*/
	@:overload @:public public function getGridColumn() : Int;
	
	
}
/**
* <em>
* THIS IS NO LONGER USED, AND WILL BE REMOVED IN THE
* NEXT RELEASE.  THE JCK SIGNATURE TEST THINKS THIS INTERFACE
* SHOULD EXIST
* </em>
*/
@:native('javax$swing$text$TableView$GridCell') @:internal extern interface TableView_GridCell
{
	/**
	* Sets the grid location.
	*
	* @param row the row >= 0
	* @param col the column >= 0
	*/
	@:overload @:public public function setGridLocation(row : Int, col : Int) : Void;
	
	/**
	* Gets the row of the grid location
	*/
	@:overload @:public public function getGridRow() : Int;
	
	/**
	* Gets the column of the grid location
	*/
	@:overload @:public public function getGridColumn() : Int;
	
	/**
	* Gets the number of columns this cell spans (e.g. the
	* grid width).
	*
	* @return the number of columns
	*/
	@:overload @:public public function getColumnCount() : Int;
	
	/**
	* Gets the number of rows this cell spans (that is, the
	* grid height).
	*
	* @return the number of rows
	*/
	@:overload @:public public function getRowCount() : Int;
	
	
}
