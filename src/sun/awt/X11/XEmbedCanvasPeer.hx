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
extern class XEmbedCanvasPeer extends sun.awt.X11.XCanvasPeer implements java.awt.event.WindowFocusListener implements java.awt.KeyEventPostProcessor implements sun.awt.ModalityListener implements sun.awt.WindowIDProvider
{
	@:overload private function postInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload private function preInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload override public function handleEvent(e : java.awt.AWTEvent) : Void;
	
	@:overload override public function dispatchEvent(ev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload public function dispose() : Void;
	
	@:overload override public function isFocusable() : Bool;
	
	@:overload public function windowGainedFocus(e : java.awt.event.WindowEvent) : Void;
	
	@:overload public function windowLostFocus(e : java.awt.event.WindowEvent) : Void;
	
	@:overload public function postProcessKeyEvent(e : java.awt.event.KeyEvent) : Bool;
	
	@:overload public function modalityPushed(ev : sun.awt.ModalityEvent) : Void;
	
	@:overload public function modalityPopped(ev : sun.awt.ModalityEvent) : Void;
	
	@:overload override public function handleClientMessage(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function setXEmbedDropTarget() : Void;
	
	@:overload public function removeXEmbedDropTarget() : Void;
	
	@:overload public function processXEmbedDnDEvent(ctxt : haxe.Int64, eventID : Int) : Bool;
	
	
}
@:native('sun$awt$X11$XEmbedCanvasPeer$XEmbedDropTarget') @:internal extern class XEmbedCanvasPeer_XEmbedDropTarget extends java.awt.dnd.DropTarget
{
	@:overload public function addDropTargetListener(dtl : java.awt.dnd.DropTargetListener) : Void;
	
	
}
@:native('sun$awt$X11$XEmbedCanvasPeer$XEmbedServer') @:internal extern class XEmbedCanvasPeer_XEmbedServer extends sun.awt.X11.XEmbedHelper implements sun.awt.X11.XEventDispatcher
{
	@:overload public function handlePropertyNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function dispatchEvent(xev : sun.awt.X11.XEvent) : Void;
	
	
}
@:native('sun$awt$X11$XEmbedCanvasPeer$GrabbedKey') @:internal extern class XEmbedCanvasPeer_GrabbedKey
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function toString() : String;
	
	
}
