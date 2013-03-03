package javax.swing.plaf;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
extern class TreeUI extends javax.swing.plaf.ComponentUI
{
	/**
	* Returns the Rectangle enclosing the label portion that the
	* last item in path will be drawn into.  Will return null if
	* any component in path is currently valid.
	*/
	@:overload @:public @:abstract public function getPathBounds(tree : javax.swing.JTree, path : javax.swing.tree.TreePath) : java.awt.Rectangle;
	
	/**
	* Returns the path for passed in row.  If row is not visible
	* null is returned.
	*/
	@:overload @:public @:abstract public function getPathForRow(tree : javax.swing.JTree, row : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns the row that the last item identified in path is visible
	* at.  Will return -1 if any of the elements in path are not
	* currently visible.
	*/
	@:overload @:public @:abstract public function getRowForPath(tree : javax.swing.JTree, path : javax.swing.tree.TreePath) : Int;
	
	/**
	* Returns the number of rows that are being displayed.
	*/
	@:overload @:public @:abstract public function getRowCount(tree : javax.swing.JTree) : Int;
	
	/**
	* Returns the path to the node that is closest to x,y.  If
	* there is nothing currently visible this will return null, otherwise
	* it'll always return a valid path.  If you need to test if the
	* returned object is exactly at x, y you should get the bounds for
	* the returned path and test x, y against that.
	*/
	@:overload @:public @:abstract public function getClosestPathForLocation(tree : javax.swing.JTree, x : Int, y : Int) : javax.swing.tree.TreePath;
	
	/**
	* Returns true if the tree is being edited.  The item that is being
	* edited can be returned by getEditingPath().
	*/
	@:overload @:public @:abstract public function isEditing(tree : javax.swing.JTree) : Bool;
	
	/**
	* Stops the current editing session.  This has no effect if the
	* tree isn't being edited.  Returns true if the editor allows the
	* editing session to stop.
	*/
	@:overload @:public @:abstract public function stopEditing(tree : javax.swing.JTree) : Bool;
	
	/**
	* Cancels the current editing session. This has no effect if the
	* tree isn't being edited.  Returns true if the editor allows the
	* editing session to stop.
	*/
	@:overload @:public @:abstract public function cancelEditing(tree : javax.swing.JTree) : Void;
	
	/**
	* Selects the last item in path and tries to edit it.  Editing will
	* fail if the CellEditor won't allow it for the selected item.
	*/
	@:overload @:public @:abstract public function startEditingAtPath(tree : javax.swing.JTree, path : javax.swing.tree.TreePath) : Void;
	
	/**
	* Returns the path to the element that is being edited.
	*/
	@:overload @:public @:abstract public function getEditingPath(tree : javax.swing.JTree) : javax.swing.tree.TreePath;
	
	
}
