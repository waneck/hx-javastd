package javax.swing.undo;
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
extern class AbstractUndoableEdit implements javax.swing.undo.UndoableEdit implements java.io.Serializable
{
	/**
	* String returned by <code>getUndoPresentationName</code>;
	* as of Java 2 platform v1.3.1 this field is no longer used. This value
	* is now localized and comes from the defaults table with key
	* <code>AbstractUndoableEdit.undoText</code>.
	*
	* @see javax.swing.UIDefaults
	*/
	private static var UndoName(default, null) : String;
	
	/**
	* String returned by <code>getRedoPresentationName</code>;
	* as of Java 2 platform v1.3.1 this field is no longer used. This value
	* is now localized and comes from the defaults table with key
	* <code>AbstractUndoableEdit.redoText</code>.
	*
	* @see javax.swing.UIDefaults
	*/
	private static var RedoName(default, null) : String;
	
	/**
	* Creates an <code>AbstractUndoableEdit</code> which defaults
	* <code>hasBeenDone</code> and <code>alive</code> to <code>true</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets <code>alive</code> to false. Note that this
	* is a one way operation; dead edits cannot be resurrected.
	* Sending <code>undo</code> or <code>redo</code> to
	* a dead edit results in an exception being thrown.
	*
	* <p>Typically an edit is killed when it is consolidated by
	* another edit's <code>addEdit</code> or <code>replaceEdit</code>
	* method, or when it is dequeued from an <code>UndoManager</code>.
	*/
	@:overload public function die() : Void;
	
	/**
	* Throws <code>CannotUndoException</code> if <code>canUndo</code>
	* returns <code>false</code>. Sets <code>hasBeenDone</code>
	* to <code>false</code>. Subclasses should override to undo the
	* operation represented by this edit. Override should begin with
	* a call to super.
	*
	* @exception CannotUndoException if <code>canUndo</code>
	*    returns <code>false</code>
	* @see     #canUndo
	*/
	@:overload public function undo() : Void;
	
	/**
	* Returns true if this edit is <code>alive</code>
	* and <code>hasBeenDone</code> is <code>true</code>.
	*
	* @return true if this edit is <code>alive</code>
	*    and <code>hasBeenDone</code> is <code>true</code>
	*
	* @see     #die
	* @see     #undo
	* @see     #redo
	*/
	@:overload public function canUndo() : Bool;
	
	/**
	* Throws <code>CannotRedoException</code> if <code>canRedo</code>
	* returns false. Sets <code>hasBeenDone</code> to <code>true</code>.
	* Subclasses should override to redo the operation represented by
	* this edit. Override should begin with a call to super.
	*
	* @exception CannotRedoException if <code>canRedo</code>
	*     returns <code>false</code>
	* @see     #canRedo
	*/
	@:overload public function redo() : Void;
	
	/**
	* Returns <code>true</code> if this edit is <code>alive</code>
	* and <code>hasBeenDone</code> is <code>false</code>.
	*
	* @return <code>true</code> if this edit is <code>alive</code>
	*   and <code>hasBeenDone</code> is <code>false</code>
	* @see     #die
	* @see     #undo
	* @see     #redo
	*/
	@:overload public function canRedo() : Bool;
	
	/**
	* This default implementation returns false.
	*
	* @param anEdit the edit to be added
	* @return false
	*
	* @see UndoableEdit#addEdit
	*/
	@:overload public function addEdit(anEdit : javax.swing.undo.UndoableEdit) : Bool;
	
	/**
	* This default implementation returns false.
	*
	* @param anEdit the edit to replace
	* @return false
	*
	* @see UndoableEdit#replaceEdit
	*/
	@:overload public function replaceEdit(anEdit : javax.swing.undo.UndoableEdit) : Bool;
	
	/**
	* This default implementation returns true.
	*
	* @return true
	* @see UndoableEdit#isSignificant
	*/
	@:overload public function isSignificant() : Bool;
	
	/**
	* This default implementation returns "". Used by
	* <code>getUndoPresentationName</code> and
	* <code>getRedoPresentationName</code> to
	* construct the strings they return. Subclasses should override to
	* return an appropriate description of the operation this edit
	* represents.
	*
	* @return the empty string ""
	*
	* @see     #getUndoPresentationName
	* @see     #getRedoPresentationName
	*/
	@:overload public function getPresentationName() : String;
	
	/**
	* Retreives the value from the defaults table with key
	* <code>AbstractUndoableEdit.undoText</code> and returns
	* that value followed by a space, followed by
	* <code>getPresentationName</code>.
	* If <code>getPresentationName</code> returns "",
	* then the defaults value is returned alone.
	*
	* @return the value from the defaults table with key
	*    <code>AbstractUndoableEdit.undoText</code>, followed
	*    by a space, followed by <code>getPresentationName</code>
	*    unless <code>getPresentationName</code> is "" in which
	*    case, the defaults value is returned alone.
	* @see #getPresentationName
	*/
	@:overload public function getUndoPresentationName() : String;
	
	/**
	* Retreives the value from the defaults table with key
	* <code>AbstractUndoableEdit.redoText</code> and returns
	* that value followed by a space, followed by
	* <code>getPresentationName</code>.
	* If <code>getPresentationName</code> returns "",
	* then the defaults value is returned alone.
	*
	* @return the value from the defaults table with key
	*    <code>AbstractUndoableEdit.redoText</code>, followed
	*    by a space, followed by <code>getPresentationName</code>
	*    unless <code>getPresentationName</code> is "" in which
	*    case, the defaults value is returned alone.
	* @see #getPresentationName
	*/
	@:overload public function getRedoPresentationName() : String;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a String representation of this object
	*/
	@:overload public function toString() : String;
	
	
}
