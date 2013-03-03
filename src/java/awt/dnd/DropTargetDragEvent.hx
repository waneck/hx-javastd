package java.awt.dnd;
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
extern class DropTargetDragEvent extends java.awt.dnd.DropTargetEvent
{
	/**
	* Construct a <code>DropTargetDragEvent</code> given the
	* <code>DropTargetContext</code> for this operation,
	* the location of the "Drag" <code>Cursor</code>'s hotspot
	* in the <code>Component</code>'s coordinates, the
	* user drop action, and the source drop actions.
	* <P>
	* @param dtc        The DropTargetContext for this operation
	* @param cursorLocn The location of the "Drag" Cursor's
	* hotspot in Component coordinates
	* @param dropAction The user drop action
	* @param srcActions The source drop actions
	*
	* @throws NullPointerException if cursorLocn is null
	* @throws <code>IllegalArgumentException</code> if dropAction is not one of
	*         <code>DnDConstants</code>.
	* @throws <code>IllegalArgumentException</code> if srcActions is not
	*         a bitwise mask of <code>DnDConstants</code>.
	* @throws <code>IllegalArgumentException</code> if dtc is <code>null</code>.
	*/
	@:overload @:public public function new(dtc : java.awt.dnd.DropTargetContext, cursorLocn : java.awt.Point, dropAction : Int, srcActions : Int) : Void;
	
	/**
	* This method returns a <code>Point</code>
	* indicating the <code>Cursor</code>'s current
	* location within the <code>Component'</code>s
	* coordinates.
	* <P>
	* @return the current cursor location in
	* <code>Component</code>'s coords.
	*/
	@:overload @:public public function getLocation() : java.awt.Point;
	
	/**
	* This method returns the current <code>DataFlavor</code>s from the
	* <code>DropTargetContext</code>.
	* <P>
	* @return current DataFlavors from the DropTargetContext
	*/
	@:overload @:public public function getCurrentDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* This method returns the current <code>DataFlavor</code>s
	* as a <code>java.util.List</code>
	* <P>
	* @return a <code>java.util.List</code> of the Current <code>DataFlavor</code>s
	*/
	@:overload @:public public function getCurrentDataFlavorsAsList() : java.util.List<java.awt.datatransfer.DataFlavor>;
	
	/**
	* This method returns a <code>boolean</code> indicating
	* if the specified <code>DataFlavor</code> is supported.
	* <P>
	* @param df the <code>DataFlavor</code> to test
	* <P>
	* @return if a particular DataFlavor is supported
	*/
	@:overload @:public public function isDataFlavorSupported(df : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* This method returns the source drop actions.
	*
	* @return the source drop actions
	*/
	@:overload @:public public function getSourceActions() : Int;
	
	/**
	* This method returns the user drop action.
	*
	* @return the user drop action
	*/
	@:overload @:public public function getDropAction() : Int;
	
	/**
	* This method returns the Transferable object that represents
	* the data associated with the current drag operation.
	*
	* @return the Transferable associated with the drag operation
	* @throws InvalidDnDOperationException if the data associated with the drag
	*         operation is not available
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getTransferable() : java.awt.datatransfer.Transferable;
	
	/**
	* Accepts the drag.
	*
	* This method should be called from a
	* <code>DropTargetListeners</code> <code>dragEnter</code>,
	* <code>dragOver</code>, and <code>dropActionChanged</code>
	* methods if the implementation wishes to accept an operation
	* from the srcActions other than the one selected by
	* the user as represented by the <code>dropAction</code>.
	*
	* @param dragOperation the operation accepted by the target
	*/
	@:overload @:public public function acceptDrag(dragOperation : Int) : Void;
	
	/**
	* Rejects the drag as a result of examining either the
	* <code>dropAction</code> or the available <code>DataFlavor</code>
	* types.
	*/
	@:overload @:public public function rejectDrag() : Void;
	
	
}
