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
extern class DropTargetContext implements java.io.Serializable
{
	/**
	* This method returns the <code>DropTarget</code> associated with this
	* <code>DropTargetContext</code>.
	* <P>
	* @return the <code>DropTarget</code> associated with this <code>DropTargetContext</code>
	*/
	@:overload public function getDropTarget() : java.awt.dnd.DropTarget;
	
	/**
	* This method returns the <code>Component</code> associated with
	* this <code>DropTargetContext</code>.
	* <P>
	* @return the Component associated with this Context
	*/
	@:overload public function getComponent() : java.awt.Component;
	
	/**
	* Called when associated with the <code>DropTargetContextPeer</code>.
	* <P>
	* @param dtcp the <code>DropTargetContextPeer</code>
	*/
	@:overload public function addNotify(dtcp : java.awt.dnd.peer.DropTargetContextPeer) : Void;
	
	/**
	* Called when disassociated with the <code>DropTargetContextPeer</code>.
	*/
	@:overload public function removeNotify() : Void;
	
	/**
	* This method sets the current actions acceptable to
	* this <code>DropTarget</code>.
	* <P>
	* @param actions an <code>int</code> representing the supported action(s)
	*/
	@:overload private function setTargetActions(actions : Int) : Void;
	
	/**
	* This method returns an <code>int</code> representing the
	* current actions this <code>DropTarget</code> will accept.
	* <P>
	* @return the current actions acceptable to this <code>DropTarget</code>
	*/
	@:overload private function getTargetActions() : Int;
	
	/**
	* This method signals that the drop is completed and
	* if it was successful or not.
	* <P>
	* @param success true for success, false if not
	* <P>
	* @throws InvalidDnDOperationException if a drop is not outstanding/extant
	*/
	@:overload public function dropComplete(success : Bool) : Void;
	
	/**
	* accept the Drag.
	* <P>
	* @param dragOperation the supported action(s)
	*/
	@:overload private function acceptDrag(dragOperation : Int) : Void;
	
	/**
	* reject the Drag.
	*/
	@:overload private function rejectDrag() : Void;
	
	/**
	* called to signal that the drop is acceptable
	* using the specified operation.
	* must be called during DropTargetListener.drop method invocation.
	* <P>
	* @param dropOperation the supported action(s)
	*/
	@:overload private function acceptDrop(dropOperation : Int) : Void;
	
	/**
	* called to signal that the drop is unacceptable.
	* must be called during DropTargetListener.drop method invocation.
	*/
	@:overload private function rejectDrop() : Void;
	
	/**
	* get the available DataFlavors of the
	* <code>Transferable</code> operand of this operation.
	* <P>
	* @return a <code>DataFlavor[]</code> containing the
	* supported <code>DataFlavor</code>s of the
	* <code>Transferable</code> operand.
	*/
	@:overload private function getCurrentDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* This method returns a the currently available DataFlavors
	* of the <code>Transferable</code> operand
	* as a <code>java.util.List</code>.
	* <P>
	* @return the currently available
	* DataFlavors as a <code>java.util.List</code>
	*/
	@:overload private function getCurrentDataFlavorsAsList() : java.util.List<java.awt.datatransfer.DataFlavor>;
	
	/**
	* This method returns a <code>boolean</code>
	* indicating if the given <code>DataFlavor</code> is
	* supported by this <code>DropTargetContext</code>.
	* <P>
	* @param df the <code>DataFlavor</code>
	* <P>
	* @return if the <code>DataFlavor</code> specified is supported
	*/
	@:overload private function isDataFlavorSupported(df : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* get the Transferable (proxy) operand of this operation
	* <P>
	* @throws InvalidDnDOperationException if a drag is not outstanding/extant
	* <P>
	* @return the <code>Transferable</code>
	*/
	@:overload private function getTransferable() : java.awt.datatransfer.Transferable;
	
	/**
	* Creates a TransferableProxy to proxy for the specified
	* Transferable.
	*
	* @param t the <tt>Transferable</tt> to be proxied
	* @param local <tt>true</tt> if <tt>t</tt> represents
	*        the result of a local drag-n-drop operation.
	* @return the new <tt>TransferableProxy</tt> instance.
	*/
	@:overload private function createTransferableProxy(t : java.awt.datatransfer.Transferable, local : Bool) : java.awt.datatransfer.Transferable;
	
	
}
/**
* <code>TransferableProxy</code> is a helper inner class that implements
* <code>Transferable</code> interface and serves as a proxy for another
* <code>Transferable</code> object which represents data transfer for
* a particular drag-n-drop operation.
* <p>
* The proxy forwards all requests to the encapsulated transferable
* and automatically performs additional conversion on the data
* returned by the encapsulated transferable in case of local transfer.
*/
@:native('java$awt$dnd$DropTargetContext$TransferableProxy') extern class DropTargetContext_TransferableProxy implements java.awt.datatransfer.Transferable
{
	/**
	* Returns an array of DataFlavor objects indicating the flavors
	* the data can be provided in by the encapsulated transferable.
	* <p>
	* @return an array of data flavors in which the data can be
	*         provided by the encapsulated transferable
	*/
	@:overload public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Returns whether or not the specified data flavor is supported by
	* the encapsulated transferable.
	* @param flavor the requested flavor for the data
	* @return <code>true</code> if the data flavor is supported,
	*         <code>false</code> otherwise
	*/
	@:overload public function isDataFlavorSupported(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Returns an object which represents the data provided by
	* the encapsulated transferable for the requested data flavor.
	* <p>
	* In case of local transfer a serialized copy of the object
	* returned by the encapsulated transferable is provided when
	* the data is requested in application/x-java-serialized-object
	* data flavor.
	*
	* @param df the requested flavor for the data
	* @throws IOException if the data is no longer available
	*              in the requested flavor.
	* @throws UnsupportedFlavorException if the requested data flavor is
	*              not supported.
	*/
	@:overload public function getTransferData(df : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	/**
	* The encapsulated <code>Transferable</code> object.
	*/
	private var transferable : java.awt.datatransfer.Transferable;
	
	/**
	* A <code>boolean</code> indicating if the encapsulated
	* <code>Transferable</code> object represents the result
	* of local drag-n-drop operation (within the same JVM).
	*/
	private var isLocal : Bool;
	
	
}
