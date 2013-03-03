package sun.awt.X11;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XDropTargetContextPeer extends sun.awt.dnd.SunDropTargetContextPeer
{
	/*
	* @param returnValue the drop action selected by the Java drop target.
	*/
	@:overload @:protected override private function eventProcessed(e : sun.awt.dnd.SunDropTargetEvent, returnValue : Int, dispatcherDone : Bool) : Void;
	
	@:overload @:protected override private function doDropDone(success : Bool, dropAction : Int, isLocal : Bool) : Void;
	
	@:overload @:protected override private function getNativeData(format : haxe.Int64) : Dynamic;
	
	@:overload @:protected override private function processEnterMessage(event : sun.awt.dnd.SunDropTargetEvent) : Void;
	
	@:overload @:protected override private function processExitMessage(event : sun.awt.dnd.SunDropTargetEvent) : Void;
	
	@:overload @:protected override private function processMotionMessage(event : sun.awt.dnd.SunDropTargetEvent, operationChanged : Bool) : Void;
	
	@:overload @:protected override private function processDropMessage(event : sun.awt.dnd.SunDropTargetEvent) : Void;
	
	@:overload @:public public function forwardEventToEmbedded(embedded : haxe.Int64, ctxt : haxe.Int64, eventID : Int) : Void;
	
	
}
@:native('sun$awt$X11$XDropTargetContextPeer$XDropTargetProtocolListenerImpl') @:internal extern class XDropTargetContextPeer_XDropTargetProtocolListenerImpl implements sun.awt.X11.XDropTargetProtocolListener
{
	@:overload @:public public function handleDropTargetNotification(xwindow : sun.awt.X11.XWindow, x : Int, y : Int, dropAction : Int, actions : Int, formats : java.NativeArray<haxe.Int64>, nativeCtxt : haxe.Int64, eventID : Int) : Void;
	
	
}
