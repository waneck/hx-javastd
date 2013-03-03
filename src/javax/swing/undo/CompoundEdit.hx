package javax.swing.undo;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
* A concrete subclass of AbstractUndoableEdit, used to assemble little
* UndoableEdits into great big ones.
*
* @author Ray Ryan
*/
extern class CompoundEdit extends javax.swing.undo.AbstractUndoableEdit
{
	/**
	* The collection of <code>UndoableEdit</code>s
	* undone/redone en masse by this <code>CompoundEdit</code>.
	*/
	@:protected private var edits : java.util.Vector<javax.swing.undo.UndoableEdit>;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Sends <code>undo</code> to all contained
	* <code>UndoableEdits</code> in the reverse of
	* the order in which they were added.
	*/
	@:overload @:public override public function undo() : Void;
	
	/**
	* Sends <code>redo</code> to all contained
	* <code>UndoableEdit</code>s in the order in
	* which they were added.
	*/
	@:overload @:public override public function redo() : Void;
	
	/**
	* Returns the last <code>UndoableEdit</code> in
	* <code>edits</code>, or <code>null</code>
	* if <code>edits</code> is empty.
	*/
	@:overload @:protected private function lastEdit() : javax.swing.undo.UndoableEdit;
	
	/**
	* Sends <code>die</code> to each subedit,
	* in the reverse of the order that they were added.
	*/
	@:overload @:public override public function die() : Void;
	
	/**
	* If this edit is <code>inProgress</code>,
	* accepts <code>anEdit</code> and returns true.
	*
	* <p>The last edit added to this <code>CompoundEdit</code>
	* is given a chance to <code>addEdit(anEdit)</code>.
	* If it refuses (returns false), <code>anEdit</code> is
	* given a chance to <code>replaceEdit</code> the last edit.
	* If <code>anEdit</code> returns false here,
	* it is added to <code>edits</code>.
	*
	* @param anEdit the edit to be added
	* @return true if the edit is <code>inProgress</code>;
	*  otherwise returns false
	*/
	@:overload @:public override public function addEdit(anEdit : javax.swing.undo.UndoableEdit) : Bool;
	
	/**
	* Sets <code>inProgress</code> to false.
	*
	* @see #canUndo
	* @see #canRedo
	*/
	@:overload @:public public function end() : Void;
	
	/**
	* Returns false if <code>isInProgress</code> or if super
	* returns false.
	*
	* @see     #isInProgress
	*/
	@:overload @:public override public function canUndo() : Bool;
	
	/**
	* Returns false if <code>isInProgress</code> or if super
	* returns false.
	*
	* @see     #isInProgress
	*/
	@:overload @:public override public function canRedo() : Bool;
	
	/**
	* Returns true if this edit is in progress--that is, it has not
	* received end. This generally means that edits are still being
	* added to it.
	*
	* @see     #end
	*/
	@:overload @:public public function isInProgress() : Bool;
	
	/**
	* Returns true if any of the <code>UndoableEdit</code>s
	* in <code>edits</code> do.
	* Returns false if they all return false.
	*/
	@:overload @:public override public function isSignificant() : Bool;
	
	/**
	* Returns <code>getPresentationName</code> from the
	* last <code>UndoableEdit</code> added to
	* <code>edits</code>. If <code>edits</code> is empty,
	* calls super.
	*/
	@:overload @:public override public function getPresentationName() : String;
	
	/**
	* Returns <code>getUndoPresentationName</code>
	* from the last <code>UndoableEdit</code>
	* added to <code>edits</code>.
	* If <code>edits</code> is empty, calls super.
	*/
	@:overload @:public override public function getUndoPresentationName() : String;
	
	/**
	* Returns <code>getRedoPresentationName</code>
	* from the last <code>UndoableEdit</code>
	* added to <code>edits</code>.
	* If <code>edits</code> is empty, calls super.
	*/
	@:overload @:public override public function getRedoPresentationName() : String;
	
	/**
	* Returns a string that displays and identifies this
	* object's properties.
	*
	* @return a String representation of this object
	*/
	@:overload @:public override public function toString() : String;
	
	
}
