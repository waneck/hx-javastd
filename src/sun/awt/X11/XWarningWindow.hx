package sun.awt.X11;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XWarningWindow extends sun.awt.X11.XWindow
{
	/**
	* @param x,y,w,h coordinates of the untrusted window
	*/
	@:overload @:public public function reposition(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected override private function getWMName() : String;
	
	@:overload @:public override public function getGraphics() : java.awt.Graphics;
	
	@:overload @:public override public function repaint() : Void;
	
	@:overload @:public override public function handleExposeEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:protected override private function isEventDisabled(e : sun.awt.X11.XEvent) : Bool;
	
	@:overload @:protected override private function stateChanged(time : haxe.Int64, oldState : Int, newState : Int) : Void;
	
	@:overload @:protected override private function setMouseAbove(above : Bool) : Void;
	
	@:overload @:protected override private function enterNotify(window : haxe.Int64) : Void;
	
	@:overload @:protected override private function leaveNotify(window : haxe.Int64) : Void;
	
	@:overload @:public override public function xSetVisible(visible : Bool) : Void;
	
	@:overload @:public public function setSecurityWarningVisible(visible : Bool, doSchedule : Bool) : Void;
	
	
}
