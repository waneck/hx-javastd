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
extern class XWindow extends sun.awt.X11.XBaseWindow implements sun.awt.X11ComponentPeer
{
	private var mwm_hints : sun.awt.X11.PropMwmHints;
	
	private static var wm_protocols : sun.awt.X11.XAtom;
	
	private static var wm_delete_window : sun.awt.X11.XAtom;
	
	private static var wm_take_focus : sun.awt.X11.XAtom;
	
	private var graphicsConfig : sun.awt.X11GraphicsConfig;
	
	private var graphicsConfigData : sun.awt.X11.AwtGraphicsConfigData;
	
	public static var TARGET(default, null) : String;
	
	@:overload private function initGraphicsConfiguration() : Void;
	
	@:overload public function getGraphicsConfiguration() : java.awt.GraphicsConfiguration;
	
	@:overload public function getGraphicsConfigurationData() : sun.awt.X11.AwtGraphicsConfigData;
	
	@:overload private function getWMClass() : java.NativeArray<String>;
	
	@:overload public function getTarget() : Dynamic;
	
	@:overload public function getEventSource() : java.awt.Component;
	
	@:overload public function getColorModel(transparency : Int) : java.awt.image.ColorModel;
	
	@:overload public function getColorModel() : java.awt.image.ColorModel;
	
	@:overload public function getGraphics() : java.awt.Graphics;
	
	@:overload public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload public function getTargetBounds() : java.awt.Rectangle;
	
	@:overload public function postEventToEventQueue(event : java.awt.AWTEvent) : Void;
	
	@:overload private function doEraseBackground() : Bool;
	
	@:overload @:final public function xSetBackground(c : java.awt.Color) : Void;
	
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	@:overload public function getWinBackground() : java.awt.Color;
	
	@:overload public function isEmbedded() : Bool;
	
	@:overload public function repaint(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function repaint() : Void;
	
	@:overload override private function flush() : Void;
	
	@:overload public function popup(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload override public function handleExposeEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleExposeEvent(target : java.awt.Component, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload override public function handleButtonPressRelease(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleMotionNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:native public function x11inputMethodLookupString(event : haxe.Int64, keysymArray : java.NativeArray<haxe.Int64>) : Bool;
	
	@:overload public function isMouseAbove() : Bool;
	
	@:overload private function setMouseAbove(above : Bool) : Void;
	
	@:overload private function enterNotify(window : haxe.Int64) : Void;
	
	@:overload private function leaveNotify(window : haxe.Int64) : Void;
	
	@:overload override public function handleXCrossingEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function doLayout(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload override public function handleConfigureNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleMapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleUnmapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleKeyPress(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleKeyRelease(xev : sun.awt.X11.XEvent) : Void;
	
	/**
	* Override this methods to get notifications when top-level window state changes. The state is
	* meant in terms of ICCCM: WithdrawnState, IconicState, NormalState
	*/
	@:overload private function stateChanged(time : haxe.Int64, oldState : Int, newState : Int) : Void;
	
	@:overload override public function handlePropertyNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function reshape(bounds : java.awt.Rectangle) : Void;
	
	@:overload public function reshape(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function layout() : Void;
	
	@:overload public function getSurfaceData() : sun.java2d.SurfaceData;
	
	@:overload public function dispose() : Void;
	
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	@:overload public function postKeyEvent(id : Int, when : haxe.Int64, keyCode : Int, keyChar : Int, keyLocation : Int, state : Int, event : haxe.Int64, eventSize : Int, rawCode : haxe.Int64, unicodeFromPrimaryKeysym : Int, extendedKeyCode : Int) : Void;
	
	/* These two methods are actually applicable to toplevel windows only.
	* However, the functionality is required by both the XWindowPeer and
	* XWarningWindow, both of which have the XWindow as a common ancestor.
	* See XWM.setMotifDecor() for details.
	*/
	@:overload public function getMWMHints() : sun.awt.X11.PropMwmHints;
	
	@:overload public function setMWMHints(hints : sun.awt.X11.PropMwmHints) : Void;
	
	@:overload @:final private function initWMProtocols() : Void;
	
	/**
	* Returns list of protocols which should be installed on this window.
	* Descendants can override this method to add class-specific protocols
	*/
	@:overload private function getWMProtocols() : sun.awt.X11.XAtomList;
	
	@:overload public function setFullScreenExclusiveModeState(state : Bool) : Void;
	
	@:overload @:final public function isFullScreenExclusiveMode() : Bool;
	
	
}
