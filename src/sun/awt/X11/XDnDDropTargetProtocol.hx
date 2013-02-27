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
@:internal extern class XDnDDropTargetProtocol extends sun.awt.X11.XDropTargetProtocol
{
	@:overload private function new(listener : sun.awt.X11.XDropTargetProtocolListener) : Void;
	
	@:overload override public function getProtocolName() : String;
	
	@:overload override public function registerDropTarget(window : haxe.Int64) : Void;
	
	@:overload override public function unregisterDropTarget(window : haxe.Int64) : Void;
	
	@:overload override public function registerEmbedderDropSite(embedder : haxe.Int64) : Void;
	
	@:overload override public function unregisterEmbedderDropSite(embedder : haxe.Int64) : Void;
	
	/*
	* Gets and stores in the registry the embedder's XDnD drop site info
	* from the embedded.
	*/
	@:overload override public function registerEmbeddedDropSite(embedded : haxe.Int64) : Void;
	
	@:overload override public function isProtocolSupported(window : haxe.Int64) : Bool;
	
	@:overload override public function getMessageType(xclient : sun.awt.X11.XClientMessageEvent) : Int;
	
	@:overload override private function processClientMessageImpl(xclient : sun.awt.X11.XClientMessageEvent) : Bool;
	
	@:overload override private function sendEnterMessageToToplevel(toplevel : haxe.Int64, xclient : sun.awt.X11.XClientMessageEvent) : Void;
	
	@:overload override private function sendLeaveMessageToToplevel(toplevel : haxe.Int64, xclient : sun.awt.X11.XClientMessageEvent) : Void;
	
	@:overload private function sendLeaveMessageToToplevelImpl(toplevel : haxe.Int64, sourceWindow : haxe.Int64) : Void;
	
	@:overload override public function sendResponse(ctxt : haxe.Int64, eventID : Int, action : Int) : Bool;
	
	@:overload override public function getData(ctxt : haxe.Int64, format : haxe.Int64) : Dynamic;
	
	@:overload override public function sendDropDone(ctxt : haxe.Int64, success : Bool, dropAction : Int) : Bool;
	
	@:overload @:final override public function getSourceWindow() : haxe.Int64;
	
	/**
	* Reset the state of the object.
	*/
	@:overload override public function cleanup() : Void;
	
	@:overload override public function isDragOverComponent() : Bool;
	
	@:overload public function adjustEventForForwarding(xclient : sun.awt.X11.XClientMessageEvent, entry : EmbedderRegistryEntry) : Void;
	
	/*
	* The methods/fields defined below are executed/accessed only on
	* the toolkit thread.
	* The methods/fields defined below are executed/accessed only on the event
	* dispatch thread.
	*/
	@:overload override public function forwardEventToEmbedded(embedded : haxe.Int64, ctxt : haxe.Int64, eventID : Int) : Bool;
	
	@:overload override public function isXEmbedSupported() : Bool;
	
	
}
