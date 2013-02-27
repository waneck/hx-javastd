package java.awt.dnd;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface DropTargetListener extends java.util.EventListener
{
	/**
	* Called while a drag operation is ongoing, when the mouse pointer enters
	* the operable part of the drop site for the <code>DropTarget</code>
	* registered with this listener.
	*
	* @param dtde the <code>DropTargetDragEvent</code>
	*/
	@:overload public function dragEnter(dtde : java.awt.dnd.DropTargetDragEvent) : Void;
	
	/**
	* Called when a drag operation is ongoing, while the mouse pointer is still
	* over the operable part of the drop site for the <code>DropTarget</code>
	* registered with this listener.
	*
	* @param dtde the <code>DropTargetDragEvent</code>
	*/
	@:overload public function dragOver(dtde : java.awt.dnd.DropTargetDragEvent) : Void;
	
	/**
	* Called if the user has modified
	* the current drop gesture.
	* <P>
	* @param dtde the <code>DropTargetDragEvent</code>
	*/
	@:overload public function dropActionChanged(dtde : java.awt.dnd.DropTargetDragEvent) : Void;
	
	/**
	* Called while a drag operation is ongoing, when the mouse pointer has
	* exited the operable part of the drop site for the
	* <code>DropTarget</code> registered with this listener.
	*
	* @param dte the <code>DropTargetEvent</code>
	*/
	@:overload public function dragExit(dte : java.awt.dnd.DropTargetEvent) : Void;
	
	/**
	* Called when the drag operation has terminated with a drop on
	* the operable part of the drop site for the <code>DropTarget</code>
	* registered with this listener.
	* <p>
	* This method is responsible for undertaking
	* the transfer of the data associated with the
	* gesture. The <code>DropTargetDropEvent</code>
	* provides a means to obtain a <code>Transferable</code>
	* object that represents the data object(s) to
	* be transfered.<P>
	* From this method, the <code>DropTargetListener</code>
	* shall accept or reject the drop via the
	* acceptDrop(int dropAction) or rejectDrop() methods of the
	* <code>DropTargetDropEvent</code> parameter.
	* <P>
	* Subsequent to acceptDrop(), but not before,
	* <code>DropTargetDropEvent</code>'s getTransferable()
	* method may be invoked, and data transfer may be
	* performed via the returned <code>Transferable</code>'s
	* getTransferData() method.
	* <P>
	* At the completion of a drop, an implementation
	* of this method is required to signal the success/failure
	* of the drop by passing an appropriate
	* <code>boolean</code> to the <code>DropTargetDropEvent</code>'s
	* dropComplete(boolean success) method.
	* <P>
	* Note: The data transfer should be completed before the call  to the
	* <code>DropTargetDropEvent</code>'s dropComplete(boolean success) method.
	* After that, a call to the getTransferData() method of the
	* <code>Transferable</code> returned by
	* <code>DropTargetDropEvent.getTransferable()</code> is guaranteed to
	* succeed only if the data transfer is local; that is, only if
	* <code>DropTargetDropEvent.isLocalTransfer()</code> returns
	* <code>true</code>. Otherwise, the behavior of the call is
	* implementation-dependent.
	* <P>
	* @param dtde the <code>DropTargetDropEvent</code>
	*/
	@:overload public function drop(dtde : java.awt.dnd.DropTargetDropEvent) : Void;
	
	
}
