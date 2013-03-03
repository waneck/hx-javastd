package sun.awt.dnd;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SunDropTargetContextPeer implements java.awt.dnd.peer.DropTargetContextPeer implements java.awt.datatransfer.Transferable
{
	/*
	* A boolean constant that requires the peer to wait until the
	* SunDropTargetEvent is processed and return the status back
	* to the native code.
	*/
	@:public @:static @:final public static var DISPATCH_SYNC(default, null) : Bool;
	
	@:protected private var dropStatus : Int;
	
	/*
	* global lock
	*/
	@:protected @:static @:final private static var _globalLock(default, null) : Dynamic;
	
	/*
	* a primitive mechanism for advertising intra-JVM Transferables
	*/
	@:protected @:static private static var currentJVMLocalSourceTransferable : java.awt.datatransfer.Transferable;
	
	@:overload @:public @:static public static function setCurrentJVMLocalSourceTransferable(t : java.awt.datatransfer.Transferable) : Void;
	
	/*
	* constants used by dropAccept() or dropReject()
	*/
	@:protected @:final @:static private static var STATUS_NONE(default, null) : Int;
	
	@:protected @:final @:static private static var STATUS_WAIT(default, null) : Int;
	
	@:protected @:final @:static private static var STATUS_ACCEPT(default, null) : Int;
	
	@:protected @:final @:static private static var STATUS_REJECT(default, null) : Int;
	
	/**
	* create the peer
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* @return the DropTarget associated with this peer
	*/
	@:overload @:public public function getDropTarget() : java.awt.dnd.DropTarget;
	
	/**
	* @param actions set the current actions
	*/
	@:overload @:public @:synchronized public function setTargetActions(actions : Int) : Void;
	
	/**
	* @return the current target actions
	*/
	@:overload @:public public function getTargetActions() : Int;
	
	/**
	* get the Transferable associated with the drop
	*/
	@:overload @:public public function getTransferable() : java.awt.datatransfer.Transferable;
	
	/**
	* @return current DataFlavors available
	*/
	@:overload @:public public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* @return if the flavor is supported
	*/
	@:overload @:public public function isDataFlavorSupported(df : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* @return the data
	*/
	@:overload @:public public function getTransferData(df : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	@:overload @:protected @:abstract private function getNativeData(format : haxe.Int64) : Dynamic;
	
	/**
	* @return if the transfer is a local one
	*/
	@:overload @:public public function isTransferableJVMLocal() : Bool;
	
	/**
	* actual processing on EventQueue Thread
	*/
	@:overload @:protected private function processEnterMessage(event : sun.awt.dnd.SunDropTargetEvent) : Void;
	
	/**
	*
	*/
	@:overload @:protected private function processExitMessage(event : sun.awt.dnd.SunDropTargetEvent) : Void;
	
	/**
	*
	*/
	@:overload @:protected private function processMotionMessage(event : sun.awt.dnd.SunDropTargetEvent, operationChanged : Bool) : Void;
	
	/**
	*
	*/
	@:overload @:protected private function processDropMessage(event : sun.awt.dnd.SunDropTargetEvent) : Void;
	
	@:overload @:protected private function postDropTargetEvent(component : java.awt.Component, x : Int, y : Int, dropAction : Int, actions : Int, formats : java.NativeArray<haxe.Int64>, nativeCtxt : haxe.Int64, eventID : Int, dispatchType : Bool) : Int;
	
	/**
	* acceptDrag
	*/
	@:overload @:public @:synchronized public function acceptDrag(dragOperation : Int) : Void;
	
	/**
	* rejectDrag
	*/
	@:overload @:public @:synchronized public function rejectDrag() : Void;
	
	/**
	* acceptDrop
	*/
	@:overload @:public @:synchronized public function acceptDrop(dropOperation : Int) : Void;
	
	/**
	* reject Drop
	*/
	@:overload @:public @:synchronized public function rejectDrop() : Void;
	
	/**
	* signal drop complete
	*/
	@:overload @:public @:synchronized public function dropComplete(success : Bool) : Void;
	
	@:overload @:protected @:abstract private function doDropDone(success : Bool, dropAction : Int, isLocal : Bool) : Void;
	
	@:overload @:protected @:synchronized private function getNativeDragContext() : haxe.Int64;
	
	@:overload @:protected private function eventPosted(e : sun.awt.dnd.SunDropTargetEvent) : Void;
	
	@:overload @:protected private function eventProcessed(e : sun.awt.dnd.SunDropTargetEvent, returnValue : Int, dispatcherDone : Bool) : Void;
	
	
}
@:native('sun$awt$dnd$SunDropTargetContextPeer$EventDispatcher') extern class SunDropTargetContextPeer_EventDispatcher
{
	@:overload @:public public function unregisterAllEvents() : Void;
	
	
}
