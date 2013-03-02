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
@:internal extern class XDragSourceProtocol
{
	@:overload private function new(listener : sun.awt.X11.XDragSourceProtocolListener) : Void;
	
	@:overload @:final private function getProtocolListener() : sun.awt.X11.XDragSourceProtocolListener;
	
	/**
	* Returns the protocol name. The protocol name cannot be null.
	*/
	@:overload @:abstract public function getProtocolName() : String;
	
	/**
	* Initalizes a drag operation with the specified supported drop actions,
	* contents and data formats.
	*
	* @param actions a bitwise mask of <code>DnDConstants</code> that represent
	*                the supported drop actions.
	* @param contents the contents for the drag operation.
	* @param formats an array of Atoms that represent the supported data formats.
	* @param formats an array of Atoms that represent the supported data formats.
	* @throws InvalidDnDOperationException if a drag operation is already
	* initialized.
	* @throws IllegalArgumentException if some argument has invalid value.
	* @throws XException if some X call failed.
	*/
	@:overload @:final public function initializeDrag(actions : Int, contents : java.awt.datatransfer.Transferable, formatMap : java.util.Map<Dynamic, Dynamic>, formats : java.NativeArray<haxe.Int64>) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract private function initializeDragImpl(actions : Int, contents : java.awt.datatransfer.Transferable, formatMap : java.util.Map<Dynamic, Dynamic>, formats : java.NativeArray<haxe.Int64>) : Void;
	
	/**
	* Terminates the current drag operation (if any) and resets the internal
	* state of this object.
	*
	* @throws XException if some X call failed.
	*/
	@:overload public function cleanup() : Void;
	
	/**
	* Clears the information on the current drop target.
	*
	* @throws XException if some X call failed.
	*/
	@:overload public function cleanupTargetInfo() : Void;
	
	/**
	* Processes the specified client message event.
	*
	* @returns true if the event was successfully processed.
	*/
	@:overload @:abstract public function processClientMessage(xclient : sun.awt.X11.XClientMessageEvent) : Bool;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:final public function attachTargetWindow(window : haxe.Int64, time : haxe.Int64) : Bool;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function getTargetWindowInfo(window : haxe.Int64) : sun.awt.X11.XDragSourceProtocol.XDragSourceProtocol_TargetWindowInfo;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function sendEnterMessage(formats : java.NativeArray<haxe.Int64>, sourceAction : Int, sourceActions : Int, time : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function sendMoveMessage(xRoot : Int, yRoot : Int, sourceAction : Int, sourceActions : Int, time : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function sendLeaveMessage(time : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract private function sendDropMessage(xRoot : Int, yRoot : Int, sourceAction : Int, sourceActions : Int, time : haxe.Int64) : Void;
	
	@:overload @:final public function initiateDrop(xRoot : Int, yRoot : Int, sourceAction : Int, sourceActions : Int, time : haxe.Int64) : Void;
	
	@:overload @:final private function finalizeDrop() : Void;
	
	@:overload @:abstract public function processProxyModeEvent(xclient : sun.awt.X11.XClientMessageEvent, sourceWindow : haxe.Int64) : Bool;
	
	@:overload @:final private function getTargetWindow() : haxe.Int64;
	
	@:overload @:final private function getTargetProxyWindow() : haxe.Int64;
	
	@:overload @:final private function getTargetProtocolVersion() : Int;
	
	
}
@:native('sun$awt$X11$XDragSourceProtocol$TargetWindowInfo') extern class XDragSourceProtocol_TargetWindowInfo
{
	@:overload public function new(proxy : haxe.Int64, version : Int) : Void;
	
	@:overload public function getProxyWindow() : haxe.Int64;
	
	@:overload public function getProtocolVersion() : Int;
	
	
}
