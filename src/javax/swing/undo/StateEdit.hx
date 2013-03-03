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
extern class StateEdit extends javax.swing.undo.AbstractUndoableEdit
{
	/**
	* <P>StateEdit is a general edit for objects that change state.
	* Objects being edited must conform to the StateEditable interface.</P>
	*
	* <P>This edit class works by asking an object to store it's state in
	* Hashtables before and after editing occurs.  Upon undo or redo the
	* object is told to restore it's state from these Hashtables.</P>
	*
	* A state edit is used as follows:
	* <PRE>
	*      // Create the edit during the "before" state of the object
	*      StateEdit newEdit = new StateEdit(myObject);
	*      // Modify the object
	*      myObject.someStateModifyingMethod();
	*      // "end" the edit when you are done modifying the object
	*      newEdit.end();
	* </PRE>
	*
	* <P><EM>Note that when a StateEdit ends, it removes redundant state from
	* the Hashtables - A state Hashtable is not guaranteed to contain all
	* keys/values placed into it when the state is stored!</EM></P>
	*
	* @see StateEditable
	*
	* @author Ray Ryan
	*/
	@:protected @:static @:final private static var RCSID(default, null) : String;
	
	/**
	* The object being edited
	*/
	@:protected private var object : javax.swing.undo.StateEditable;
	
	/**
	* The state information prior to the edit
	*/
	@:protected private var preState : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* The state information after the edit
	*/
	@:protected private var postState : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* The undo/redo presentation name
	*/
	@:protected private var undoRedoName : String;
	
	/**
	* Create and return a new StateEdit.
	*
	* @param anObject The object to watch for changing state
	*
	* @see StateEdit
	*/
	@:overload @:public public function new(anObject : javax.swing.undo.StateEditable) : Void;
	
	/**
	* Create and return a new StateEdit with a presentation name.
	*
	* @param anObject The object to watch for changing state
	* @param name The presentation name to be used for this edit
	*
	* @see StateEdit
	*/
	@:overload @:public public function new(anObject : javax.swing.undo.StateEditable, name : String) : Void;
	
	@:overload @:protected private function init(anObject : javax.swing.undo.StateEditable, name : String) : Void;
	
	/**
	* Gets the post-edit state of the StateEditable object and
	* ends the edit.
	*/
	@:overload @:public public function end() : Void;
	
	/**
	* Tells the edited object to apply the state prior to the edit
	*/
	@:overload @:public override public function undo() : Void;
	
	/**
	* Tells the edited object to apply the state after the edit
	*/
	@:overload @:public override public function redo() : Void;
	
	/**
	* Gets the presentation name for this edit
	*/
	@:overload @:public override public function getPresentationName() : String;
	
	/**
	* Remove redundant key/values in state hashtables.
	*/
	@:overload @:protected private function removeRedundantState() : Void;
	
	
}
