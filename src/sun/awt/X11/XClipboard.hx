package sun.awt.X11;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XClipboard extends sun.awt.datatransfer.SunClipboard implements sun.awt.X11.OwnershipListener
{
	/**
	* Creates a system clipboard object.
	*/
	@:overload public function new(name : String, selectionName : String) : Void;
	
	/*
	* NOTE: This method may be called by privileged threads.
	*       DO NOT INVOKE CLIENT CODE ON THIS THREAD!
	*/
	@:overload public function ownershipChanged(isOwner : Bool) : Void;
	
	@:overload @:synchronized private function setContentsNative(contents : java.awt.datatransfer.Transferable) : Void;
	
	@:overload public function getID() : haxe.Int64;
	
	@:overload @:synchronized public function getContents(requestor : Dynamic) : java.awt.datatransfer.Transferable;
	
	/* Caller is synchronized on this. */
	@:overload private function clearNativeContext() : Void;
	
	@:overload private function getClipboardFormats() : java.NativeArray<haxe.Int64>;
	
	@:overload private function getClipboardData(format : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function registerClipboardViewerChecked() : Void;
	
	@:overload private function unregisterClipboardViewerChecked() : Void;
	
	
}
@:native('sun$awt$X11$XClipboard$CheckChangeTimerTask') @:internal extern class XClipboard_CheckChangeTimerTask implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
@:native('sun$awt$X11$XClipboard$SelectionNotifyHandler') @:internal extern class XClipboard_SelectionNotifyHandler implements sun.awt.X11.XEventDispatcher
{
	@:overload public function dispatchEvent(ev : sun.awt.X11.XEvent) : Void;
	
	
}
