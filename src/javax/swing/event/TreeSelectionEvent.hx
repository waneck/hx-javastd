package javax.swing.event;
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
extern class TreeSelectionEvent extends java.util.EventObject
{
	/** Paths this event represents. */
	@:protected private var paths : java.NativeArray<javax.swing.tree.TreePath>;
	
	/** For each path identifies if that path is in fact new. */
	@:protected private var areNew : java.NativeArray<Bool>;
	
	/** leadSelectionPath before the paths changed, may be null. */
	@:protected private var oldLeadSelectionPath : javax.swing.tree.TreePath;
	
	/** leadSelectionPath after the paths changed, may be null. */
	@:protected private var newLeadSelectionPath : javax.swing.tree.TreePath;
	
	/**
	* Represents a change in the selection of a TreeSelectionModel.
	* paths identifies the paths that have been either added or
	* removed from the selection.
	*
	* @param source source of event
	* @param paths the paths that have changed in the selection
	*/
	@:overload @:public public function new(source : Dynamic, paths : java.NativeArray<javax.swing.tree.TreePath>, areNew : java.NativeArray<Bool>, oldLeadSelectionPath : javax.swing.tree.TreePath, newLeadSelectionPath : javax.swing.tree.TreePath) : Void;
	
	/**
	* Represents a change in the selection of a TreeSelectionModel.
	* path identifies the path that have been either added or
	* removed from the selection.
	*
	* @param source source of event
	* @param path the path that has changed in the selection
	* @param isNew whether or not the path is new to the selection, false
	* means path was removed from the selection.
	*/
	@:overload @:public public function new(source : Dynamic, path : javax.swing.tree.TreePath, isNew : Bool, oldLeadSelectionPath : javax.swing.tree.TreePath, newLeadSelectionPath : javax.swing.tree.TreePath) : Void;
	
	/**
	* Returns the paths that have been added or removed from the
	* selection.
	*/
	@:overload @:public public function getPaths() : java.NativeArray<javax.swing.tree.TreePath>;
	
	/**
	* Returns the first path element.
	*/
	@:overload @:public public function getPath() : javax.swing.tree.TreePath;
	
	/**
	* Returns whether the path identified by {@code getPath} was
	* added to the selection.  A return value of {@code true}
	* indicates the path identified by {@code getPath} was added to
	* the selection. A return value of {@code false} indicates {@code
	* getPath} was selected, but is no longer selected.
	*
	* @return {@code true} if {@code getPath} was added to the selection,
	*         {@code false} otherwise
	*/
	@:overload @:public public function isAddedPath() : Bool;
	
	/**
	* Returns whether the specified path was added to the selection.
	* A return value of {@code true} indicates the path identified by
	* {@code path} was added to the selection. A return value of
	* {@code false} indicates {@code path} is no longer selected. This method
	* is only valid for the paths returned from {@code getPaths()}; invoking
	* with a path not included in {@code getPaths()} throws an
	* {@code IllegalArgumentException}.
	*
	* @param path the path to test
	* @return {@code true} if {@code path} was added to the selection,
	*         {@code false} otherwise
	* @throws IllegalArgumentException if {@code path} is not contained
	*         in {@code getPaths}
	* @see #getPaths
	*/
	@:overload @:public public function isAddedPath(path : javax.swing.tree.TreePath) : Bool;
	
	/**
	* Returns whether the path at {@code getPaths()[index]} was added
	* to the selection.  A return value of {@code true} indicates the
	* path was added to the selection. A return value of {@code false}
	* indicates the path is no longer selected.
	*
	* @param index the index of the path to test
	* @return {@code true} if the path was added to the selection,
	*         {@code false} otherwise
	* @throws IllegalArgumentException if index is outside the range of
	*         {@code getPaths}
	* @see #getPaths
	*
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function isAddedPath(index : Int) : Bool;
	
	/**
	* Returns the path that was previously the lead path.
	*/
	@:overload @:public public function getOldLeadSelectionPath() : javax.swing.tree.TreePath;
	
	/**
	* Returns the current lead path.
	*/
	@:overload @:public public function getNewLeadSelectionPath() : javax.swing.tree.TreePath;
	
	/**
	* Returns a copy of the receiver, but with the source being newSource.
	*/
	@:overload @:public public function cloneWithSource(newSource : Dynamic) : Dynamic;
	
	
}
