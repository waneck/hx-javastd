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
@:internal extern class XWindowPeer extends sun.awt.X11.XPanelPeer implements java.awt.peer.WindowPeer implements sun.awt.DisplayChangedListener
{
	private var prevTransientFor : XWindowPeer;
	
	@:overload @:final public function getWindowType() : java.awt.Window.Window_Type;
	
	private var toplevelStateListeners : java.util.Vector<sun.awt.X11.ToplevelStateListener>;
	
	@:overload override private function getWMName() : String;
	
	@:overload public function updateIconImages() : Void;
	
	@:overload public function recursivelySetIcon(icons : java.util.List<sun.awt.X11.XIconInfo>) : Void;
	
	@:overload @:synchronized private static function getDefaultIconInfo() : java.util.List<sun.awt.X11.XIconInfo>;
	
	@:overload public function updateMinimumSize() : Void;
	
	@:overload public function getTargetMinimumSize() : java.awt.Dimension;
	
	@:overload public function getOwnerPeer() : XWindowPeer;
	
	@:overload override public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload override public function getInsets() : java.awt.Insets;
	
	@:overload public function handleIconify() : Void;
	
	@:overload public function handleDeiconify() : Void;
	
	@:overload public function handleStateChange(oldState : Int, newState : Int) : Void;
	
	/**
	* DEPRECATED:  Replaced by getInsets().
	*/
	@:overload override public function insets() : java.awt.Insets;
	
	@:overload public function handleWindowFocusIn_Dispatch() : Void;
	
	@:overload public function handleWindowFocusInSync(serial : haxe.Int64) : Void;
	
	@:overload public function handleWindowFocusIn(serial : haxe.Int64) : Void;
	
	@:overload public function handleWindowFocusOut(oppositeWindow : java.awt.Window, serial : haxe.Int64) : Void;
	
	@:overload public function handleWindowFocusOutSync(oppositeWindow : java.awt.Window, serial : haxe.Int64) : Void;
	
	/* Xinerama
	* called to check if we've been moved onto a different screen
	* Based on checkNewXineramaScreen() in awt_GraphicsEnv.c
	*/
	@:overload public function checkIfOnNewScreen(newBounds : java.awt.Rectangle) : Void;
	
	/**
	* From the DisplayChangedListener interface; called from
	* X11GraphicsDevice when the display mode has been changed.
	*/
	@:overload public function displayChanged() : Void;
	
	/**
	* From the DisplayChangedListener interface; top-levels do not need
	* to react to this event.
	*/
	@:overload public function paletteChanged() : Void;
	
	/*
	* Overridden to check if we need to update our GraphicsDevice/Config
	* Added for 4934052.
	*/
	@:overload override public function handleConfigureNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	/**
	* Requests focus to this top-level. Descendants should override to provide
	* implementations based on a class of top-level.
	*/
	@:overload private function requestXFocus(time : haxe.Int64, timeProvided : Bool) : Void;
	
	@:overload @:final public function focusAllowedFor() : Bool;
	
	@:overload public function handleFocusEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function toFront() : Void;
	
	@:overload public function toBack() : Void;
	
	@:overload public function setAlwaysOnTop(alwaysOnTop : Bool) : Void;
	
	@:overload override public function setVisible(vis : Bool) : Void;
	
	@:overload private function suppressWmTakeFocus(doSuppress : Bool) : Void;
	
	@:overload public function repositionSecurityWarning() : Void;
	
	@:overload override private function setMouseAbove(above : Bool) : Void;
	
	@:overload override public function setFullScreenExclusiveModeState(state : Bool) : Void;
	
	@:overload public function updateSecurityWarningVisibility() : Void;
	
	@:overload override public function dispose() : Void;
	
	@:overload override public function handleVisibilityEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleMapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleUnmapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload private function isWMStateNetHidden() : Bool;
	
	@:overload private function requestInitialFocus() : Void;
	
	@:overload public function addToplevelStateListener(l : sun.awt.X11.ToplevelStateListener) : Void;
	
	@:overload public function removeToplevelStateListener(l : sun.awt.X11.ToplevelStateListener) : Void;
	
	/**
	* Override this methods to get notifications when top-level window state changes. The state is
	* meant in terms of ICCCM: WithdrawnState, IconicState, NormalState
	*/
	@:overload override private function stateChanged(time : haxe.Int64, oldState : Int, newState : Int) : Void;
	
	@:overload public function setModalBlocked(d : java.awt.Dialog, blocked : Bool) : Void;
	
	@:overload public function setModalBlocked(d : java.awt.Dialog, blocked : Bool, javaToplevels : java.util.Vector<XWindowPeer>) : Void;
	
	@:overload public function requestWindowFocus(actualFocusedWindow : XWindowPeer) : Bool;
	
	@:overload public function requestWindowFocus() : Bool;
	
	@:overload public function requestWindowFocus(time : haxe.Int64, timeProvided : Bool) : Bool;
	
	@:overload override public function xSetVisible(visible : Bool) : Void;
	
	@:overload public function addDropTarget() : Void;
	
	@:overload public function removeDropTarget() : Void;
	
	@:overload public function updateFocusableWindowState() : Void;
	
	@:overload public function getNETWMState() : sun.awt.X11.XAtomList;
	
	@:overload public function setNETWMState(state : sun.awt.X11.XAtomList) : Void;
	
	@:overload override public function getMWMHints() : sun.awt.X11.PropMwmHints;
	
	@:overload override public function setMWMHints(hints : sun.awt.X11.PropMwmHints) : Void;
	
	@:overload private function updateDropTarget() : Void;
	
	@:overload public function setGrab(grab : Bool) : Void;
	
	@:overload public function isGrabbed() : Bool;
	
	@:overload override public function handleXCrossingEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleMotionNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleButtonPressRelease(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function print(g : java.awt.Graphics) : Void;
	
	@:overload public function setOpacity(opacity : Single) : Void;
	
	@:overload public function setOpaque(isOpaque : Bool) : Void;
	
	@:overload public function updateWindow() : Void;
	
	
}
