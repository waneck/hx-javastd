package sun.awt.datatransfer;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SunClipboard extends java.awt.datatransfer.Clipboard implements java.beans.PropertyChangeListener
{
	/**
	* Serves as a common, helper superclass for the Win32 and X11 system
	* Clipboards.
	*
	* @author Danila Sinopalnikov
	* @author Alexander Gerasimov
	*
	* @since 1.3
	*/
	@:require(java3) public static var flavorMap(default, null) : java.awt.datatransfer.FlavorTable;
	
	@:overload public function new(name : String) : Void;
	
	@:overload @:synchronized override public function setContents(contents : java.awt.datatransfer.Transferable, owner : java.awt.datatransfer.ClipboardOwner) : Void;
	
	@:overload @:synchronized override public function getContents(requestor : Dynamic) : java.awt.datatransfer.Transferable;
	
	/**
	* @see java.awt.Clipboard#getAvailableDataFlavors
	* @since 1.5
	*/
	@:require(java5) @:overload override public function getAvailableDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* @see java.awt.Clipboard#isDataFlavorAvailable
	* @since 1.5
	*/
	@:require(java5) @:overload override public function isDataFlavorAvailable(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* @see java.awt.Clipboard#getData
	* @since 1.5
	*/
	@:require(java5) @:overload override public function getData(flavor : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	/**
	* The clipboard must be opened.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload private function createLocaleTransferable(formats : java.NativeArray<haxe.Int64>) : java.awt.datatransfer.Transferable;
	
	/**
	* @throws IllegalStateException if the clipboard has not been opened
	*/
	@:overload public function openClipboard(newOwner : sun.awt.datatransfer.SunClipboard) : Void;
	
	@:overload public function closeClipboard() : Void;
	
	@:overload @:abstract public function getID() : haxe.Int64;
	
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function lostOwnershipImpl() : Void;
	
	/**
	* Clears the clipboard state (contents, owner and contents context) and
	* notifies the current owner that ownership is lost. Does nothing if the
	* argument is not <code>null</code> and is not equal to the current
	* contents context.
	*
	* @param disposedContext the AppContext that is disposed or
	*        <code>null</code> if the ownership is lost because another
	*        application acquired ownership.
	*/
	@:overload private function lostOwnershipLater(disposedContext : sun.awt.AppContext) : Void;
	
	@:overload @:abstract private function clearNativeContext() : Void;
	
	@:overload @:abstract private function setContentsNative(contents : java.awt.datatransfer.Transferable) : Void;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload private function getClipboardFormatsOpenClose() : java.NativeArray<haxe.Int64>;
	
	/**
	* Returns zero-length array (not null) if the number of available formats is zero.
	*
	* @throws IllegalStateException if formats could not be retrieved
	*/
	@:overload @:abstract private function getClipboardFormats() : java.NativeArray<haxe.Int64>;
	
	@:overload @:abstract private function getClipboardData(format : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:synchronized override public function addFlavorListener(listener : java.awt.datatransfer.FlavorListener) : Void;
	
	@:overload @:synchronized override public function removeFlavorListener(listener : java.awt.datatransfer.FlavorListener) : Void;
	
	@:overload @:synchronized override public function getFlavorListeners() : java.NativeArray<java.awt.datatransfer.FlavorListener>;
	
	@:overload public function areFlavorListenersRegistered() : Bool;
	
	@:overload @:abstract private function registerClipboardViewerChecked() : Void;
	
	@:overload @:abstract private function unregisterClipboardViewerChecked() : Void;
	
	/**
	* Checks change of the <code>DataFlavor</code>s and, if necessary,
	* posts notifications on <code>FlavorEvent</code>s to the
	* AppContexts' EDTs.
	* The parameter <code>formats</code> is null iff we have just
	* failed to get formats available on the clipboard.
	*
	* @param formats data formats that have just been retrieved from
	*        this clipboard
	*/
	@:overload public function checkChange(formats : java.NativeArray<haxe.Int64>) : Void;
	
	
}
