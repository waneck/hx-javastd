package sun.awt.X11;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class XEmbeddedFramePeer extends sun.awt.X11.XFramePeer
{
	@:overload @:public public function new(target : sun.awt.EmbeddedFrame) : Void;
	
	@:overload @:public public function preInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload @:public override public function dispose() : Void;
	
	@:overload @:public override public function updateMinimumSize() : Void;
	
	@:overload @:protected override private function getWMName() : String;
	
	@:overload @:public override public function requestWindowFocus(time : haxe.Int64, timeProvided : Bool) : Bool;
	
	@:overload @:protected override private function requestInitialFocus() : Void;
	
	@:overload @:protected override private function isEventDisabled(e : sun.awt.X11.XEvent) : Bool;
	
	@:overload @:public override public function handleConfigureNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:protected private function traverseOutForward() : Void;
	
	@:overload @:protected private function traverseOutBackward() : Void;
	
	@:overload @:public override public function getLocationOnScreen() : java.awt.Point;
	
	@:overload @:public override public function getBounds() : java.awt.Rectangle;
	
	@:overload @:public override public function setBoundsPrivate(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getBoundsPrivate() : java.awt.Rectangle;
	
	@:overload @:public override public function getAbsoluteX() : Int;
	
	@:overload @:public override public function getAbsoluteY() : Int;
	
	@:overload @:public override public function getWidth() : Int;
	
	@:overload @:public override public function getHeight() : Int;
	
	@:overload @:public override public function getSize() : java.awt.Dimension;
	
	@:overload @:public override public function setModalBlocked(blocker : java.awt.Dialog, blocked : Bool) : Void;
	
	@:overload @:public public function synthesizeFocusInOut(doFocus : Bool) : Void;
	
	
}
