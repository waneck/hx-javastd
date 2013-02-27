package javax.swing.event;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MouseInputAdapter extends java.awt.event.MouseAdapter implements javax.swing.event.MouseInputListener
{
	/**
	* Invoked when a mouse button has been pressed on a component.
	*/
	@:overload override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse cursor has been moved onto a component
	* but no buttons have been pushed.
	*/
	@:overload @:public override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse exits a component.
	*/
	@:overload override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button is pressed on a component and then
	* dragged.  <code>MOUSE_DRAGGED</code> events will continue to be
	* delivered to the component where the drag originated until the
	* mouse button is released (regardless of whether the mouse position
	* is within the bounds of the component).
	* <p>
	* Due to platform-dependent Drag&Drop implementations,
	* <code>MOUSE_DRAGGED</code> events may not be delivered during a native
	* Drag&Drop operation.
	*/
	@:overload @:public override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse button has been clicked (pressed
	* and released) on a component.
	*/
	@:overload override public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button has been released on a component.
	*/
	@:overload override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse enters a component.
	*/
	@:overload override public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	
}
