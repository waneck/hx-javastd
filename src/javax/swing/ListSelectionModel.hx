package javax.swing;
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
* This interface represents the current state of the
* selection for any of the components that display a
* list of values with stable indices.  The selection is
* modeled as a set of intervals, each interval represents
* a contiguous range of selected list elements.
* The methods for modifying the set of selected intervals
* all take a pair of indices, index0 and index1, that represent
* a closed interval, i.e. the interval includes both index0 and
* index1.
*
* @author Hans Muller
* @author Philip Milne
* @see DefaultListSelectionModel
*/
extern interface ListSelectionModel
{
	/**
	* A value for the selectionMode property: select one list index
	* at a time.
	*
	* @see #setSelectionMode
	*/
	public var SINGLE_SELECTION : Int;
	
	/**
	* A value for the selectionMode property: select one contiguous
	* range of indices at a time.
	*
	* @see #setSelectionMode
	*/
	public var SINGLE_INTERVAL_SELECTION : Int;
	
	/**
	* A value for the selectionMode property: select one or more
	* contiguous ranges of indices at a time.
	*
	* @see #setSelectionMode
	*/
	public var MULTIPLE_INTERVAL_SELECTION : Int;
	
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
	*
	* @param index0 one end of the interval.
	* @param index1 other end of the interval
	* @see #addListSelectionListener
	*/
	@:overload public function setSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Changes the selection to be the set union of the current selection
	* and the indices between {@code index0} and {@code index1} inclusive.
	* {@code index0} doesn't have to be less than or equal to {@code index1}.
	* <p>
	* In {@code SINGLE_SELECTION} selection mode, this is equivalent
	* to calling {@code setSelectionInterval}, and only the second index
	* is used. In {@code SINGLE_INTERVAL_SELECTION} selection mode, this
	* method behaves like {@code setSelectionInterval}, unless the given
	* interval is immediately adjacent to or overlaps the existing selection,
	* and can therefore be used to grow the selection.
	* <p>
	* If this represents a change to the current selection, then each
	* {@code ListSelectionListener} is notified of the change.
	*
	* @param index0 one end of the interval.
	* @param index1 other end of the interval
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
	*
	* @param index0 one end of the interval.
	* @param index1 other end of the interval
	* @see #addListSelectionListener
	*/
	@:overload public function removeSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Returns the first selected index or -1 if the selection is empty.
	*/
	@:overload public function getMinSelectionIndex() : Int;
	
	/**
	* Returns the last selected index or -1 if the selection is empty.
	*/
	@:overload public function getMaxSelectionIndex() : Int;
	
	/**
	* Returns true if the specified index is selected.
	*/
	@:overload public function isSelectedIndex(index : Int) : Bool;
	
	/**
	* Return the first index argument from the most recent call to
	* setSelectionInterval(), addSelectionInterval() or removeSelectionInterval().
	* The most recent index0 is considered the "anchor" and the most recent
	* index1 is considered the "lead".  Some interfaces display these
	* indices specially, e.g. Windows95 displays the lead index with a
	* dotted yellow outline.
	*
	* @see #getLeadSelectionIndex
	* @see #setSelectionInterval
	* @see #addSelectionInterval
	*/
	@:overload public function getAnchorSelectionIndex() : Int;
	
	/**
	* Set the anchor selection index.
	*
	* @see #getAnchorSelectionIndex
	*/
	@:overload public function setAnchorSelectionIndex(index : Int) : Void;
	
	/**
	* Return the second index argument from the most recent call to
	* setSelectionInterval(), addSelectionInterval() or removeSelectionInterval().
	*
	* @see #getAnchorSelectionIndex
	* @see #setSelectionInterval
	* @see #addSelectionInterval
	*/
	@:overload public function getLeadSelectionIndex() : Int;
	
	/**
	* Set the lead selection index.
	*
	* @see #getLeadSelectionIndex
	*/
	@:overload public function setLeadSelectionIndex(index : Int) : Void;
	
	/**
	* Change the selection to the empty set.  If this represents
	* a change to the current selection then notify each ListSelectionListener.
	*
	* @see #addListSelectionListener
	*/
	@:overload public function clearSelection() : Void;
	
	/**
	* Returns true if no indices are selected.
	*/
	@:overload public function isSelectionEmpty() : Bool;
	
	/**
	* Insert length indices beginning before/after index.  This is typically
	* called to sync the selection model with a corresponding change
	* in the data model.
	*/
	@:overload public function insertIndexInterval(index : Int, length : Int, before : Bool) : Void;
	
	/**
	* Remove the indices in the interval index0,index1 (inclusive) from
	* the selection model.  This is typically called to sync the selection
	* model width a corresponding change in the data model.
	*/
	@:overload public function removeIndexInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Sets the {@code valueIsAdjusting} property, which indicates whether
	* or not upcoming selection changes should be considered part of a single
	* change. The value of this property is used to initialize the
	* {@code valueIsAdjusting} property of the {@code ListSelectionEvent}s that
	* are generated.
	* <p>
	* For example, if the selection is being updated in response to a user
	* drag, this property can be set to {@code true} when the drag is initiated
	* and set to {@code false} when the drag is finished. During the drag,
	* listeners receive events with a {@code valueIsAdjusting} property
	* set to {@code true}. At the end of the drag, when the change is
	* finalized, listeners receive an event with the value set to {@code false}.
	* Listeners can use this pattern if they wish to update only when a change
	* has been finalized.
	* <p>
	* Setting this property to {@code true} begins a series of changes that
	* is to be considered part of a single change. When the property is changed
	* back to {@code false}, an event is sent out characterizing the entire
	* selection change (if there was one), with the event's
	* {@code valueIsAdjusting} property set to {@code false}.
	*
	* @param valueIsAdjusting the new value of the property
	* @see #getValueIsAdjusting
	* @see javax.swing.event.ListSelectionEvent#getValueIsAdjusting
	*/
	@:overload public function setValueIsAdjusting(valueIsAdjusting : Bool) : Void;
	
	/**
	* Returns {@code true} if the selection is undergoing a series of changes.
	*
	* @return true if the selection is undergoing a series of changes
	* @see #setValueIsAdjusting
	*/
	@:overload public function getValueIsAdjusting() : Bool;
	
	/**
	* Sets the selection mode. The following list describes the accepted
	* selection modes:
	* <ul>
	* <li>{@code ListSelectionModel.SINGLE_SELECTION} -
	*   Only one list index can be selected at a time. In this mode,
	*   {@code setSelectionInterval} and {@code addSelectionInterval} are
	*   equivalent, both replacing the current selection with the index
	*   represented by the second argument (the "lead").
	* <li>{@code ListSelectionModel.SINGLE_INTERVAL_SELECTION} -
	*   Only one contiguous interval can be selected at a time.
	*   In this mode, {@code addSelectionInterval} behaves like
	*   {@code setSelectionInterval} (replacing the current selection),
	*   unless the given interval is immediately adjacent to or overlaps
	*   the existing selection, and can therefore be used to grow it.
	* <li>{@code ListSelectionModel.MULTIPLE_INTERVAL_SELECTION} -
	*   In this mode, there's no restriction on what can be selected.
	* </ul>
	*
	* @see #getSelectionMode
	* @throws IllegalArgumentException if the selection mode isn't
	*         one of those allowed
	*/
	@:overload public function setSelectionMode(selectionMode : Int) : Void;
	
	/**
	* Returns the current selection mode.
	*
	* @return the current selection mode
	* @see #setSelectionMode
	*/
	@:overload public function getSelectionMode() : Int;
	
	/**
	* Add a listener to the list that's notified each time a change
	* to the selection occurs.
	*
	* @param x the ListSelectionListener
	* @see #removeListSelectionListener
	* @see #setSelectionInterval
	* @see #addSelectionInterval
	* @see #removeSelectionInterval
	* @see #clearSelection
	* @see #insertIndexInterval
	* @see #removeIndexInterval
	*/
	@:overload public function addListSelectionListener(x : javax.swing.event.ListSelectionListener) : Void;
	
	/**
	* Remove a listener from the list that's notified each time a
	* change to the selection occurs.
	*
	* @param x the ListSelectionListener
	* @see #addListSelectionListener
	*/
	@:overload public function removeListSelectionListener(x : javax.swing.event.ListSelectionListener) : Void;
	
	
}