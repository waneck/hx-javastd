package javax.swing;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractCellEditor implements javax.swing.CellEditor implements java.io.Serializable
{
	/**
	*
	* A base class for <code>CellEditors</code>, providing default
	* implementations for the methods in the <code>CellEditor</code>
	* interface except <code>getCellEditorValue()</code>.
	* Like the other abstract implementations in Swing, also manages a list
	* of listeners.
	*
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases. The current serialization support is
	* appropriate for short term storage or RMI between applications running
	* the same version of Swing.  As of 1.4, support for long term storage
	* of all JavaBeans<sup><font size="-2">TM</font></sup>
	* has been added to the <code>java.beans</code> package.
	* Please see {@link java.beans.XMLEncoder}.
	*
	* @author Philip Milne
	* @since 1.3
	*/
	@:require(java3) private var listenerList : javax.swing.event.EventListenerList;
	
	@:transient private var changeEvent : javax.swing.event.ChangeEvent;
	
	/**
	* Returns true.
	* @param e  an event object
	* @return true
	*/
	@:overload public function isCellEditable(e : java.util.EventObject) : Bool;
	
	/**
	* Returns true.
	* @param anEvent  an event object
	* @return true
	*/
	@:overload public function shouldSelectCell(anEvent : java.util.EventObject) : Bool;
	
	/**
	* Calls <code>fireEditingStopped</code> and returns true.
	* @return true
	*/
	@:overload public function stopCellEditing() : Bool;
	
	/**
	* Calls <code>fireEditingCanceled</code>.
	*/
	@:overload public function cancelCellEditing() : Void;
	
	/**
	* Adds a <code>CellEditorListener</code> to the listener list.
	* @param l  the new listener to be added
	*/
	@:overload public function addCellEditorListener(l : javax.swing.event.CellEditorListener) : Void;
	
	/**
	* Removes a <code>CellEditorListener</code> from the listener list.
	* @param l  the listener to be removed
	*/
	@:overload public function removeCellEditorListener(l : javax.swing.event.CellEditorListener) : Void;
	
	/**
	* Returns an array of all the <code>CellEditorListener</code>s added
	* to this AbstractCellEditor with addCellEditorListener().
	*
	* @return all of the <code>CellEditorListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getCellEditorListeners() : java.NativeArray<javax.swing.event.CellEditorListener>;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is created lazily.
	*
	* @see EventListenerList
	*/
	@:overload private function fireEditingStopped() : Void;
	
	/**
	* Notifies all listeners that have registered interest for
	* notification on this event type.  The event instance
	* is created lazily.
	*
	* @see EventListenerList
	*/
	@:overload private function fireEditingCanceled() : Void;
	
	/**
	* Returns the value contained in the editor.
	* @return the value contained in the editor
	*/
	@:overload @:public public function getCellEditorValue() : Dynamic;
	
	
}
