package javax.swing;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Default data model for list selections.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @author Philip Milne
* @author Hans Muller
* @see ListSelectionModel
*/
extern class DefaultListSelectionModel implements javax.swing.ListSelectionModel implements java.lang.Cloneable implements java.io.Serializable
{
	private var listenerList : javax.swing.event.EventListenerList;
	
	private var leadAnchorNotificationEnabled : Bool;
	
	/** {@inheritDoc} */
	@:overload public function getMinSelectionIndex() : Int;
	
	/** {@inheritDoc} */
	@:overload public function getMaxSelectionIndex() : Int;
	
	/** {@inheritDoc} */
	@:overload public function getValueIsAdjusting() : Bool;
	
	/** {@inheritDoc} */
	@:overload public function getSelectionMode() : Int;
	
	/**
	* {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	*/
	@:overload public function setSelectionMode(selectionMode : Int) : Void;
	
	/** {@inheritDoc} */
	@:overload public function isSelectedIndex(index : Int) : Bool;
	
	/** {@inheritDoc} */
	@:overload public function isSelectionEmpty() : Bool;
	
	/** {@inheritDoc} */
	@:overload public function addListSelectionListener(l : javax.swing.event.ListSelectionListener) : Void;
	
	/** {@inheritDoc} */
	@:overload public function removeListSelectionListener(l : javax.swing.event.ListSelectionListener) : Void;
	
	/**
	* Returns an array of all the list selection listeners
	* registered on this <code>DefaultListSelectionModel</code>.
	*
	* @return all of this model's <code>ListSelectionListener</code>s
	*         or an empty
	*         array if no list selection listeners are currently registered
	*
	* @see #addListSelectionListener
	* @see #removeListSelectionListener
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function getListSelectionListeners() : java.NativeArray<javax.swing.event.ListSelectionListener>;
	
	/**
	* Notifies listeners that we have ended a series of adjustments.
	*/
	@:overload private function fireValueChanged(isAdjusting : Bool) : Void;
	
	/**
	* Notifies <code>ListSelectionListeners</code> that the value
	* of the selection, in the closed interval <code>firstIndex</code>,
	* <code>lastIndex</code>, has changed.
	*/
	@:overload private function fireValueChanged(firstIndex : Int, lastIndex : Int) : Void;
	
	/**
	* @param firstIndex the first index in the interval
	* @param lastIndex the last index in the interval
	* @param isAdjusting true if this is the final change in a series of
	*          adjustments
	* @see EventListenerList
	*/
	@:overload private function fireValueChanged(firstIndex : Int, lastIndex : Int, isAdjusting : Bool) : Void;
	
	/**
	* Returns an array of all the objects currently registered as
	* <code><em>Foo</em>Listener</code>s
	* upon this model.
	* <code><em>Foo</em>Listener</code>s
	* are registered using the <code>add<em>Foo</em>Listener</code> method.
	* <p>
	* You can specify the <code>listenerType</code> argument
	* with a class literal, such as <code><em>Foo</em>Listener.class</code>.
	* For example, you can query a <code>DefaultListSelectionModel</code>
	* instance <code>m</code>
	* for its list selection listeners
	* with the following code:
	*
	* <pre>ListSelectionListener[] lsls = (ListSelectionListener[])(m.getListeners(ListSelectionListener.class));</pre>
	*
	* If no such listeners exist,
	* this method returns an empty array.
	*
	* @param listenerType  the type of listeners requested;
	*          this parameter should specify an interface
	*          that descends from <code>java.util.EventListener</code>
	* @return an array of all objects registered as
	*          <code><em>Foo</em>Listener</code>s
	*          on this model,
	*          or an empty array if no such
	*          listeners have been added
	* @exception ClassCastException if <code>listenerType</code> doesn't
	*          specify a class or interface that implements
	*          <code>java.util.EventListener</code>
	*
	* @see #getListSelectionListeners
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function getListeners<T : java.util.EventListener>(listenerType : Class<T>) : java.NativeArray<T>;
	
	/**
	* Sets the value of the leadAnchorNotificationEnabled flag.
	* @see             #isLeadAnchorNotificationEnabled()
	*/
	@:overload public function setLeadAnchorNotificationEnabled(flag : Bool) : Void;
	
	/**
	* Returns the value of the <code>leadAnchorNotificationEnabled</code> flag.
	* When <code>leadAnchorNotificationEnabled</code> is true the model
	* generates notification events with bounds that cover all the changes to
	* the selection plus the changes to the lead and anchor indices.
	* Setting the flag to false causes a narrowing of the event's bounds to
	* include only the elements that have been selected or deselected since
	* the last change. Either way, the model continues to maintain the lead
	* and anchor variables internally. The default is true.
	* <p>
	* Note: It is possible for the lead or anchor to be changed without a
	* change to the selection. Notification of these changes is often
	* important, such as when the new lead or anchor needs to be updated in
	* the view. Therefore, caution is urged when changing the default value.
	*
	* @return  the value of the <code>leadAnchorNotificationEnabled</code> flag
	* @see             #setLeadAnchorNotificationEnabled(boolean)
	*/
	@:overload public function isLeadAnchorNotificationEnabled() : Bool;
	
	/** {@inheritDoc} */
	@:overload public function clearSelection() : Void;
	
	/**
	* Changes the selection to be between {@code index0} and {@code index1}
	* inclusive. {@code index0} doesn't have to be less than or equal to
	* {@code index1}.
	* <p>
	* In {@code SINGLE_SELECTION} selection mode, only the second index
	* is used.
	* <p>
	* If this represents a change to the current selection, then each
	* {@code ListSelectionListener} is notified of the change.
	* <p>
	* If either index is {@code -1}, this method does nothing and returns
	* without exception. Otherwise, if either index is less than {@code -1},
	* an {@code IndexOutOfBoundsException} is thrown.
	*
	* @param index0 one end of the interval.
	* @param index1 other end of the interval
	* @throws IndexOutOfBoundsException if either index is less than {@code -1}
	*         (and neither index is {@code -1})
	* @see #addListSelectionListener
	*/
	@:overload public function setSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Changes the selection to be the set union of the current selection
	* and the indices between {@code index0} and {@code index1} inclusive.
	* <p>
	* In {@code SINGLE_SELECTION} selection mode, this is equivalent
	* to calling {@code setSelectionInterval}, and only the second index
	* is used. In {@code SINGLE_INTERVAL_SELECTION} selection mode, this
	* method behaves like {@code setSelectionInterval}, unless the given
	* interval is immediately adjacent to or overlaps the existing selection,
	* and can therefore be used to grow it.
	* <p>
	* If this represents a change to the current selection, then each
	* {@code ListSelectionListener} is notified of the change. Note that
	* {@code index0} doesn't have to be less than or equal to {@code index1}.
	* <p>
	* If either index is {@code -1}, this method does nothing and returns
	* without exception. Otherwise, if either index is less than {@code -1},
	* an {@code IndexOutOfBoundsException} is thrown.
	*
	* @param index0 one end of the interval.
	* @param index1 other end of the interval
	* @throws IndexOutOfBoundsException if either index is less than {@code -1}
	*         (and neither index is {@code -1})
	* @see #addListSelectionListener
	* @see #setSelectionInterval
	*/
	@:overload public function addSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Changes the selection to be the set difference of the current selection
	* and the indices between {@code index0} and {@code index1} inclusive.
	* {@code index0} doesn't have to be less than or equal to {@code index1}.
	* <p>
	* In {@code SINGLE_INTERVAL_SELECTION} selection mode, if the removal
	* would produce two disjoint selections, the removal is extended through
	* the greater end of the selection. For example, if the selection is
	* {@code 0-10} and you supply indices {@code 5,6} (in any order) the
	* resulting selection is {@code 0-4}.
	* <p>
	* If this represents a change to the current selection, then each
	* {@code ListSelectionListener} is notified of the change.
	* <p>
	* If either index is {@code -1}, this method does nothing and returns
	* without exception. Otherwise, if either index is less than {@code -1},
	* an {@code IndexOutOfBoundsException} is thrown.
	*
	* @param index0 one end of the interval
	* @param index1 other end of the interval
	* @throws IndexOutOfBoundsException if either index is less than {@code -1}
	*         (and neither index is {@code -1})
	* @see #addListSelectionListener
	*/
	@:overload public function removeSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Insert length indices beginning before/after index. If the value
	* at index is itself selected and the selection mode is not
	* SINGLE_SELECTION, set all of the newly inserted items as selected.
	* Otherwise leave them unselected. This method is typically
	* called to sync the selection model with a corresponding change
	* in the data model.
	*/
	@:overload public function insertIndexInterval(index : Int, length : Int, before : Bool) : Void;
	
	/**
	* Remove the indices in the interval index0,index1 (inclusive) from
	* the selection model.  This is typically called to sync the selection
	* model width a corresponding change in the data model.  Note
	* that (as always) index0 need not be <= index1.
	*/
	@:overload public function removeIndexInterval(index0 : Int, index1 : Int) : Void;
	
	/** {@inheritDoc} */
	@:overload public function setValueIsAdjusting(isAdjusting : Bool) : Void;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a <code>String</code> representation of this object
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a clone of this selection model with the same selection.
	* <code>listenerLists</code> are not duplicated.
	*
	* @exception CloneNotSupportedException if the selection model does not
	*    both (a) implement the Cloneable interface and (b) define a
	*    <code>clone</code> method.
	*/
	@:overload public function clone() : Dynamic;
	
	/** {@inheritDoc} */
	@:overload public function getAnchorSelectionIndex() : Int;
	
	/** {@inheritDoc} */
	@:overload public function getLeadSelectionIndex() : Int;
	
	/**
	* Set the anchor selection index, leaving all selection values unchanged.
	* If leadAnchorNotificationEnabled is true, send a notification covering
	* the old and new anchor cells.
	*
	* @see #getAnchorSelectionIndex
	* @see #setLeadSelectionIndex
	*/
	@:overload public function setAnchorSelectionIndex(anchorIndex : Int) : Void;
	
	/**
	* Set the lead selection index, leaving all selection values unchanged.
	* If leadAnchorNotificationEnabled is true, send a notification covering
	* the old and new lead cells.
	*
	* @param leadIndex the new lead selection index
	*
	* @see #setAnchorSelectionIndex
	* @see #setLeadSelectionIndex
	* @see #getLeadSelectionIndex
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function moveLeadSelectionIndex(leadIndex : Int) : Void;
	
	/**
	* Sets the lead selection index, ensuring that values between the
	* anchor and the new lead are either all selected or all deselected.
	* If the value at the anchor index is selected, first clear all the
	* values in the range [anchor, oldLeadIndex], then select all the values
	* values in the range [anchor, newLeadIndex], where oldLeadIndex is the old
	* leadIndex and newLeadIndex is the new one.
	* <p>
	* If the value at the anchor index is not selected, do the same thing in
	* reverse selecting values in the old range and deslecting values in the
	* new one.
	* <p>
	* Generate a single event for this change and notify all listeners.
	* For the purposes of generating minimal bounds in this event, do the
	* operation in a single pass; that way the first and last index inside the
	* ListSelectionEvent that is broadcast will refer to cells that actually
	* changed value because of this method. If, instead, this operation were
	* done in two steps the effect on the selection state would be the same
	* but two events would be generated and the bounds around the changed
	* values would be wider, including cells that had been first cleared only
	* to later be set.
	* <p>
	* This method can be used in the <code>mouseDragged</code> method
	* of a UI class to extend a selection.
	*
	* @see #getLeadSelectionIndex
	* @see #setAnchorSelectionIndex
	*/
	@:overload public function setLeadSelectionIndex(leadIndex : Int) : Void;
	
	
}
