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
@:internal extern class XDnDDragSourceProtocol extends sun.awt.X11.XDragSourceProtocol
{
	@:overload @:protected private function new(listener : sun.awt.X11.XDragSourceProtocolListener) : Void;
	
	@:overload @:public override public function getProtocolName() : String;
	
	/**
	* Performs protocol-specific drag initialization.
	*
	* @returns true if the initialized successfully.
	*/
	@:overload @:protected override private function initializeDragImpl(actions : Int, contents : java.awt.datatransfer.Transferable, formatMap : java.util.Map<Dynamic, Dynamic>, formats : java.NativeArray<haxe.Int64>) : Void;
	
	@:overload @:public override public function processClientMessage(xclient : sun.awt.X11.XClientMessageEvent) : Bool;
	
	@:overload @:public override public function getTargetWindowInfo(window : haxe.Int64) : sun.awt.X11.XDragSourceProtocol.XDragSourceProtocol_TargetWindowInfo;
	
	@:overload @:public override public function sendEnterMessage(formats : java.NativeArray<haxe.Int64>, sourceAction : Int, sourceActions : Int, time : haxe.Int64) : Void;
	
	@:overload @:public override public function sendMoveMessage(xRoot : Int, yRoot : Int, sourceAction : Int, sourceActions : Int, time : haxe.Int64) : Void;
	
	@:overload @:public override public function sendLeaveMessage(time : haxe.Int64) : Void;
	
	@:overload @:public override public function sendDropMessage(xRoot : Int, yRoot : Int, sourceAction : Int, sourceActions : Int, time : haxe.Int64) : Void;
	
	@:overload @:public override public function processProxyModeEvent(xclient : sun.awt.X11.XClientMessageEvent, sourceWindow : haxe.Int64) : Bool;
	
	@:overload @:public public function run() : Void;
	
	
}
