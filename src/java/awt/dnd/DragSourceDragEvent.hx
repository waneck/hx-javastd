package java.awt.dnd;
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
extern class DragSourceDragEvent extends java.awt.dnd.DragSourceEvent
{
	/**
	* Constructs a <code>DragSourceDragEvent</code>.
	* This class is typically
	* instantiated by the <code>DragSourceContextPeer</code>
	* rather than directly
	* by client code.
	* The coordinates for this <code>DragSourceDragEvent</code>
	* are not specified, so <code>getLocation</code> will return
	* <code>null</code> for this event.
	* <p>
	* The arguments <code>dropAction</code> and <code>action</code> should
	* be one of <code>DnDConstants</code> that represents a single action.
	* The argument <code>modifiers</code> should be either a bitwise mask
	* of old <code>java.awt.event.InputEvent.*_MASK</code> constants or a
	* bitwise mask of extended <code>java.awt.event.InputEvent.*_DOWN_MASK</code>
	* constants.
	* This constructor does not throw any exception for invalid <code>dropAction</code>,
	* <code>action</code> and <code>modifiers</code>.
	*
	* @param dsc the <code>DragSourceContext</code> that is to manage
	*            notifications for this event.
	* @param dropAction the user drop action.
	* @param action the target drop action.
	* @param modifiers the modifier keys down during event (shift, ctrl,
	*        alt, meta)
	*        Either extended _DOWN_MASK or old _MASK modifiers
	*        should be used, but both models should not be mixed
	*        in one event. Use of the extended modifiers is
	*        preferred.
	*
	* @throws <code>IllegalArgumentException</code> if <code>dsc</code> is <code>null</code>.
	*
	* @see java.awt.event.InputEvent
	* @see DragSourceEvent#getLocation
	*/
	@:overload @:public public function new(dsc : java.awt.dnd.DragSourceContext, dropAction : Int, action : Int, modifiers : Int) : Void;
	
	/**
	* Constructs a <code>DragSourceDragEvent</code> given the specified
	* <code>DragSourceContext</code>, user drop action, target drop action,
	* modifiers and coordinates.
	* <p>
	* The arguments <code>dropAction</code> and <code>action</code> should
	* be one of <code>DnDConstants</code> that represents a single action.
	* The argument <code>modifiers</code> should be either a bitwise mask
	* of old <code>java.awt.event.InputEvent.*_MASK</code> constants or a
	* bitwise mask of extended <code>java.awt.event.InputEvent.*_DOWN_MASK</code>
	* constants.
	* This constructor does not throw any exception for invalid <code>dropAction</code>,
	* <code>action</code> and <code>modifiers</code>.
	*
	* @param dsc the <code>DragSourceContext</code> associated with this
	*        event.
	* @param dropAction the user drop action.
	* @param action the target drop action.
	* @param modifiers the modifier keys down during event (shift, ctrl,
	*        alt, meta)
	*        Either extended _DOWN_MASK or old _MASK modifiers
	*        should be used, but both models should not be mixed
	*        in one event. Use of the extended modifiers is
	*        preferred.
	* @param x   the horizontal coordinate for the cursor location
	* @param y   the vertical coordinate for the cursor location
	*
	* @throws <code>IllegalArgumentException</code> if <code>dsc</code> is <code>null</code>.
	*
	* @see java.awt.event.InputEvent
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(dsc : java.awt.dnd.DragSourceContext, dropAction : Int, action : Int, modifiers : Int, x : Int, y : Int) : Void;
	
	/**
	* This method returns the target drop action.
	*
	* @return the target drop action.
	*/
	@:overload @:public public function getTargetActions() : Int;
	
	/**
	* This method returns an <code>int</code> representing
	* the current state of the input device modifiers
	* associated with the user's gesture. Typically these
	* would be mouse buttons or keyboard modifiers.
	* <P>
	* If the <code>modifiers</code> passed to the constructor
	* are invalid, this method returns them unchanged.
	*
	* @return the current state of the input device modifiers
	*/
	@:overload @:public public function getGestureModifiers() : Int;
	
	/**
	* This method returns an <code>int</code> representing
	* the current state of the input device extended modifiers
	* associated with the user's gesture.
	* See {@link InputEvent#getModifiersEx}
	* <P>
	* If the <code>modifiers</code> passed to the constructor
	* are invalid, this method returns them unchanged.
	*
	* @return the current state of the input device extended modifiers
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function getGestureModifiersEx() : Int;
	
	/**
	* This method returns the user drop action.
	*
	* @return the user drop action.
	*/
	@:overload @:public public function getUserAction() : Int;
	
	/**
	* This method returns the logical intersection of
	* the target drop action and the set of drop actions supported by
	* the drag source.
	*
	* @return the logical intersection of the target drop action and
	*         the set of drop actions supported by the drag source.
	*/
	@:overload @:public public function getDropAction() : Int;
	
	
}
