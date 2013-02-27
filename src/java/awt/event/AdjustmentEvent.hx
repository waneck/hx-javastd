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
extern class AdjustmentEvent extends java.awt.AWTEvent
{
	/**
	* Marks the first integer id for the range of adjustment event ids.
	*/
	public static var ADJUSTMENT_FIRST(default, null) : Int;
	
	/**
	* Marks the last integer id for the range of adjustment event ids.
	*/
	public static var ADJUSTMENT_LAST(default, null) : Int;
	
	/**
	* The adjustment value changed event.
	*/
	public static var ADJUSTMENT_VALUE_CHANGED(default, null) : Int;
	
	/**
	* The unit increment adjustment type.
	*/
	public static var UNIT_INCREMENT(default, null) : Int;
	
	/**
	* The unit decrement adjustment type.
	*/
	public static var UNIT_DECREMENT(default, null) : Int;
	
	/**
	* The block decrement adjustment type.
	*/
	public static var BLOCK_DECREMENT(default, null) : Int;
	
	/**
	* The block increment adjustment type.
	*/
	public static var BLOCK_INCREMENT(default, null) : Int;
	
	/**
	* The absolute tracking adjustment type.
	*/
	public static var TRACK(default, null) : Int;
	
	/**
	* Constructs an <code>AdjustmentEvent</code> object with the
	* specified <code>Adjustable</code> source, event type,
	* adjustment type, and value.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source The <code>Adjustable</code> object where the
	*               event originated
	* @param id     An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link AdjustmentEvent}
	* @param type   An integer indicating the adjustment type.
	*                     For information on allowable values, see
	*                     the class description for {@link AdjustmentEvent}
	* @param value  The current value of the adjustment
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getAdjustmentType()
	* @see #getValue()
	*/
	@:overload public function new(source : java.awt.Adjustable, id : Int, type : Int, value : Int) : Void;
	
	/**
	* Constructs an <code>AdjustmentEvent</code> object with the
	* specified Adjustable source, event type, adjustment type, and value.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source The <code>Adjustable</code> object where the
	*               event originated
	* @param id     An integer indicating the type of event.
	*                     For information on allowable values, see
	*                     the class description for {@link AdjustmentEvent}
	* @param type   An integer indicating the adjustment type.
	*                     For information on allowable values, see
	*                     the class description for {@link AdjustmentEvent}
	* @param value  The current value of the adjustment
	* @param isAdjusting A boolean that equals <code>true</code> if the event is one
	*               of a series of multiple adjusting events,
	*               otherwise <code>false</code>
	* @throws IllegalArgumentException if <code>source</code> is null
	* @since 1.4
	* @see #getSource()
	* @see #getID()
	* @see #getAdjustmentType()
	* @see #getValue()
	* @see #getValueIsAdjusting()
	*/
	@:require(java4) @:overload public function new(source : java.awt.Adjustable, id : Int, type : Int, value : Int, isAdjusting : Bool) : Void;
	
	/**
	* Returns the <code>Adjustable</code> object where this event originated.
	*
	* @return the <code>Adjustable</code> object where this event originated
	*/
	@:overload public function getAdjustable() : java.awt.Adjustable;
	
	/**
	* Returns the current value in the adjustment event.
	*
	* @return the current value in the adjustment event
	*/
	@:overload public function getValue() : Int;
	
	/**
	* Returns the type of adjustment which caused the value changed
	* event.  It will have one of the following values:
	* <ul>
	* <li>{@link #UNIT_INCREMENT}
	* <li>{@link #UNIT_DECREMENT}
	* <li>{@link #BLOCK_INCREMENT}
	* <li>{@link #BLOCK_DECREMENT}
	* <li>{@link #TRACK}
	* </ul>
	* @return one of the adjustment values listed above
	*/
	@:overload public function getAdjustmentType() : Int;
	
	/**
	* Returns <code>true</code> if this is one of multiple
	* adjustment events.
	*
	* @return <code>true</code> if this is one of multiple
	*         adjustment events, otherwise returns <code>false</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getValueIsAdjusting() : Bool;
	
	@:overload override public function paramString() : String;
	
	
}
