package javax.swing;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultRowSorter<M, I> extends javax.swing.RowSorter<M>
{
	/**
	* Creates an empty <code>DefaultRowSorter</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets the model wrapper providing the data that is being sorted and
	* filtered.
	*
	* @param modelWrapper the model wrapper responsible for providing the
	*         data that gets sorted and filtered
	* @throws IllegalArgumentException if {@code modelWrapper} is
	*         {@code null}
	*/
	@:overload @:final private function setModelWrapper(modelWrapper : DefaultRowSorter_ModelWrapper<M, I>) : Void;
	
	/**
	* Returns the model wrapper providing the data that is being sorted and
	* filtered.
	*
	* @return the model wrapper responsible for providing the data that
	*         gets sorted and filtered
	*/
	@:overload @:final private function getModelWrapper() : DefaultRowSorter_ModelWrapper<M, I>;
	
	/**
	* Returns the underlying model.
	*
	* @return the underlying model
	*/
	@:overload @:final override public function getModel() : M;
	
	/**
	* Sets whether or not the specified column is sortable.  The specified
	* value is only checked when <code>toggleSortOrder</code> is invoked.
	* It is still possible to sort on a column that has been marked as
	* unsortable by directly setting the sort keys.  The default is
	* true.
	*
	* @param column the column to enable or disable sorting on, in terms
	*        of the underlying model
	* @param sortable whether or not the specified column is sortable
	* @throws IndexOutOfBoundsException if <code>column</code> is outside
	*         the range of the model
	* @see #toggleSortOrder
	* @see #setSortKeys
	*/
	@:overload public function setSortable(column : Int, sortable : Bool) : Void;
	
	/**
	* Returns true if the specified column is sortable; otherwise, false.
	*
	* @param column the column to check sorting for, in terms of the
	*        underlying model
	* @return true if the column is sortable
	* @throws IndexOutOfBoundsException if column is outside
	*         the range of the underlying model
	*/
	@:overload public function isSortable(column : Int) : Bool;
	
	/**
	* Sets the sort keys. This creates a copy of the supplied
	* {@code List}; subsequent changes to the supplied
	* {@code List} do not effect this {@code DefaultRowSorter}.
	* If the sort keys have changed this triggers a sort.
	*
	* @param sortKeys the new <code>SortKeys</code>; <code>null</code>
	*        is a shorthand for specifying an empty list,
	*        indicating that the view should be unsorted
	* @throws IllegalArgumentException if any of the values in
	*         <code>sortKeys</code> are null or have a column index outside
	*         the range of the model
	*/
	@:overload override public function setSortKeys(sortKeys : java.util.List<SortKey>) : Void;
	
	/**
	* Returns the current sort keys.  This returns an unmodifiable
	* {@code non-null List}. If you need to change the sort keys,
	* make a copy of the returned {@code List}, mutate the copy
	* and invoke {@code setSortKeys} with the new list.
	*
	* @return the current sort order
	*/
	@:overload override public function getSortKeys() : java.util.List<SortKey>;
	
	/**
	* Sets the maximum number of sort keys.  The number of sort keys
	* determines how equal values are resolved when sorting.  For
	* example, assume a table row sorter is created and
	* <code>setMaxSortKeys(2)</code> is invoked on it. The user
	* clicks the header for column 1, causing the table rows to be
	* sorted based on the items in column 1.  Next, the user clicks
	* the header for column 2, causing the table to be sorted based
	* on the items in column 2; if any items in column 2 are equal,
	* then those particular rows are ordered based on the items in
	* column 1. In this case, we say that the rows are primarily
	* sorted on column 2, and secondarily on column 1.  If the user
	* then clicks the header for column 3, then the items are
	* primarily sorted on column 3 and secondarily sorted on column
	* 2.  Because the maximum number of sort keys has been set to 2
	* with <code>setMaxSortKeys</code>, column 1 no longer has an
	* effect on the order.
	* <p>
	* The maximum number of sort keys is enforced by
	* <code>toggleSortOrder</code>.  You can specify more sort
	* keys by invoking <code>setSortKeys</code> directly and they will
	* all be honored.  However if <code>toggleSortOrder</code> is subsequently
	* invoked the maximum number of sort keys will be enforced.
	* The default value is 3.
	*
	* @param max the maximum number of sort keys
	* @throws IllegalArgumentException if <code>max</code> &lt; 1
	*/
	@:overload public function setMaxSortKeys(max : Int) : Void;
	
	/**
	* Returns the maximum number of sort keys.
	*
	* @return the maximum number of sort keys
	*/
	@:overload public function getMaxSortKeys() : Int;
	
	/**
	* If true, specifies that a sort should happen when the underlying
	* model is updated (<code>rowsUpdated</code> is invoked).  For
	* example, if this is true and the user edits an entry the
	* location of that item in the view may change.  The default is
	* false.
	*
	* @param sortsOnUpdates whether or not to sort on update events
	*/
	@:overload public function setSortsOnUpdates(sortsOnUpdates : Bool) : Void;
	
	/**
	* Returns true if  a sort should happen when the underlying
	* model is updated; otherwise, returns false.
	*
	* @return whether or not to sort when the model is updated
	*/
	@:overload public function getSortsOnUpdates() : Bool;
	
	/**
	* Sets the filter that determines which rows, if any, should be
	* hidden from the view.  The filter is applied before sorting.  A value
	* of <code>null</code> indicates all values from the model should be
	* included.
	* <p>
	* <code>RowFilter</code>'s <code>include</code> method is passed an
	* <code>Entry</code> that wraps the underlying model.  The number
	* of columns in the <code>Entry</code> corresponds to the
	* number of columns in the <code>ModelWrapper</code>.  The identifier
	* comes from the <code>ModelWrapper</code> as well.
	* <p>
	* This method triggers a sort.
	*
	* @param filter the filter used to determine what entries should be
	*        included
	*/
	@:overload public function setRowFilter(filter : javax.swing.RowFilter<M, I>) : Void;
	
	/**
	* Returns the filter that determines which rows, if any, should
	* be hidden from view.
	*
	* @return the filter
	*/
	@:overload public function getRowFilter() : javax.swing.RowFilter<M, I>;
	
	/**
	* Reverses the sort order from ascending to descending (or
	* descending to ascending) if the specified column is already the
	* primary sorted column; otherwise, makes the specified column
	* the primary sorted column, with an ascending sort order.  If
	* the specified column is not sortable, this method has no
	* effect.
	*
	* @param column index of the column to make the primary sorted column,
	*        in terms of the underlying model
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @see #setSortable(int,boolean)
	* @see #setMaxSortKeys(int)
	*/
	@:overload override public function toggleSortOrder(column : Int) : Void;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function convertRowIndexToView(index : Int) : Int;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function convertRowIndexToModel(index : Int) : Int;
	
	/**
	* Sorts and filters the rows in the view based on the sort keys
	* of the columns currently being sorted and the filter, if any,
	* associated with this sorter.  An empty <code>sortKeys</code> list
	* indicates that the view should unsorted, the same as the model.
	*
	* @see #setRowFilter
	* @see #setSortKeys
	*/
	@:overload public function sort() : Void;
	
	/**
	* Returns whether or not to convert the value to a string before
	* doing comparisons when sorting.  If true
	* <code>ModelWrapper.getStringValueAt</code> will be used, otherwise
	* <code>ModelWrapper.getValueAt</code> will be used.  It is up to
	* subclasses, such as <code>TableRowSorter</code>, to honor this value
	* in their <code>ModelWrapper</code> implementation.
	*
	* @param column the index of the column to test, in terms of the
	*        underlying model
	* @throws IndexOutOfBoundsException if <code>column</code> is not valid
	*/
	@:overload private function useToString(column : Int) : Bool;
	
	/**
	* Sets the <code>Comparator</code> to use when sorting the specified
	* column.  This does not trigger a sort.  If you want to sort after
	* setting the comparator you need to explicitly invoke <code>sort</code>.
	*
	* @param column the index of the column the <code>Comparator</code> is
	*        to be used for, in terms of the underlying model
	* @param comparator the <code>Comparator</code> to use
	* @throws IndexOutOfBoundsException if <code>column</code> is outside
	*         the range of the underlying model
	*/
	@:overload public function setComparator(column : Int, comparator : java.util.Comparator<Dynamic>) : Void;
	
	/**
	* Returns the <code>Comparator</code> for the specified
	* column.  This will return <code>null</code> if a <code>Comparator</code>
	* has not been specified for the column.
	*
	* @param column the column to fetch the <code>Comparator</code> for, in
	*        terms of the underlying model
	* @return the <code>Comparator</code> for the specified column
	* @throws IndexOutOfBoundsException if column is outside
	*         the range of the underlying model
	*/
	@:overload public function getComparator(column : Int) : java.util.Comparator<Dynamic>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getViewRowCount() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function getModelRowCount() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function modelStructureChanged() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload override public function allRowsChanged() : Void;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function rowsInserted(firstRow : Int, endRow : Int) : Void;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function rowsDeleted(firstRow : Int, endRow : Int) : Void;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function rowsUpdated(firstRow : Int, endRow : Int) : Void;
	
	/**
	* {@inheritDoc}
	*
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function rowsUpdated(firstRow : Int, endRow : Int, column : Int) : Void;
	
	
}
/**
* <code>DefaultRowSorter.ModelWrapper</code> is responsible for providing
* the data that gets sorted by <code>DefaultRowSorter</code>.  You
* normally do not interact directly with <code>ModelWrapper</code>.
* Subclasses of <code>DefaultRowSorter</code> provide an
* implementation of <code>ModelWrapper</code> wrapping another model.
* For example,
* <code>TableRowSorter</code> provides a <code>ModelWrapper</code> that
* wraps a <code>TableModel</code>.
* <p>
* <code>ModelWrapper</code> makes a distinction between values as
* <code>Object</code>s and <code>String</code>s.  This allows
* implementations to provide a custom string
* converter to be used instead of invoking <code>toString</code> on the
* object.
*
* @param <M> the type of the underlying model
* @param <I> the identifier supplied to the filter
* @since 1.6
* @see RowFilter
* @see RowFilter.Entry
*/
@:require(java6) @:native('javax$swing$DefaultRowSorter$ModelWrapper') extern class DefaultRowSorter_ModelWrapper<M, I>
{
	/**
	* Creates a new <code>ModelWrapper</code>.
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns the underlying model that this <code>Model</code> is
	* wrapping.
	*
	* @return the underlying model
	*/
	@:overload @:abstract public function getModel() : M;
	
	/**
	* Returns the number of columns in the model.
	*
	* @return the number of columns in the model
	*/
	@:overload @:abstract public function getColumnCount() : Int;
	
	/**
	* Returns the number of rows in the model.
	*
	* @return the number of rows in the model
	*/
	@:overload @:abstract public function getRowCount() : Int;
	
	/**
	* Returns the value at the specified index.
	*
	* @param row the row index
	* @param column the column index
	* @return the value at the specified index
	* @throws IndexOutOfBoundsException if the indices are outside
	*         the range of the model
	*/
	@:overload @:abstract public function getValueAt(row : Int, column : Int) : Dynamic;
	
	/**
	* Returns the value as a <code>String</code> at the specified
	* index.  This implementation uses <code>toString</code> on
	* the result from <code>getValueAt</code> (making sure
	* to return an empty string for null values).  Subclasses that
	* override this method should never return null.
	*
	* @param row the row index
	* @param column the column index
	* @return the value at the specified index as a <code>String</code>
	* @throws IndexOutOfBoundsException if the indices are outside
	*         the range of the model
	*/
	@:overload public function getStringValueAt(row : Int, column : Int) : String;
	
	/**
	* Returns the identifier for the specified row.  The return value
	* of this is used as the identifier for the
	* <code>RowFilter.Entry</code> that is passed to the
	* <code>RowFilter</code>.
	*
	* @param row the row to return the identifier for, in terms of
	*            the underlying model
	* @return the identifier
	* @see RowFilter.Entry#getIdentifier
	*/
	@:overload @:abstract public function getIdentifier(row : Int) : I;
	
	
}
/**
* RowFilter.Entry implementation that delegates to the ModelWrapper.
* getFilterEntry(int) creates the single instance of this that is
* passed to the Filter.  Only call getFilterEntry(int) to get
* the instance.
*/
@:native('javax$swing$DefaultRowSorter$FilterEntry') @:internal extern class DefaultRowSorter_FilterEntry extends javax.swing.RowFilter.RowFilter_Entry<Dynamic, Dynamic>
{
	@:overload override public function getModel() : Dynamic;
	
	@:overload override public function getValueCount() : Int;
	
	@:overload override public function getValue(index : Int) : Dynamic;
	
	@:overload override public function getStringValue(index : Int) : String;
	
	@:overload override public function getIdentifier() : Dynamic;
	
	
}
/**
* Row is used to handle the actual sorting by way of Comparable.  It
* will use the sortKeys to do the actual comparison.
*/
@:native('javax$swing$DefaultRowSorter$Row') @:internal extern class DefaultRowSorter_Row implements java.lang.Comparable<DefaultRowSorter_Row>
{
	@:overload public function new(sorter : DefaultRowSorter<Dynamic, Dynamic>, index : Int) : Void;
	
	@:overload public function compareTo(o : DefaultRowSorter_Row) : Int;
	
	
}
