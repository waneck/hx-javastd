package java.awt.event;
/*
* Copyright (c) 1996, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ItemEvent extends java.awt.AWTEvent
{
	/**
	* The first number in the range of ids used for item events.
	*/
	public static var ITEM_FIRST(default, null) : Int;
	
	/**
	* The last number in the range of ids used for item events.
	*/
	public static var ITEM_LAST(default, null) : Int;
	
	/**
	* This event id indicates that an item's state changed.
	*/
	public static var ITEM_STATE_CHANGED(default, null) : Int;
	
	/**
	* This state-change value indicates that an item was selected.
	*/
	public static var SELECTED(default, null) : Int;
	
	/**
	* This state-change-value indicates that a selected item was deselected.
	*/
	public static var DESELECTED(default, null) : Int;
	
	/**
	* Constructs an <code>ItemEvent</code> object.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source The <code>ItemSelectable</code> object
	*               that originated the event
	* @param id           The integer that identifies the event type.
	*                     For information on allowable values, see
	*                     the class description for {@link ItemEvent}
	* @param item   An object -- the item affected by the event
	* @param stateChange  An integer that indicates whether the item was
	*               selected or deselected.
	*                     For information on allowable values, see
	*                     the class description for {@link ItemEvent}
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getItemSelectable()
	* @see #getID()
	* @see #getStateChange()
	*/
	@:overload public function new(source : java.awt.ItemSelectable, id : Int, item : Dynamic, stateChange : Int) : Void;
	
	/**
	* Returns the originator of the event.
	*
	* @return the ItemSelectable object that originated the event.
	*/
	@:overload public function getItemSelectable() : java.awt.ItemSelectable;
	
	/**
	* Returns the item affected by the event.
	*
	* @return the item (object) that was affected by the event
	*/
	@:overload public function getItem() : Dynamic;
	
	/**
	* Returns the type of state change (selected or deselected).
	*
	* @return an integer that indicates whether the item was selected
	*         or deselected
	*
	* @see #SELECTED
	* @see #DESELECTED
	*/
	@:overload public function getStateChange() : Int;
	
	/**
	* Returns a parameter string identifying this item event.
	* This method is useful for event-logging and for debugging.
	*
	* @return a string identifying the event and its attributes
	*/
	@:overload override public function paramString() : String;
	
	
}
