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
extern class XBaseWindow
{
	@:public @:static @:final public static var PARENT_WINDOW(default, null) : String;
	
	@:overload @:protected @:final private function init(parentWindow : haxe.Int64, bounds : java.awt.Rectangle) : Void;
	
	@:overload @:protected @:final private function preInit() : Void;
	
	@:overload @:protected @:final private function postInit() : Void;
	
	@:protected private var state_lock : sun.awt.X11.XBaseWindow.XBaseWindow_StateLock;
	
	/**
	* Creates window using parameters <code>params</code>
	* If params contain flag DELAYED doesn't do anything.
	* Note: Descendants can call this method to create the window
	* at the time different to instance construction.
	*/
	@:overload @:protected @:final private function init(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload @:public public function checkInitialised() : Bool;
	
	@:overload @:public public function new(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	/**
	* Verifies that all required parameters are set. If not, sets them to default values.
	* Verifies values of critical parameters, adjust their values when needed.
	* @throws IllegalArgumentException if params is null
	*/
	@:overload @:protected private function checkParams(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload @:public public function getDelayedParams() : sun.awt.X11.XCreateWindowParams;
	
	@:overload @:protected private function getWMName() : String;
	
	@:overload @:protected private function initClientLeader() : Void;
	
	/**
	* Helper function to set W
	*/
	@:overload @:public @:final public function setWMHints(hints : sun.awt.X11.XWMHints) : Void;
	
	@:overload @:public public function getWMHints() : sun.awt.X11.XWMHints;
	
	/*
	* Call this method under AWTLock.
	* The lock should be acquired untill all operations with XSizeHints are completed.
	*/
	@:overload @:public public function getHints() : sun.awt.X11.XSizeHints;
	
	@:overload @:public public function setSizeHints(flags : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function isMinSizeSet() : Bool;
	
	@:overload @:public public function getWindow() : haxe.Int64;
	
	@:overload @:public public function getContentWindow() : haxe.Int64;
	
	@:overload @:public public function getContentXWindow() : sun.awt.X11.XBaseWindow;
	
	@:overload @:public public function getBounds() : java.awt.Rectangle;
	
	@:overload @:public public function getSize() : java.awt.Dimension;
	
	@:overload @:public public function toFront() : Void;
	
	@:overload @:public public function xRequestFocus(time : haxe.Int64) : Void;
	
	@:overload @:public public function xRequestFocus() : Void;
	
	@:overload @:public @:static public static function xGetInputFocus() : haxe.Int64;
	
	@:overload @:public public function xSetVisible(visible : Bool) : Void;
	
	@:overload @:public public function xSetBounds(bounds : java.awt.Rectangle) : Void;
	
	@:overload @:public public function xSetBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* We should always grab both keyboard and pointer to control event flow
	* on popups. This also simplifies synthetic grab implementation.
	* The active grab overrides activated automatic grab.
	*/
	@:overload @:public public function grabInput() : Bool;
	
	@:overload @:public public function getChildren() : java.util.Set<Null<haxe.Int64>>;
	
	@:overload @:public public function handleMapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleUnmapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleReparentNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handlePropertyNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleDestroyNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleCreateNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleClientMessage(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleVisibilityEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleKeyPress(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleKeyRelease(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleExposeEvent(xev : sun.awt.X11.XEvent) : Void;
	
	/**
	* Activate automatic grab on first ButtonPress,
	* deactivate on full mouse release
	*/
	@:overload @:public public function handleButtonPressRelease(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleMotionNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleXCrossingEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function handleConfigureNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function dispatchEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:protected private function isEventDisabled(e : sun.awt.X11.XEvent) : Bool;
	
	@:overload @:public public function getAbsoluteX() : Int;
	
	@:overload @:public public function getAbsoluteY() : Int;
	
	@:overload @:public public function getParentWindow() : sun.awt.X11.XBaseWindow;
	
	@:overload @:public public function getToplevelXWindow() : sun.awt.X11.XWindowPeer;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Returns whether the given point is inside of the window.  Coordinates are local.
	*/
	@:overload @:public public function contains(x : Int, y : Int) : Bool;
	
	/**
	* Returns whether the given point is inside of the window.  Coordinates are global.
	*/
	@:overload @:public public function containsGlobal(x : Int, y : Int) : Bool;
	
	
}
@:native('sun$awt$X11$XBaseWindow$InitialiseState') extern enum XBaseWindow_InitialiseState
{
	INITIALISING;
	NOT_INITIALISED;
	INITIALISED;
	FAILED_INITIALISATION;
	
}

@:native('sun$awt$X11$XBaseWindow$StateLock') @:internal extern class XBaseWindow_StateLock
{
	
}
