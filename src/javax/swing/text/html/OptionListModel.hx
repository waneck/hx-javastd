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
@:internal extern class OptionListModel extends javax.swing.DefaultListModel<Dynamic> implements javax.swing.ListSelectionModel implements java.io.Serializable
{
	@:protected private var listenerList : javax.swing.event.EventListenerList;
	
	@:protected private var leadAnchorNotificationEnabled : Bool;
	
	@:overload @:public public function getMinSelectionIndex() : Int;
	
	@:overload @:public public function getMaxSelectionIndex() : Int;
	
	@:overload @:public public function getValueIsAdjusting() : Bool;
	
	@:overload @:public public function getSelectionMode() : Int;
	
	@:overload @:public public function setSelectionMode(selectionMode : Int) : Void;
	
	@:overload @:public public function isSelectedIndex(index : Int) : Bool;
	
	@:overload @:public public function isSelectionEmpty() : Bool;
	
	@:overload @:public public function addListSelectionListener(l : javax.swing.event.ListSelectionListener) : Void;
	
	@:overload @:public public function removeListSelectionListener(l : javax.swing.event.ListSelectionListener) : Void;
	
	/**
	* Returns an array of all the <code>ListSelectionListener</code>s added
	* to this OptionListModel with addListSelectionListener().
	*
	* @return all of the <code>ListSelectionListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getListSelectionListeners() : java.NativeArray<javax.swing.event.ListSelectionListener>;
	
	/**
	* Notify listeners that we are beginning or ending a
	* series of value changes
	*/
	@:overload @:protected private function fireValueChanged(isAdjusting : Bool) : Void;
	
	/**
	* Notify ListSelectionListeners that the value of the selection,
	* in the closed interval firstIndex,lastIndex, has changed.
	*/
	@:overload @:protected private function fireValueChanged(firstIndex : Int, lastIndex : Int) : Void;
	
	/**
	* @param firstIndex The first index in the interval.
	* @param lastIndex The last index in the interval.
	* @param isAdjusting True if this is the final change in a series of them.
	* @see EventListenerList
	*/
	@:overload @:protected private function fireValueChanged(firstIndex : Int, lastIndex : Int, isAdjusting : Bool) : Void;
	
	/**
	* Sets the value of the leadAnchorNotificationEnabled flag.
	* @see             #isLeadAnchorNotificationEnabled()
	*/
	@:overload @:public public function setLeadAnchorNotificationEnabled(flag : Bool) : Void;
	
	/**
	* Returns the value of the leadAnchorNotificationEnabled flag.
	* When leadAnchorNotificationEnabled is true the model
	* generates notification events with bounds that cover all the changes to
	* the selection plus the changes to the lead and anchor indices.
	* Setting the flag to false causes a norrowing of the event's bounds to
	* include only the elements that have been selected or deselected since
	* the last change. Either way, the model continues to maintain the lead
	* and anchor variables internally. The default is true.
	* @return          the value of the leadAnchorNotificationEnabled flag
	* @see             #setLeadAnchorNotificationEnabled(boolean)
	*/
	@:overload @:public public function isLeadAnchorNotificationEnabled() : Bool;
	
	@:overload @:public public function clearSelection() : Void;
	
	@:overload @:public public function setSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	@:overload @:public public function addSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	@:overload @:public public function removeSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Insert length indices beginning before/after index. If the value
	* at index is itself selected, set all of the newly inserted
	* items, otherwise leave them unselected. This method is typically
	* called to sync the selection model with a corresponding change
	* in the data model.
	*/
	@:overload @:public public function insertIndexInterval(index : Int, length : Int, before : Bool) : Void;
	
	/**
	* Remove the indices in the interval index0,index1 (inclusive) from
	* the selection model.  This is typically called to sync the selection
	* model width a corresponding change in the data model.  Note
	* that (as always) index0 can be greater than index1.
	*/
	@:overload @:public public function removeIndexInterval(index0 : Int, index1 : Int) : Void;
	
	@:overload @:public public function setValueIsAdjusting(isAdjusting : Bool) : Void;
	
	@:overload @:public override public function toString() : String;
	
	/**
	* Returns a clone of the receiver with the same selection.
	* <code>listenerLists</code> are not duplicated.
	*
	* @return a clone of the receiver
	* @exception CloneNotSupportedException if the receiver does not
	*    both (a) implement the <code>Cloneable</code> interface
	*    and (b) define a <code>clone</code> method
	*/
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function getAnchorSelectionIndex() : Int;
	
	@:overload @:public public function getLeadSelectionIndex() : Int;
	
	/**
	* Set the anchor selection index, leaving all selection values unchanged.
	*
	* @see #getAnchorSelectionIndex
	* @see #setLeadSelectionIndex
	*/
	@:overload @:public public function setAnchorSelectionIndex(anchorIndex : Int) : Void;
	
	/**
	* Set the lead selection index, ensuring that values between the
	* anchor and the new lead are either all selected or all deselected.
	* If the value at the anchor index is selected, first clear all the
	* values in the range [anchor, oldLeadIndex], then select all the values
	* values in the range [anchor, newLeadIndex], where oldLeadIndex is the old
	* leadIndex and newLeadIndex is the new one.
	* <p>
	* If the value at the anchor index is not selected, do the same thing in reverse,
	* selecting values in the old range and deslecting values in the new one.
	* <p>
	* Generate a single event for this change and notify all listeners.
	* For the purposes of generating minimal bounds in this event, do the
	* operation in a single pass; that way the first and last index inside the
	* ListSelectionEvent that is broadcast will refer to cells that actually
	* changed value because of this method. If, instead, this operation were
	* done in two steps the effect on the selection state would be the same
	* but two events would be generated and the bounds around the changed values
	* would be wider, including cells that had been first cleared and only
	* to later be set.
	* <p>
	* This method can be used in the mouseDragged() method of a UI class
	* to extend a selection.
	*
	* @see #getLeadSelectionIndex
	* @see #setAnchorSelectionIndex
	*/
	@:overload @:public public function setLeadSelectionIndex(leadIndex : Int) : Void;
	
	/**
	* This method is responsible for storing the state
	* of the initial selection.  If the selectionMode
	* is the default, i.e allowing only for SINGLE_SELECTION,
	* then the very last OPTION that has the selected
	* attribute set wins.
	*/
	@:overload @:public public function setInitialSelection(i : Int) : Void;
	
	/**
	* Fetches the BitSet that represents the initial
	* set of selected items in the list.
	*/
	@:overload @:public public function getInitialSelection() : java.util.BitSet;
	
	
}
