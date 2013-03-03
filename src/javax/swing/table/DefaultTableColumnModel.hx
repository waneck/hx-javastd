package javax.swing.table;
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
extern class DefaultTableColumnModel implements javax.swing.table.TableColumnModel implements java.beans.PropertyChangeListener implements javax.swing.event.ListSelectionListener implements java.io.Serializable
{
	/** Array of TableColumn objects in this model */
	@:protected private var tableColumns : java.util.Vector<javax.swing.table.TableColumn>;
	
	/** Model for keeping track of column selections */
	@:protected private var selectionModel : javax.swing.ListSelectionModel;
	
	/** Width margin between each column */
	@:protected private var columnMargin : Int;
	
	/** List of TableColumnModelListener */
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	/** Change event (only one needed) */
	@:transient @:protected private var changeEvent : javax.swing.event.ChangeEvent;
	
	/** Column selection allowed in this column model */
	@:protected private var columnSelectionAllowed : Bool;
	
	/** A local cache of the combined width of all columns */
	@:protected private var totalColumnWidth : Int;
	
	/**
	* Creates a default table column model.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	*  Appends <code>aColumn</code> to the end of the
	*  <code>tableColumns</code> array.
	*  This method also posts the <code>columnAdded</code>
	*  event to its listeners.
	*
	* @param   aColumn         the <code>TableColumn</code> to be added
	* @exception IllegalArgumentException      if <code>aColumn</code> is
	*                          <code>null</code>
	* @see     #removeColumn
	*/
	@:overload @:public public function addColumn(aColumn : javax.swing.table.TableColumn) : Void;
	
	/**
	*  Deletes the <code>column</code> from the
	*  <code>tableColumns</code> array.  This method will do nothing if
	*  <code>column</code> is not in the table's columns list.
	*  <code>tile</code> is called
	*  to resize both the header and table views.
	*  This method also posts a <code>columnRemoved</code>
	*  event to its listeners.
	*
	* @param   column          the <code>TableColumn</code> to be removed
	* @see     #addColumn
	*/
	@:overload @:public public function removeColumn(column : javax.swing.table.TableColumn) : Void;
	
	/**
	* Moves the column and heading at <code>columnIndex</code> to
	* <code>newIndex</code>.  The old column at <code>columnIndex</code>
	* will now be found at <code>newIndex</code>.  The column
	* that used to be at <code>newIndex</code> is shifted
	* left or right to make room.  This will not move any columns if
	* <code>columnIndex</code> equals <code>newIndex</code>.  This method
	* also posts a <code>columnMoved</code> event to its listeners.
	*
	* @param   columnIndex                     the index of column to be moved
	* @param   newIndex                        new index to move the column
	* @exception IllegalArgumentException      if <code>column</code> or
	*                                          <code>newIndex</code>
	*                                          are not in the valid range
	*/
	@:overload @:public public function moveColumn(columnIndex : Int, newIndex : Int) : Void;
	
	/**
	* Sets the column margin to <code>newMargin</code>.  This method
	* also posts a <code>columnMarginChanged</code> event to its
	* listeners.
	*
	* @param   newMargin               the new margin width, in pixels
	* @see     #getColumnMargin
	* @see     #getTotalColumnWidth
	*/
	@:overload @:public public function setColumnMargin(newMargin : Int) : Void;
	
	/**
	* Returns the number of columns in the <code>tableColumns</code> array.
	*
	* @return  the number of columns in the <code>tableColumns</code> array
	* @see     #getColumns
	*/
	@:overload @:public public function getColumnCount() : Int;
	
	/**
	* Returns an <code>Enumeration</code> of all the columns in the model.
	* @return an <code>Enumeration</code> of the columns in the model
	*/
	@:overload @:public public function getColumns() : java.util.Enumeration<javax.swing.table.TableColumn>;
	
	/**
	* Returns the index of the first column in the <code>tableColumns</code>
	* array whose identifier is equal to <code>identifier</code>,
	* when compared using <code>equals</code>.
	*
	* @param           identifier              the identifier object
	* @return          the index of the first column in the
	*                  <code>tableColumns</code> array whose identifier
	*                  is equal to <code>identifier</code>
	* @exception       IllegalArgumentException  if <code>identifier</code>
	*                          is <code>null</code>, or if no
	*                          <code>TableColumn</code> has this
	*                          <code>identifier</code>
	* @see             #getColumn
	*/
	@:overload @:public public function getColumnIndex(identifier : Dynamic) : Int;
	
	/**
	* Returns the <code>TableColumn</code> object for the column
	* at <code>columnIndex</code>.
	*
	* @param   columnIndex     the index of the column desired
	* @return  the <code>TableColumn</code> object for the column
	*                          at <code>columnIndex</code>
	*/
	@:overload @:public public function getColumn(columnIndex : Int) : javax.swing.table.TableColumn;
	
	/**
	* Returns the width margin for <code>TableColumn</code>.
	* The default <code>columnMargin</code> is 1.
	*
	* @return  the maximum width for the <code>TableColumn</code>
	* @see     #setColumnMargin
	*/
	@:overload @:public public function getColumnMargin() : Int;
	
	/**
	* Returns the index of the column that lies at position <code>x</code>,
	* or -1 if no column covers this point.
	*
	* In keeping with Swing's separable model architecture, a
	* TableColumnModel does not know how the table columns actually appear on
	* screen.  The visual presentation of the columns is the responsibility
	* of the view/controller object using this model (typically JTable).  The
	* view/controller need not display the columns sequentially from left to
	* right.  For example, columns could be displayed from right to left to
	* accomodate a locale preference or some columns might be hidden at the
	* request of the user.  Because the model does not know how the columns
	* are laid out on screen, the given <code>xPosition</code> should not be
	* considered to be a coordinate in 2D graphics space.  Instead, it should
	* be considered to be a width from the start of the first column in the
	* model.  If the column index for a given X coordinate in 2D space is
	* required, <code>JTable.columnAtPoint</code> can be used instead.
	*
	* @param  x  the horizontal location of interest
	* @return  the index of the column or -1 if no column is found
	* @see javax.swing.JTable#columnAtPoint
	*/
	@:overload @:public public function getColumnIndexAtX(x : Int) : Int;
	
	/**
	* Returns the total combined width of all columns.
	* @return the <code>totalColumnWidth</code> property
	*/
	@:overload @:public public function getTotalColumnWidth() : Int;
	
	/**
	*  Sets the selection model for this <code>TableColumnModel</code>
	*  to <code>newModel</code>
	*  and registers for listener notifications from the new selection
	*  model.  If <code>newModel</code> is <code>null</code>,
	*  an exception is thrown.
	*
	* @param   newModel        the new selection model
	* @exception IllegalArgumentException      if <code>newModel</code>
	*                                          is <code>null</code>
	* @see     #getSelectionModel
	*/
	@:overload @:public public function setSelectionModel(newModel : javax.swing.ListSelectionModel) : Void;
	
	/**
	* Returns the <code>ListSelectionModel</code> that is used to
	* maintain column selection state.
	*
	* @return  the object that provides column selection state.  Or
	*          <code>null</code> if row selection is not allowed.
	* @see     #setSelectionModel
	*/
	@:overload @:public public function getSelectionModel() : javax.swing.ListSelectionModel;
	
	/**
	* Sets whether column selection is allowed.  The default is false.
	* @param  flag true if column selection will be allowed, false otherwise
	*/
	@:overload @:public public function setColumnSelectionAllowed(flag : Bool) : Void;
	
	/**
	* Returns true if column selection is allowed, otherwise false.
	* The default is false.
	* @return the <code>columnSelectionAllowed</code> property
	*/
	@:overload @:public public function getColumnSelectionAllowed() : Bool;
	
	/**
	* Returns an array of selected columns.  If <code>selectionModel</code>
	* is <code>null</code>, returns an empty array.
	* @return an array of selected columns or an empty array if nothing
	*                  is selected or the <code>selectionModel</code> is
	*                  <code>null</code>
	*/
	@:overload @:public public function getSelectedColumns() : java.NativeArray<Int>;
	
	/**
	* Returns the number of columns selected.
	* @return the number of columns selected
	*/
	@:overload @:public public function getSelectedColumnCount() : Int;
	
	/**
	* Adds a listener for table column model events.
	* @param x  a <code>TableColumnModelListener</code> object
	*/
	@:overload @:public public function addColumnModelListener(x : javax.swing.event.TableColumnModelListener) : Void;
	
	/**
	* Removes a listener for table column model events.
	* @param x  a <code>TableColumnModelListener</code> object
	*/
	@:overload @:public public function removeColumnModelListener(x : javax.swing.event.TableColumnModelListener) : Void;
	
	/**
	* Returns an array of all the column model listeners
	* registered on this model.
	*
	* @return all of this default table column model's <code>ColumnModelListener</code>s
	*         or an empty
	*         array if no column model listeners are currently registered
	*
	* @see #addColumnModelListener
	* @see #removeColumnModelListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getColumnModelListeners() : java.NativeArray<javax.swing.event.TableColumnModelListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	* @param e  the event received
	* @see EventListenerList
	*/
	@:overload @:protected private function fireColumnAdded(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	* @param  e  the event received
	* @see EventListenerList
	*/
	@:overload @:protected private function fireColumnRemoved(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	* @param  e the event received
	* @see EventListenerList
	*/
	@:overload @:protected private function fireColumnMoved(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	* @param e the event received
	* @see EventListenerList
	*/
	@:overload @:protected private function fireColumnSelectionChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is lazily created using the parameters passed into
	* the fire method.
	* @see EventListenerList
	*/
	@:overload @:protected private function fireColumnMarginChanged() : Void;
	
	/**
	* Returns an array of all the objects currently registered
	* as <code><em>Foo</em>Listener</code>s
	* upon this model.
	* <code><em>Foo</em>Listener</code>s are registered using the
	* <code>add<em>Foo</em>Listener</code> method.
	*
	* <p>
	*
	* You can specify the <code>listenerType</code> argument
	* with a class literal,
	* such as
	* <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a
	* <code>DefaultTableColumnModel</code> <code>m</code>
	* for its column model listeners with the following code:
	*
	* <pre>ColumnModelListener[] cmls = (ColumnModelListener[])(m.getListeners(ColumnModelListener.class));</pre>
	*
	* If no such listeners exist, this method returns an empty array.
	*
	* @param listenerType the type of listeners requested; this parameter
	*          should specify an interface that descends from
	*          <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s on this model,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code>
	*          doesn't specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getColumnModelListeners
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Property Change Listener change method.  Used to track changes
	* to the column width or preferred column width.
	*
	* @param  evt  <code>PropertyChangeEvent</code>
	*/
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* A <code>ListSelectionListener</code> that forwards
	* <code>ListSelectionEvents</code> when there is a column
	* selection change.
	*
	* @param e  the change event
	*/
	@:overload @:public public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	/**
	* Creates a new default list selection model.
	*/
	@:overload @:protected private function createSelectionModel() : javax.swing.ListSelectionModel;
	
	/**
	* Recalculates the total combined width of all columns.  Updates the
	* <code>totalColumnWidth</code> property.
	*/
	@:overload @:protected private function recalcWidthCache() : Void;
	
	
}
