package javax.swing.event;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class RowSorterEvent extends java.util.EventObject
{
	/**
	* Creates a <code>RowSorterEvent</code> of type
	* <code>SORT_ORDER_CHANGED</code>.
	*
	* @param source the source of the change
	* @throws IllegalArgumentException if <code>source</code> is
	*         <code>null</code>
	*/
	@:overload public function new(source : javax.swing.RowSorter<Dynamic>) : Void;
	
	/**
	* Creates a <code>RowSorterEvent</code>.
	*
	* @param source the source of the change
	* @param type the type of event
	* @param previousRowIndexToModel the mapping from model indices to
	*        view indices prior to the sort, may be <code>null</code>
	* @throws IllegalArgumentException if source or <code>type</code> is
	*         <code>null</code>
	*/
	@:overload public function new(source : javax.swing.RowSorter<Dynamic>, type : javax.swing.event.RowSorterEvent.RowSorterEvent_Type, previousRowIndexToModel : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the source of the event as a <code>RowSorter</code>.
	*
	* @return the source of the event as a <code>RowSorter</code>
	*/
	@:overload override public function getSource() : javax.swing.RowSorter<Dynamic>;
	
	/**
	* Returns the type of event.
	*
	* @return the type of event
	*/
	@:overload public function getType() : javax.swing.event.RowSorterEvent.RowSorterEvent_Type;
	
	/**
	* Returns the location of <code>index</code> in terms of the
	* model prior to the sort.  This method is only useful for events
	* of type <code>SORTED</code>.  This method will return -1 if the
	* index is not valid, or the locations prior to the sort have not
	* been provided.
	*
	* @param index the index in terms of the view
	* @return the index in terms of the model prior to the sort, or -1 if
	*         the location is not valid or the mapping was not provided.
	*/
	@:overload public function convertPreviousRowIndexToModel(index : Int) : Int;
	
	/**
	* Returns the number of rows before the sort.  This method is only
	* useful for events of type <code>SORTED</code> and if the
	* last locations have not been provided will return 0.
	*
	* @return the number of rows in terms of the view prior to the sort
	*/
	@:overload public function getPreviousRowCount() : Int;
	
	
}
/**
* Enumeration of the types of <code>RowSorterEvent</code>s.
*
* @since 1.6
*/
@:require(java6) @:native('javax$swing$event$RowSorterEvent$Type') extern enum RowSorterEvent_Type
{
	/**
	* Indicates the sort order has changed.
	*/
	SORT_ORDER_CHANGED;
	/**
	* Indicates the contents have been newly sorted or
	* transformed in some way.
	*/
	SORTED;
	
}

