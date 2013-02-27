package sun.awt.X11;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class XTrayIconPeer implements java.awt.peer.TrayIconPeer implements sun.awt.X11.InfoWindow.InfoWindow_Balloon_LiveArguments implements sun.awt.X11.InfoWindow.InfoWindow_Tooltip_LiveArguments
{
	@:overload public function dispose() : Void;
	
	@:overload public static function suppressWarningString(w : java.awt.Window) : Void;
	
	@:overload public function setToolTip(tooltip : String) : Void;
	
	@:overload public function getTooltipString() : String;
	
	@:overload public function updateImage() : Void;
	
	@:overload public function displayMessage(caption : String, text : String, messageType : String) : Void;
	
	@:overload public function showPopupMenu(x : Int, y : Int) : Void;
	
	@:overload public function getBounds() : java.awt.Rectangle;
	
	@:overload public function isDisposed() : Bool;
	
	@:overload public function getActionCommand() : String;
	
	
}
@:native('sun$awt$X11$XTrayIconPeer$TrayIconEventProxy') @:internal extern class XTrayIconPeer_TrayIconEventProxy implements java.awt.event.MouseListener implements java.awt.event.MouseMotionListener
{
	@:overload public function handleEvent(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('sun$awt$X11$XTrayIconPeer$XTrayIconEmbeddedFrame') @:internal extern class XTrayIconPeer_XTrayIconEmbeddedFrame extends sun.awt.X11.XEmbeddedFrame
{
	@:overload public function new() : Void;
	
	@:overload override public function isUndecorated() : Bool;
	
	@:overload override public function isResizable() : Bool;
	
	@:overload override public function dispose() : Void;
	
	@:overload public function realDispose() : Void;
	
	
}
@:native('sun$awt$X11$XTrayIconPeer$TrayIconCanvas') @:internal extern class XTrayIconPeer_TrayIconCanvas extends XTrayIconPeer_IconCanvas
{
	@:overload override private function repaintImage(doClear : Bool) : Void;
	
	
}
@:native('sun$awt$X11$XTrayIconPeer$IconCanvas') extern class XTrayIconPeer_IconCanvas extends java.awt.Canvas
{
	@:overload public function updateImage(image : java.awt.Image) : Void;
	
	@:overload private function repaintImage(doClear : Bool) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	
}
@:native('sun$awt$X11$XTrayIconPeer$IconCanvas$IconObserver') @:internal extern class XTrayIconPeer_IconCanvas_IconObserver implements java.awt.image.ImageObserver
{
	@:overload public function imageUpdate(image : java.awt.Image, flags : Int, x : Int, y : Int, width : Int, height : Int) : Bool;
	
	
}
