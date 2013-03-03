package java.awt.dnd;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class DragSourceEvent extends java.util.EventObject
{
	/**
	* Construct a <code>DragSourceEvent</code>
	* given a specified <code>DragSourceContext</code>.
	* The coordinates for this <code>DragSourceEvent</code>
	* are not specified, so <code>getLocation</code> will return
	* <code>null</code> for this event.
	*
	* @param dsc the <code>DragSourceContext</code>
	*
	* @throws <code>IllegalArgumentException</code> if <code>dsc</code> is <code>null</code>.
	*
	* @see #getLocation
	*/
	@:overload @:public public function new(dsc : java.awt.dnd.DragSourceContext) : Void;
	
	/**
	* Construct a <code>DragSourceEvent</code> given a specified
	* <code>DragSourceContext</code>, and coordinates of the cursor
	* location.
	*
	* @param dsc the <code>DragSourceContext</code>
	* @param x   the horizontal coordinate for the cursor location
	* @param y   the vertical coordinate for the cursor location
	*
	* @throws <code>IllegalArgumentException</code> if <code>dsc</code> is <code>null</code>.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(dsc : java.awt.dnd.DragSourceContext, x : Int, y : Int) : Void;
	
	/**
	* This method returns the <code>DragSourceContext</code> that
	* originated the event.
	* <P>
	* @return the <code>DragSourceContext</code> that originated the event
	*/
	@:overload @:public public function getDragSourceContext() : java.awt.dnd.DragSourceContext;
	
	/**
	* This method returns a <code>Point</code> indicating the cursor
	* location in screen coordinates at the moment this event occured, or
	* <code>null</code> if the cursor location is not specified for this
	* event.
	*
	* @return the <code>Point</code> indicating the cursor location
	*         or <code>null</code> if the cursor location is not specified
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getLocation() : java.awt.Point;
	
	/**
	* This method returns the horizontal coordinate of the cursor location in
	* screen coordinates at the moment this event occured, or zero if the
	* cursor location is not specified for this event.
	*
	* @return an integer indicating the horizontal coordinate of the cursor
	*         location or zero if the cursor location is not specified
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getX() : Int;
	
	/**
	* This method returns the vertical coordinate of the cursor location in
	* screen coordinates at the moment this event occured, or zero if the
	* cursor location is not specified for this event.
	*
	* @return an integer indicating the vertical coordinate of the cursor
	*         location or zero if the cursor location is not specified
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getY() : Int;
	
	
}
