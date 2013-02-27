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
extern class PaintEvent extends java.awt.event.ComponentEvent
{
	/**
	* Marks the first integer id for the range of paint event ids.
	*/
	public static var PAINT_FIRST(default, null) : Int;
	
	/**
	* Marks the last integer id for the range of paint event ids.
	*/
	public static var PAINT_LAST(default, null) : Int;
	
	/**
	* The paint event type.
	*/
	public static var PAINT(default, null) : Int;
	
	/**
	* The update event type.
	*/
	public static var UPDATE(default, null) : Int;
	
	/**
	* Constructs a <code>PaintEvent</code> object with the specified
	* source component and type.
	* <p> This method throws an
	* <code>IllegalArgumentException</code> if <code>source</code>
	* is <code>null</code>.
	*
	* @param source     The object where the event originated
	* @param id           The integer that identifies the event type.
	*                     For information on allowable values, see
	*                     the class description for {@link PaintEvent}
	* @param updateRect The rectangle area which needs to be repainted
	* @throws IllegalArgumentException if <code>source</code> is null
	* @see #getSource()
	* @see #getID()
	* @see #getUpdateRect()
	*/
	@:overload public function new(source : java.awt.Component, id : Int, updateRect : java.awt.Rectangle) : Void;
	
	/**
	* Returns the rectangle representing the area which needs to be
	* repainted in response to this event.
	*/
	@:overload public function getUpdateRect() : java.awt.Rectangle;
	
	/**
	* Sets the rectangle representing the area which needs to be
	* repainted in response to this event.
	* @param updateRect the rectangle area which needs to be repainted
	*/
	@:overload public function setUpdateRect(updateRect : java.awt.Rectangle) : Void;
	
	@:overload override public function paramString() : String;
	
	
}
