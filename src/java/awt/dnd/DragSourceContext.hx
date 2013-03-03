package java.awt.dnd;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DragSourceContext implements java.awt.dnd.DragSourceListener implements java.awt.dnd.DragSourceMotionListener implements java.io.Serializable
{
	/**
	* An <code>int</code> used by updateCurrentCursor()
	* indicating that the <code>Cursor</code> should change
	* to the default (no drop) <code>Cursor</code>.
	*/
	@:protected @:static @:final private static var DEFAULT(default, null) : Int;
	
	/**
	* An <code>int</code> used by updateCurrentCursor()
	* indicating that the <code>Cursor</code>
	* has entered a <code>DropTarget</code>.
	*/
	@:protected @:static @:final private static var ENTER(default, null) : Int;
	
	/**
	* An <code>int</code> used by updateCurrentCursor()
	* indicating that the <code>Cursor</code> is
	* over a <code>DropTarget</code>.
	*/
	@:protected @:static @:final private static var OVER(default, null) : Int;
	
	/**
	* An <code>int</code> used by updateCurrentCursor()
	* indicating that the user operation has changed.
	*/
	@:protected @:static @:final private static var CHANGED(default, null) : Int;
	
	/**
	* Called from <code>DragSource</code>, this constructor creates a new
	* <code>DragSourceContext</code> given the
	* <code>DragSourceContextPeer</code> for this Drag, the
	* <code>DragGestureEvent</code> that triggered the Drag, the initial
	* <code>Cursor</code> to use for the Drag, an (optional)
	* <code>Image</code> to display while the Drag is taking place, the offset
	* of the <code>Image</code> origin from the hotspot at the instant of the
	* triggering event, the <code>Transferable</code> subject data, and the
	* <code>DragSourceListener</code> to use during the Drag and Drop
	* operation.
	* <br>
	* If <code>DragSourceContextPeer</code> is <code>null</code>
	* <code>NullPointerException</code> is thrown.
	* <br>
	* If <code>DragGestureEvent</code> is <code>null</code>
	* <code>NullPointerException</code> is thrown.
	* <br>
	* If <code>Cursor</code> is <code>null</code> no exception is thrown and
	* the default drag cursor behavior is activated for this drag operation.
	* <br>
	* If <code>Image</code> is <code>null</code> no exception is thrown.
	* <br>
	* If <code>Image</code> is not <code>null</code> and the offset is
	* <code>null</code> <code>NullPointerException</code> is thrown.
	* <br>
	* If <code>Transferable</code> is <code>null</code>
	* <code>NullPointerException</code> is thrown.
	* <br>
	* If <code>DragSourceListener</code> is <code>null</code> no exception
	* is thrown.
	*
	* @param dscp       the <code>DragSourceContextPeer</code> for this drag
	* @param trigger    the triggering event
	* @param dragCursor     the initial {@code Cursor} for this drag operation
	*                       or {@code null} for the default cursor handling;
	*                       see <a href="DragSourceContext.html#defaultCursor">class level documentation</a>
	*                       for more details on the cursor handling mechanism during drag and drop
	* @param dragImage  the <code>Image</code> to drag (or <code>null</code>)
	* @param offset     the offset of the image origin from the hotspot at the
	*                   instant of the triggering event
	* @param t          the <code>Transferable</code>
	* @param dsl        the <code>DragSourceListener</code>
	*
	* @throws IllegalArgumentException if the <code>Component</code> associated
	*         with the trigger event is <code>null</code>.
	* @throws IllegalArgumentException if the <code>DragSource</code> for the
	*         trigger event is <code>null</code>.
	* @throws IllegalArgumentException if the drag action for the
	*         trigger event is <code>DnDConstants.ACTION_NONE</code>.
	* @throws IllegalArgumentException if the source actions for the
	*         <code>DragGestureRecognizer</code> associated with the trigger
	*         event are equal to <code>DnDConstants.ACTION_NONE</code>.
	* @throws NullPointerException if dscp, trigger, or t are null, or
	*         if dragImage is non-null and offset is null
	*/
	@:overload @:public public function new(dscp : java.awt.dnd.peer.DragSourceContextPeer, trigger : java.awt.dnd.DragGestureEvent, dragCursor : java.awt.Cursor, dragImage : java.awt.Image, offset : java.awt.Point, t : java.awt.datatransfer.Transferable, dsl : java.awt.dnd.DragSourceListener) : Void;
	
	/**
	* Returns the <code>DragSource</code>
	* that instantiated this <code>DragSourceContext</code>.
	*
	* @return the <code>DragSource</code> that
	*   instantiated this <code>DragSourceContext</code>
	*/
	@:overload @:public public function getDragSource() : java.awt.dnd.DragSource;
	
	/**
	* Returns the <code>Component</code> associated with this
	* <code>DragSourceContext</code>.
	*
	* @return the <code>Component</code> that started the drag
	*/
	@:overload @:public public function getComponent() : java.awt.Component;
	
	/**
	* Returns the <code>DragGestureEvent</code>
	* that initially triggered the drag.
	*
	* @return the Event that triggered the drag
	*/
	@:overload @:public public function getTrigger() : java.awt.dnd.DragGestureEvent;
	
	/**
	* Returns a bitwise mask of <code>DnDConstants</code> that
	* represent the set of drop actions supported by the drag source for the
	* drag operation associated with this <code>DragSourceContext</code>.
	*
	* @return the drop actions supported by the drag source
	*/
	@:overload @:public public function getSourceActions() : Int;
	
	/**
	* Sets the cursor for this drag operation to the specified
	* <code>Cursor</code>.  If the specified <code>Cursor</code>
	* is <code>null</code>, the default drag cursor behavior is
	* activated for this drag operation, otherwise it is deactivated.
	*
	* @param c     the initial {@code Cursor} for this drag operation,
	*                       or {@code null} for the default cursor handling;
	*                       see {@linkplain Cursor class
	*                       level documentation} for more details
	*                       on the cursor handling during drag and drop
	*
	*/
	@:overload @:public @:synchronized public function setCursor(c : java.awt.Cursor) : Void;
	
	/**
	* Returns the current drag <code>Cursor</code>.
	* <P>
	* @return the current drag <code>Cursor</code>
	*/
	@:overload @:public public function getCursor() : java.awt.Cursor;
	
	/**
	* Add a <code>DragSourceListener</code> to this
	* <code>DragSourceContext</code> if one has not already been added.
	* If a <code>DragSourceListener</code> already exists,
	* this method throws a <code>TooManyListenersException</code>.
	* <P>
	* @param dsl the <code>DragSourceListener</code> to add.
	* Note that while <code>null</code> is not prohibited,
	* it is not acceptable as a parameter.
	* <P>
	* @throws TooManyListenersException if
	* a <code>DragSourceListener</code> has already been added
	*/
	@:overload @:public @:synchronized public function addDragSourceListener(dsl : java.awt.dnd.DragSourceListener) : Void;
	
	/**
	* Removes the specified <code>DragSourceListener</code>
	* from  this <code>DragSourceContext</code>.
	*
	* @param dsl the <code>DragSourceListener</code> to remove;
	*     note that while <code>null</code> is not prohibited,
	*     it is not acceptable as a parameter
	*/
	@:overload @:public @:synchronized public function removeDragSourceListener(dsl : java.awt.dnd.DragSourceListener) : Void;
	
	/**
	* Notifies the peer that the <code>Transferable</code>'s
	* <code>DataFlavor</code>s have changed.
	*/
	@:overload @:public public function transferablesFlavorsChanged() : Void;
	
	/**
	* Calls <code>dragEnter</code> on the
	* <code>DragSourceListener</code>s registered with this
	* <code>DragSourceContext</code> and with the associated
	* <code>DragSource</code>, and passes them the specified
	* <code>DragSourceDragEvent</code>.
	*
	* @param dsde the <code>DragSourceDragEvent</code>
	*/
	@:overload @:public public function dragEnter(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* Calls <code>dragOver</code> on the
	* <code>DragSourceListener</code>s registered with this
	* <code>DragSourceContext</code> and with the associated
	* <code>DragSource</code>, and passes them the specified
	* <code>DragSourceDragEvent</code>.
	*
	* @param dsde the <code>DragSourceDragEvent</code>
	*/
	@:overload @:public public function dragOver(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* Calls <code>dragExit</code> on the
	* <code>DragSourceListener</code>s registered with this
	* <code>DragSourceContext</code> and with the associated
	* <code>DragSource</code>, and passes them the specified
	* <code>DragSourceEvent</code>.
	*
	* @param dse the <code>DragSourceEvent</code>
	*/
	@:overload @:public public function dragExit(dse : java.awt.dnd.DragSourceEvent) : Void;
	
	/**
	* Calls <code>dropActionChanged</code> on the
	* <code>DragSourceListener</code>s registered with this
	* <code>DragSourceContext</code> and with the associated
	* <code>DragSource</code>, and passes them the specified
	* <code>DragSourceDragEvent</code>.
	*
	* @param dsde the <code>DragSourceDragEvent</code>
	*/
	@:overload @:public public function dropActionChanged(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* Calls <code>dragDropEnd</code> on the
	* <code>DragSourceListener</code>s registered with this
	* <code>DragSourceContext</code> and with the associated
	* <code>DragSource</code>, and passes them the specified
	* <code>DragSourceDropEvent</code>.
	*
	* @param dsde the <code>DragSourceDropEvent</code>
	*/
	@:overload @:public public function dragDropEnd(dsde : java.awt.dnd.DragSourceDropEvent) : Void;
	
	/**
	* Calls <code>dragMouseMoved</code> on the
	* <code>DragSourceMotionListener</code>s registered with the
	* <code>DragSource</code> associated with this
	* <code>DragSourceContext</code>, and them passes the specified
	* <code>DragSourceDragEvent</code>.
	*
	* @param dsde the <code>DragSourceDragEvent</code>
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function dragMouseMoved(dsde : java.awt.dnd.DragSourceDragEvent) : Void;
	
	/**
	* Returns the <code>Transferable</code> associated with
	* this <code>DragSourceContext</code>.
	*
	* @return the <code>Transferable</code>
	*/
	@:overload @:public public function getTransferable() : java.awt.datatransfer.Transferable;
	
	/**
	* If the default drag cursor behavior is active, this method
	* sets the default drag cursor for the specified actions
	* supported by the drag source, the drop target action,
	* and status, otherwise this method does nothing.
	*
	* @param sourceAct the actions supported by the drag source
	* @param targetAct the drop target action
	* @param status one of the fields <code>DEFAULT</code>,
	*               <code>ENTER</code>, <code>OVER</code>,
	*               <code>CHANGED</code>
	*/
	@:overload @:protected @:synchronized private function updateCurrentCursor(sourceAct : Int, targetAct : Int, status : Int) : Void;
	
	
}
