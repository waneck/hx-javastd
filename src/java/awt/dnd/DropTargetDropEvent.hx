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
extern class DropTargetDropEvent extends java.awt.dnd.DropTargetEvent
{
	/**
	* Construct a <code>DropTargetDropEvent</code> given
	* the <code>DropTargetContext</code> for this operation,
	* the location of the drag <code>Cursor</code>'s
	* hotspot in the <code>Component</code>'s coordinates,
	* the currently
	* selected user drop action, and the current set of
	* actions supported by the source.
	* By default, this constructor
	* assumes that the target is not in the same virtual machine as
	* the source; that is, {@link #isLocalTransfer()} will
	* return <code>false</code>.
	* <P>
	* @param dtc        The <code>DropTargetContext</code> for this operation
	* @param cursorLocn The location of the "Drag" Cursor's
	* hotspot in <code>Component</code> coordinates
	* @param dropAction the user drop action.
	* @param srcActions the source drop actions.
	*
	* @throws <code>NullPointerException</code>
	* if cursorLocn is <code>null</code>
	* @throws <code>IllegalArgumentException</code> if dropAction is not one of
	*         <code>DnDConstants</code>.
	* @throws <code>IllegalArgumentException</code> if srcActions is not
	*         a bitwise mask of <code>DnDConstants</code>.
	* @throws <code>IllegalArgumentException</code> if dtc is <code>null</code>.
	*/
	@:overload public function new(dtc : java.awt.dnd.DropTargetContext, cursorLocn : java.awt.Point, dropAction : Int, srcActions : Int) : Void;
	
	/**
	* Construct a <code>DropTargetEvent</code> given the
	* <code>DropTargetContext</code> for this operation,
	* the location of the drag <code>Cursor</code>'s hotspot
	* in the <code>Component</code>'s
	* coordinates, the currently selected user drop action,
	* the current set of actions supported by the source,
	* and a <code>boolean</code> indicating if the source is in the same JVM
	* as the target.
	* <P>
	* @param dtc        The DropTargetContext for this operation
	* @param cursorLocn The location of the "Drag" Cursor's
	* hotspot in Component's coordinates
	* @param dropAction the user drop action.
	* @param srcActions the source drop actions.
	* @param isLocal  True if the source is in the same JVM as the target
	*
	* @throws <code>NullPointerException</code> if cursorLocn is
	*         <code>null</code>
	* @throws <code>IllegalArgumentException</code> if dropAction is not one of
	*         <code>DnDConstants</code>.
	* @throws <code>IllegalArgumentException</code> if srcActions is not
	*         a bitwise mask of <code>DnDConstants</code>.
	* @throws <code>IllegalArgumentException</code> if dtc is <code>null</code>.
	*/
	@:overload public function new(dtc : java.awt.dnd.DropTargetContext, cursorLocn : java.awt.Point, dropAction : Int, srcActions : Int, isLocal : Bool) : Void;
	
	/**
	* This method returns a <code>Point</code>
	* indicating the <code>Cursor</code>'s current
	* location in the <code>Component</code>'s coordinates.
	* <P>
	* @return the current <code>Cursor</code> location in Component's coords.
	*/
	@:overload public function getLocation() : java.awt.Point;
	
	/**
	* This method returns the current DataFlavors.
	* <P>
	* @return current DataFlavors
	*/
	@:overload public function getCurrentDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* This method returns the currently available
	* <code>DataFlavor</code>s as a <code>java.util.List</code>.
	* <P>
	* @return the currently available DataFlavors as a java.util.List
	*/
	@:overload public function getCurrentDataFlavorsAsList() : java.util.List<java.awt.datatransfer.DataFlavor>;
	
	/**
	* This method returns a <code>boolean</code> indicating if the
	* specified <code>DataFlavor</code> is available
	* from the source.
	* <P>
	* @param df the <code>DataFlavor</code> to test
	* <P>
	* @return if the DataFlavor specified is available from the source
	*/
	@:overload public function isDataFlavorSupported(df : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* This method returns the source drop actions.
	*
	* @return the source drop actions.
	*/
	@:overload public function getSourceActions() : Int;
	
	/**
	* This method returns the user drop action.
	*
	* @return the user drop actions.
	*/
	@:overload public function getDropAction() : Int;
	
	/**
	* This method returns the <code>Transferable</code> object
	* associated with the drop.
	* <P>
	* @return the <code>Transferable</code> associated with the drop
	*/
	@:overload public function getTransferable() : java.awt.datatransfer.Transferable;
	
	/**
	* accept the drop, using the specified action.
	* <P>
	* @param dropAction the specified action
	*/
	@:overload public function acceptDrop(dropAction : Int) : Void;
	
	/**
	* reject the Drop.
	*/
	@:overload public function rejectDrop() : Void;
	
	/**
	* This method notifies the <code>DragSource</code>
	* that the drop transfer(s) are completed.
	* <P>
	* @param success a <code>boolean</code> indicating that the drop transfer(s) are completed.
	*/
	@:overload public function dropComplete(success : Bool) : Void;
	
	/**
	* This method returns an <code>int</code> indicating if
	* the source is in the same JVM as the target.
	* <P>
	* @return if the Source is in the same JVM
	*/
	@:overload public function isLocalTransfer() : Bool;
	
	
}
