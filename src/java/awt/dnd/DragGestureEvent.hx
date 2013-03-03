package java.awt.dnd;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DragGestureEvent extends java.util.EventObject
{
	/**
	* Constructs a <code>DragGestureEvent</code> object given by the
	* <code>DragGestureRecognizer</code> instance firing this event,
	* an {@code act} parameter representing
	* the user's preferred action, an {@code ori} parameter
	* indicating the origin of the drag, and a {@code List} of
	* events that comprise the gesture({@code evs} parameter).
	* <P>
	* @param dgr The <code>DragGestureRecognizer</code> firing this event
	* @param act The user's preferred action.
	*            For information on allowable values, see
	*            the class description for {@link DragGestureEvent}
	* @param ori The origin of the drag
	* @param evs The <code>List</code> of events that comprise the gesture
	* <P>
	* @throws IllegalArgumentException if any parameter equals {@code null}
	* @throws IllegalArgumentException if the act parameter does not comply with
	*                                  the values given in the class
	*                                  description for {@link DragGestureEvent}
	* @see java.awt.dnd.DnDConstants
	*/
	@:overload @:public public function new(dgr : java.awt.dnd.DragGestureRecognizer, act : Int, ori : java.awt.Point, evs : java.util.List<java.awt.event.InputEvent>) : Void;
	
	/**
	* Returns the source as a <code>DragGestureRecognizer</code>.
	* <P>
	* @return the source as a <code>DragGestureRecognizer</code>
	*/
	@:overload @:public public function getSourceAsDragGestureRecognizer() : java.awt.dnd.DragGestureRecognizer;
	
	/**
	* Returns the <code>Component</code> associated
	* with this <code>DragGestureEvent</code>.
	* <P>
	* @return the Component
	*/
	@:overload @:public public function getComponent() : java.awt.Component;
	
	/**
	* Returns the <code>DragSource</code>.
	* <P>
	* @return the <code>DragSource</code>
	*/
	@:overload @:public public function getDragSource() : java.awt.dnd.DragSource;
	
	/**
	* Returns a <code>Point</code> in the coordinates
	* of the <code>Component</code> over which the drag originated.
	* <P>
	* @return the Point where the drag originated in Component coords.
	*/
	@:overload @:public public function getDragOrigin() : java.awt.Point;
	
	/**
	* Returns an <code>Iterator</code> for the events
	* comprising the gesture.
	* <P>
	* @return an Iterator for the events comprising the gesture
	*/
	@:overload @:public public function iterator() : java.util.Iterator<java.awt.event.InputEvent>;
	
	/**
	* Returns an <code>Object</code> array of the
	* events comprising the drag gesture.
	* <P>
	* @return an array of the events comprising the gesture
	*/
	@:overload @:public public function toArray() : java.NativeArray<Dynamic>;
	
	/**
	* Returns an array of the events comprising the drag gesture.
	* <P>
	* @param array the array of <code>EventObject</code> sub(types)
	* <P>
	* @return an array of the events comprising the gesture
	*/
	@:overload @:public public function toArray(array : java.NativeArray<Dynamic>) : java.NativeArray<Dynamic>;
	
	/**
	* Returns an <code>int</code> representing the
	* action selected by the user.
	* <P>
	* @return the action selected by the user
	*/
	@:overload @:public public function getDragAction() : Int;
	
	/**
	* Returns the initial event that triggered the gesture.
	* <P>
	* @return the first "triggering" event in the sequence of the gesture
	*/
	@:overload @:public public function getTriggerEvent() : java.awt.event.InputEvent;
	
	/**
	* Starts the drag operation given the <code>Cursor</code> for this drag
	* operation and the <code>Transferable</code> representing the source data
	* for this drag operation.
	* <br>
	* If a <code>null</code> <code>Cursor</code> is specified no exception will
	* be thrown and default drag cursors will be used instead.
	* <br>
	* If a <code>null</code> <code>Transferable</code> is specified
	* <code>NullPointerException</code> will be thrown.
	* @param dragCursor     The initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see
	*                       <a href="DragSourceContext.html#defaultCursor">DragSourceContext</a>
	*                       for more details on the cursor handling mechanism
	*                       during drag and drop
	* @param transferable The <code>Transferable</code> representing the source
	*                     data for this drag operation.
	*
	* @throws InvalidDnDOperationException if the Drag and Drop
	*         system is unable to initiate a drag operation, or if the user
	*         attempts to start a drag while an existing drag operation is
	*         still executing.
	* @throws NullPointerException if the {@code Transferable} is {@code null}
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function startDrag(dragCursor : java.awt.Cursor, transferable : java.awt.datatransfer.Transferable) : Void;
	
	/**
	* Starts the drag given the initial <code>Cursor</code> to display,
	* the <code>Transferable</code> object,
	* and the <code>DragSourceListener</code> to use.
	* <P>
	* @param dragCursor     The initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see
	*                       <a href="DragSourceContext.html#defaultCursor">DragSourceContext</a>
	*                       for more details on the cursor handling mechanism
	*                       during drag and drop
	* @param transferable The source's Transferable
	* @param dsl          The source's DragSourceListener
	* <P>
	* @throws InvalidDnDOperationException if
	* the Drag and Drop system is unable to
	* initiate a drag operation, or if the user
	* attempts to start a drag while an existing
	* drag operation is still executing.
	*/
	@:overload @:public public function startDrag(dragCursor : java.awt.Cursor, transferable : java.awt.datatransfer.Transferable, dsl : java.awt.dnd.DragSourceListener) : Void;
	
	/**
	* Start the drag given the initial <code>Cursor</code> to display,
	* a drag <code>Image</code>, the offset of
	* the <code>Image</code>,
	* the <code>Transferable</code> object, and
	* the <code>DragSourceListener</code> to use.
	* <P>
	* @param dragCursor     The initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see
	*                       <a href="DragSourceContext.html#defaultCursor">DragSourceContext</a>
	*                       for more details on the cursor handling mechanism
	*                       during drag and drop
	* @param dragImage    The source's dragImage
	* @param imageOffset  The dragImage's offset
	* @param transferable The source's Transferable
	* @param dsl          The source's DragSourceListener
	* <P>
	* @throws InvalidDnDOperationException if
	* the Drag and Drop system is unable to
	* initiate a drag operation, or if the user
	* attempts to start a drag while an existing
	* drag operation is still executing.
	*/
	@:overload @:public public function startDrag(dragCursor : java.awt.Cursor, dragImage : java.awt.Image, imageOffset : java.awt.Point, transferable : java.awt.datatransfer.Transferable, dsl : java.awt.dnd.DragSourceListener) : Void;
	
	
}
