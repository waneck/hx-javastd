package javax.swing.undo;
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
/**
* A support class used for managing <code>UndoableEdit</code> listeners.
*
* @author Ray Ryan
*/
extern class UndoableEditSupport
{
	private var updateLevel : Int;
	
	private var compoundEdit : javax.swing.undo.CompoundEdit;
	
	private var listeners : java.util.Vector<javax.swing.event.UndoableEditListener>;
	
	private var realSource : Dynamic;
	
	/**
	* Constructs an <code>UndoableEditSupport</code> object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs an <code>UndoableEditSupport</code> object.
	*
	* @param r  an <code>Object</code>
	*/
	@:overload public function new(r : Dynamic) : Void;
	
	/**
	* Registers an <code>UndoableEditListener</code>.
	* The listener is notified whenever an edit occurs which can be undone.
	*
	* @param l  an <code>UndoableEditListener</code> object
	* @see #removeUndoableEditListener
	*/
	@:overload @:synchronized public function addUndoableEditListener(l : javax.swing.event.UndoableEditListener) : Void;
	
	/**
	* Removes an <code>UndoableEditListener</code>.
	*
	* @param l  the <code>UndoableEditListener</code> object to be removed
	* @see #addUndoableEditListener
	*/
	@:overload @:synchronized public function removeUndoableEditListener(l : javax.swing.event.UndoableEditListener) : Void;
	
	/**
	* Returns an array of all the <code>UndoableEditListener</code>s added
	* to this UndoableEditSupport with addUndoableEditListener().
	*
	* @return all of the <code>UndoableEditListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized public function getUndoableEditListeners() : java.NativeArray<javax.swing.event.UndoableEditListener>;
	
	/**
	* Called only from <code>postEdit</code> and <code>endUpdate</code>. Calls
	* <code>undoableEditHappened</code> in all listeners. No synchronization
	* is performed here, since the two calling methods are synchronized.
	*/
	@:overload private function _postEdit(e : javax.swing.undo.UndoableEdit) : Void;
	
	/**
	* DEADLOCK WARNING: Calling this method may call
	* <code>undoableEditHappened</code> in all listeners.
	* It is unwise to call this method from one of its listeners.
	*/
	@:overload @:synchronized public function postEdit(e : javax.swing.undo.UndoableEdit) : Void;
	
	/**
	* Returns the update level value.
	*
	* @return an integer representing the update level
	*/
	@:overload public function getUpdateLevel() : Int;
	
	/**
	*
	*/
	@:overload @:synchronized public function beginUpdate() : Void;
	
	/**
	* Called only from <code>beginUpdate</code>.
	* Exposed here for subclasses' use.
	*/
	@:overload private function createCompoundEdit() : javax.swing.undo.CompoundEdit;
	
	/**
	* DEADLOCK WARNING: Calling this method may call
	* <code>undoableEditHappened</code> in all listeners.
	* It is unwise to call this method from one of its listeners.
	*/
	@:overload @:synchronized public function endUpdate() : Void;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a <code>String</code> representation of this object
	*/
	@:overload public function toString() : String;
	
	
}
