package sun.awt.X11;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MotifDnDDropTargetProtocol extends sun.awt.X11.XDropTargetProtocol
{
	@:overload @:protected private function new(listener : sun.awt.X11.XDropTargetProtocolListener) : Void;
	
	@:overload @:public override public function getProtocolName() : String;
	
	@:overload @:public override public function registerDropTarget(window : haxe.Int64) : Void;
	
	@:overload @:public override public function unregisterDropTarget(window : haxe.Int64) : Void;
	
	@:overload @:public override public function registerEmbedderDropSite(embedder : haxe.Int64) : Void;
	
	@:overload @:public override public function unregisterEmbedderDropSite(embedder : haxe.Int64) : Void;
	
	/*
	* Gets and stores in the registry the embedder's Motif DnD drop site info
	* from the embedded.
	*/
	@:overload @:public override public function registerEmbeddedDropSite(embedded : haxe.Int64) : Void;
	
	@:overload @:public override public function isProtocolSupported(window : haxe.Int64) : Bool;
	
	@:overload @:public override public function getMessageType(xclient : sun.awt.X11.XClientMessageEvent) : Int;
	
	@:overload @:protected override private function processClientMessageImpl(xclient : sun.awt.X11.XClientMessageEvent) : Bool;
	
	/*
	* Currently we don't synthesize enter/leave messages for Motif DnD
	* protocol. See comments in XDropTargetProtocol.postProcessClientMessage.
	*/
	@:overload @:protected override private function sendEnterMessageToToplevel(win : haxe.Int64, xclient : sun.awt.X11.XClientMessageEvent) : Void;
	
	@:overload @:protected override private function sendLeaveMessageToToplevel(win : haxe.Int64, xclient : sun.awt.X11.XClientMessageEvent) : Void;
	
	@:overload @:public override public function forwardEventToEmbedded(embedded : haxe.Int64, ctxt : haxe.Int64, eventID : Int) : Bool;
	
	@:overload @:public override public function isXEmbedSupported() : Bool;
	
	@:overload @:public override public function sendResponse(ctxt : haxe.Int64, eventID : Int, action : Int) : Bool;
	
	@:overload @:public override public function getData(ctxt : haxe.Int64, format : haxe.Int64) : Dynamic;
	
	@:overload @:public override public function sendDropDone(ctxt : haxe.Int64, success : Bool, dropAction : Int) : Bool;
	
	@:overload @:public @:final override public function getSourceWindow() : haxe.Int64;
	
	/**
	* Reset the state of the object.
	*/
	@:overload @:public override public function cleanup() : Void;
	
	@:overload @:public override public function isDragOverComponent() : Bool;
	
	
}
