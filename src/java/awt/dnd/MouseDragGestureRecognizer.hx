package java.awt.dnd;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class MouseDragGestureRecognizer extends java.awt.dnd.DragGestureRecognizer implements java.awt.event.MouseListener implements java.awt.event.MouseMotionListener
{
	/**
	* Construct a new <code>MouseDragGestureRecognizer</code>
	* given the <code>DragSource</code> for the
	* <code>Component</code> c, the <code>Component</code>
	* to observe, the action(s)
	* permitted for this drag operation, and
	* the <code>DragGestureListener</code> to
	* notify when a drag gesture is detected.
	* <P>
	* @param ds  The DragSource for the Component c
	* @param c   The Component to observe
	* @param act The actions permitted for this Drag
	* @param dgl The DragGestureListener to notify when a gesture is detected
	*
	*/
	@:overload @:protected private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component, act : Int, dgl : java.awt.dnd.DragGestureListener) : Void;
	
	/**
	* Construct a new <code>MouseDragGestureRecognizer</code>
	* given the <code>DragSource</code> for
	* the <code>Component</code> c,
	* the <code>Component</code> to observe, and the action(s)
	* permitted for this drag operation.
	* <P>
	* @param ds  The DragSource for the Component c
	* @param c   The Component to observe
	* @param act The actions permitted for this drag
	*/
	@:overload @:protected private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component, act : Int) : Void;
	
	/**
	* Construct a new <code>MouseDragGestureRecognizer</code>
	* given the <code>DragSource</code> for the
	* <code>Component</code> c, and the
	* <code>Component</code> to observe.
	* <P>
	* @param ds  The DragSource for the Component c
	* @param c   The Component to observe
	*/
	@:overload @:protected private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component) : Void;
	
	/**
	* Construct a new <code>MouseDragGestureRecognizer</code>
	* given the <code>DragSource</code> for the <code>Component</code>.
	* <P>
	* @param ds  The DragSource for the Component
	*/
	@:overload @:protected private function new(ds : java.awt.dnd.DragSource) : Void;
	
	/**
	* register this DragGestureRecognizer's Listeners with the Component
	*/
	@:overload @:protected override private function registerListeners() : Void;
	
	/**
	* unregister this DragGestureRecognizer's Listeners with the Component
	*
	* subclasses must override this method
	*/
	@:overload @:protected override private function unregisterListeners() : Void;
	
	/**
	* Invoked when the mouse has been clicked on a component.
	* <P>
	* @param e the <code>MouseEvent</code>
	*/
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button has been
	* pressed on a <code>Component</code>.
	* <P>
	* @param e the <code>MouseEvent</code>
	*/
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button has been released on a component.
	* <P>
	* @param e the <code>MouseEvent</code>
	*/
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse enters a component.
	* <P>
	* @param e the <code>MouseEvent</code>
	*/
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse exits a component.
	* <P>
	* @param e the <code>MouseEvent</code>
	*/
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button is pressed on a component.
	* <P>
	* @param e the <code>MouseEvent</code>
	*/
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse button has been moved on a component
	* (with no buttons no down).
	* <P>
	* @param e the <code>MouseEvent</code>
	*/
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
