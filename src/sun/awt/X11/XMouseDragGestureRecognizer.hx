package sun.awt.X11;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XMouseDragGestureRecognizer extends java.awt.dnd.MouseDragGestureRecognizer
{
	/*
	* constant for number of pixels hysterisis before drag is determined
	* to have started
	*/
	@:protected @:static private static var motionThreshold : Int;
	
	@:protected @:static @:final private static var ButtonMask(default, null) : Int;
	
	/**
	* construct a new XMouseDragGestureRecognizer
	*
	* @param ds  The DragSource for the Component c
	* @param c   The Component to observe
	* @param act The actions permitted for this Drag
	* @param dgl The DragGestureRecognizer to notify when a gesture is detected
	*
	*/
	@:overload @:protected private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component, act : Int, dgl : java.awt.dnd.DragGestureListener) : Void;
	
	/**
	* construct a new XMouseDragGestureRecognizer
	*
	* @param ds  The DragSource for the Component c
	* @param c   The Component to observe
	* @param act The actions permitted for this Drag
	*/
	@:overload @:protected private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component, act : Int) : Void;
	
	/**
	* construct a new XMouseDragGestureRecognizer
	*
	* @param ds  The DragSource for the Component c
	* @param c   The Component to observe
	*/
	@:overload @:protected private function new(ds : java.awt.dnd.DragSource, c : java.awt.Component) : Void;
	
	/**
	* construct a new XMouseDragGestureRecognizer
	*
	* @param ds  The DragSource for the Component c
	*/
	@:overload @:protected private function new(ds : java.awt.dnd.DragSource) : Void;
	
	/**
	* determine the drop action from the event
	*/
	@:overload @:protected private function mapDragOperationFromModifiers(e : java.awt.event.MouseEvent) : Int;
	
	/**
	* Invoked when the mouse has been clicked on a component.
	*/
	@:overload @:public override public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button has been pressed on a component.
	*/
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button has been released on a component.
	*/
	@:overload @:public override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse enters a component.
	*/
	@:overload @:public override public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse exits a component.
	*/
	@:overload @:public override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when a mouse button is pressed on a component.
	*/
	@:overload @:public override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	/**
	* Invoked when the mouse button has been moved on a component
	* (with no buttons no down).
	*/
	@:overload @:public override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
