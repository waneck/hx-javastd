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
@:internal extern class XDropTargetProtocol
{
	public static var EMBEDDER_ALREADY_REGISTERED(default, null) : Int;
	
	public static var UNKNOWN_MESSAGE(default, null) : Int;
	
	public static var ENTER_MESSAGE(default, null) : Int;
	
	public static var MOTION_MESSAGE(default, null) : Int;
	
	public static var LEAVE_MESSAGE(default, null) : Int;
	
	public static var DROP_MESSAGE(default, null) : Int;
	
	@:overload private function new(listener : sun.awt.X11.XDropTargetProtocolListener) : Void;
	
	@:overload @:final private function getProtocolListener() : sun.awt.X11.XDropTargetProtocolListener;
	
	/**
	* Returns the protocol name. The protocol name cannot be null.
	*/
	@:overload @:abstract public function getProtocolName() : String;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function registerDropTarget(window : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function unregisterDropTarget(window : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function registerEmbedderDropSite(window : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function unregisterEmbedderDropSite(window : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function registerEmbeddedDropSite(embedded : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:final public function unregisterEmbeddedDropSite(embedded : haxe.Int64) : Void;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract public function isProtocolSupported(window : haxe.Int64) : Bool;
	
	@:overload @:abstract public function getMessageType(xclient : sun.awt.X11.XClientMessageEvent) : Int;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:final public function processClientMessage(xclient : sun.awt.X11.XClientMessageEvent) : Bool;
	
	/* The caller must hold AWT_LOCK. */
	@:overload @:abstract private function processClientMessageImpl(xclient : sun.awt.X11.XClientMessageEvent) : Bool;
	
	/*
	* Forwards a drag notification to the embedding toplevel modifying the event
	* to match the protocol version supported by the toplevel.
	* The caller must hold AWT_LOCK.
	* Returns True if the event is sent, False otherwise.
	*/
	@:overload @:final private function forwardClientMessageToToplevel(toplevel : haxe.Int64, xclient : sun.awt.X11.XClientMessageEvent) : Bool;
	
	@:overload @:abstract private function sendEnterMessageToToplevel(toplevel : haxe.Int64, xclient : sun.awt.X11.XClientMessageEvent) : Void;
	
	@:overload @:abstract private function sendLeaveMessageToToplevel(toplevel : haxe.Int64, xclient : sun.awt.X11.XClientMessageEvent) : Void;
	
	@:overload @:abstract public function sendResponse(ctxt : haxe.Int64, eventID : Int, action : Int) : Bool;
	
	/*
	* Retrieves the data from the drag source in the specified format.
	*
	* @param ctxt a pointer to the XClientMessageEvent structure for this
	*             protocol's drop message.
	* @param format the format in which the data should be retrieved.
	*
	* @throws IllegalArgumentException if ctxt doesn't point to the
	*         XClientMessageEvent structure for this protocol's drop message.
	* @throws IOException if data retrieval failed.
	*/
	@:overload @:abstract public function getData(ctxt : haxe.Int64, format : haxe.Int64) : Dynamic;
	
	@:overload @:abstract public function sendDropDone(ctxt : haxe.Int64, success : Bool, dropAction : Int) : Bool;
	
	@:overload @:abstract public function getSourceWindow() : haxe.Int64;
	
	@:overload @:abstract public function cleanup() : Void;
	
	@:overload @:abstract public function isDragOverComponent() : Bool;
	
	@:overload public function adjustEventForForwarding(xclient : sun.awt.X11.XClientMessageEvent, entry : XDropTargetProtocol_EmbedderRegistryEntry) : Void;
	
	@:overload @:abstract public function forwardEventToEmbedded(embedded : haxe.Int64, ctxt : haxe.Int64, eventID : Int) : Bool;
	
	/*
	* Returns true if the XEmbed protocol prescribes that an XEmbed server must
	* support this DnD protocol for drop sites associated with XEmbed clients.
	*/
	@:overload @:abstract public function isXEmbedSupported() : Bool;
	
	@:overload @:final private function putEmbedderRegistryEntry(embedder : haxe.Int64, overriden : Bool, version : Int, proxy : haxe.Int64) : Void;
	
	@:overload @:final private function getEmbedderRegistryEntry(embedder : haxe.Int64) : XDropTargetProtocol_EmbedderRegistryEntry;
	
	@:overload @:final private function removeEmbedderRegistryEntry(embedder : haxe.Int64) : Void;
	
	
}
@:native('sun$awt$X11$XDropTargetProtocol$EmbedderRegistryEntry') extern class XDropTargetProtocol_EmbedderRegistryEntry
{
	@:overload public function isOverriden() : Bool;
	
	@:overload public function getVersion() : Int;
	
	@:overload public function getProxy() : haxe.Int64;
	
	
}
