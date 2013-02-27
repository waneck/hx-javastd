package java.awt.datatransfer;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Clipboard
{
	private var owner : java.awt.datatransfer.ClipboardOwner;
	
	private var contents : java.awt.datatransfer.Transferable;
	
	/**
	* Creates a clipboard object.
	*
	* @see java.awt.Toolkit#getSystemClipboard
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Returns the name of this clipboard object.
	*
	* @see java.awt.Toolkit#getSystemClipboard
	*/
	@:overload public function getName() : String;
	
	/**
	* Sets the current contents of the clipboard to the specified
	* transferable object and registers the specified clipboard owner
	* as the owner of the new contents.
	* <p>
	* If there is an existing owner different from the argument
	* <code>owner</code>, that owner is notified that it no longer
	* holds ownership of the clipboard contents via an invocation
	* of <code>ClipboardOwner.lostOwnership()</code> on that owner.
	* An implementation of <code>setContents()</code> is free not
	* to invoke <code>lostOwnership()</code> directly from this method.
	* For example, <code>lostOwnership()</code> may be invoked later on
	* a different thread. The same applies to <code>FlavorListener</code>s
	* registered on this clipboard.
	* <p>
	* The method throws <code>IllegalStateException</code> if the clipboard
	* is currently unavailable. For example, on some platforms, the system
	* clipboard is unavailable while it is accessed by another application.
	*
	* @param contents the transferable object representing the
	*                 clipboard content
	* @param owner the object which owns the clipboard content
	* @throws IllegalStateException if the clipboard is currently unavailable
	* @see java.awt.Toolkit#getSystemClipboard
	*/
	@:overload @:synchronized public function setContents(contents : java.awt.datatransfer.Transferable, owner : java.awt.datatransfer.ClipboardOwner) : Void;
	
	/**
	* Returns a transferable object representing the current contents
	* of the clipboard.  If the clipboard currently has no contents,
	* it returns <code>null</code>. The parameter Object requestor is
	* not currently used.  The method throws
	* <code>IllegalStateException</code> if the clipboard is currently
	* unavailable.  For example, on some platforms, the system clipboard is
	* unavailable while it is accessed by another application.
	*
	* @param requestor the object requesting the clip data  (not used)
	* @return the current transferable object on the clipboard
	* @throws IllegalStateException if the clipboard is currently unavailable
	* @see java.awt.Toolkit#getSystemClipboard
	*/
	@:overload @:synchronized public function getContents(requestor : Dynamic) : java.awt.datatransfer.Transferable;
	
	/**
	* Returns an array of <code>DataFlavor</code>s in which the current
	* contents of this clipboard can be provided. If there are no
	* <code>DataFlavor</code>s available, this method returns a zero-length
	* array.
	*
	* @return an array of <code>DataFlavor</code>s in which the current
	*         contents of this clipboard can be provided
	*
	* @throws IllegalStateException if this clipboard is currently unavailable
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getAvailableDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Returns whether or not the current contents of this clipboard can be
	* provided in the specified <code>DataFlavor</code>.
	*
	* @param flavor the requested <code>DataFlavor</code> for the contents
	*
	* @return <code>true</code> if the current contents of this clipboard
	*         can be provided in the specified <code>DataFlavor</code>;
	*         <code>false</code> otherwise
	*
	* @throws NullPointerException if <code>flavor</code> is <code>null</code>
	* @throws IllegalStateException if this clipboard is currently unavailable
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function isDataFlavorAvailable(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Returns an object representing the current contents of this clipboard
	* in the specified <code>DataFlavor</code>.
	* The class of the object returned is defined by the representation
	* class of <code>flavor</code>.
	*
	* @param flavor the requested <code>DataFlavor</code> for the contents
	*
	* @return an object representing the current contents of this clipboard
	*         in the specified <code>DataFlavor</code>
	*
	* @throws NullPointerException if <code>flavor</code> is <code>null</code>
	* @throws IllegalStateException if this clipboard is currently unavailable
	* @throws UnsupportedFlavorException if the requested <code>DataFlavor</code>
	*         is not available
	* @throws IOException if the data in the requested <code>DataFlavor</code>
	*         can not be retrieved
	*
	* @see DataFlavor#getRepresentationClass
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getData(flavor : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	/**
	* Registers the specified <code>FlavorListener</code> to receive
	* <code>FlavorEvent</code>s from this clipboard.
	* If <code>listener</code> is <code>null</code>, no exception
	* is thrown and no action is performed.
	*
	* @param listener the listener to be added
	*
	* @see #removeFlavorListener
	* @see #getFlavorListeners
	* @see FlavorListener
	* @see FlavorEvent
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized public function addFlavorListener(listener : java.awt.datatransfer.FlavorListener) : Void;
	
	/**
	* Removes the specified <code>FlavorListener</code> so that it no longer
	* receives <code>FlavorEvent</code>s from this <code>Clipboard</code>.
	* This method performs no function, nor does it throw an exception, if
	* the listener specified by the argument was not previously added to this
	* <code>Clipboard</code>.
	* If <code>listener</code> is <code>null</code>, no exception
	* is thrown and no action is performed.
	*
	* @param listener the listener to be removed
	*
	* @see #addFlavorListener
	* @see #getFlavorListeners
	* @see FlavorListener
	* @see FlavorEvent
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized public function removeFlavorListener(listener : java.awt.datatransfer.FlavorListener) : Void;
	
	/**
	* Returns an array of all the <code>FlavorListener</code>s currently
	* registered on this <code>Clipboard</code>.
	*
	* @return all of this clipboard's <code>FlavorListener</code>s or an empty
	*         array if no listeners are currently registered
	* @see #addFlavorListener
	* @see #removeFlavorListener
	* @see FlavorListener
	* @see FlavorEvent
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized public function getFlavorListeners() : java.NativeArray<java.awt.datatransfer.FlavorListener>;
	
	
}
