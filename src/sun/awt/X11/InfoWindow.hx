package sun.awt.X11;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class InfoWindow extends java.awt.Window
{
	@:overload private function new(parent : java.awt.Frame, borderColor : java.awt.Color) : Void;
	
	@:overload override public function add(c : java.awt.Component) : java.awt.Component;
	
	@:overload private function setCloser(action : java.lang.Runnable, time : Int) : Void;
	
	@:overload private function show(corner : java.awt.Point, indent : Int) : Void;
	
	@:overload public function hide() : Void;
	
	
}
@:native('sun$awt$X11$InfoWindow$Closer') @:internal extern class InfoWindow_Closer implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
@:native('sun$awt$X11$InfoWindow$LiveArguments') @:internal extern interface InfoWindow_LiveArguments
{
	/** Whether the target of the InfoWindow is disposed. */
	@:overload public function isDisposed() : Bool;
	
	/** The bounds of the target of the InfoWindow. */
	@:overload public function getBounds() : java.awt.Rectangle;
	
	
}
@:native('sun$awt$X11$InfoWindow$Tooltip') extern class InfoWindow_Tooltip extends sun.awt.X11.InfoWindow
{
	@:overload public function new(parent : java.awt.Frame, target : Dynamic, liveArguments : sun.awt.X11.InfoWindow.InfoWindow_Balloon_LiveArguments) : Void;
	
	@:overload public function enter() : Void;
	
	@:overload public function exit() : Void;
	
	
}
@:native('sun$awt$X11$InfoWindow$Tooltip$LiveArguments') extern interface InfoWindow_Tooltip_LiveArguments extends sun.awt.X11.InfoWindow.InfoWindow_LiveArguments
{
	/** The tooltip to be displayed. */
	@:overload public function getTooltipString() : String;
	
	
}
@:native('sun$awt$X11$InfoWindow$Balloon') extern class InfoWindow_Balloon extends sun.awt.X11.InfoWindow
{
	@:overload public function new(parent : java.awt.Frame, target : Dynamic, liveArguments : sun.awt.X11.InfoWindow.InfoWindow_Balloon_LiveArguments) : Void;
	
	@:overload public function display(caption : String, text : String, messageType : String) : Void;
	
	@:overload public function dispose() : Void;
	
	
}
@:native('sun$awt$X11$InfoWindow$Balloon$LiveArguments') extern interface InfoWindow_Balloon_LiveArguments extends sun.awt.X11.InfoWindow.InfoWindow_LiveArguments
{
	/** The action to be performed upon clicking the baloon. */
	@:overload public function getActionCommand() : String;
	
	
}
@:native('sun$awt$X11$InfoWindow$Balloon$ActionPerformer') @:internal extern class InfoWindow_Balloon_ActionPerformer extends java.awt.event.MouseAdapter
{
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('sun$awt$X11$InfoWindow$Balloon$Displayer') @:internal extern class InfoWindow_Balloon_Displayer extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	
}
@:native('sun$awt$X11$InfoWindow$Balloon$Message') @:internal extern class InfoWindow_Balloon_Message
{
	
}
