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
	public static var PARENT_WINDOW(default, null) : String;
	
	@:overload @:final private function init(parentWindow : haxe.Int64, bounds : java.awt.Rectangle) : Void;
	
	@:overload @:final private function preInit() : Void;
	
	@:overload @:final private function postInit() : Void;
	
	private var state_lock : sun.awt.X11.XBaseWindow.XBaseWindow_StateLock;
	
	/**
	* Creates window using parameters <code>params</code>
	* If params contain flag DELAYED doesn't do anything.
	* Note: Descendants can call this method to create the window
	* at the time different to instance construction.
	*/
	@:overload @:final private function init(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload public function checkInitialised() : Bool;
	
	@:overload public function new(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	/**
	* Verifies that all required parameters are set. If not, sets them to default values.
	* Verifies values of critical parameters, adjust their values when needed.
	* @throws IllegalArgumentException if params is null
	*/
	@:overload private function checkParams(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload public function getDelayedParams() : sun.awt.X11.XCreateWindowParams;
	
	@:overload private function getWMName() : String;
	
	@:overload private function initClientLeader() : Void;
	
	/**
	* Helper function to set W
	*/
	@:overload @:final public function setWMHints(hints : sun.awt.X11.XWMHints) : Void;
	
	@:overload public function getWMHints() : sun.awt.X11.XWMHints;
	
	/*
	* Call this method under AWTLock.
	* The lock should be acquired untill all operations with XSizeHints are completed.
	*/
	@:overload public function getHints() : sun.awt.X11.XSizeHints;
	
	@:overload public function setSizeHints(flags : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function isMinSizeSet() : Bool;
	
	@:overload public function getWindow() : haxe.Int64;
	
	@:overload public function getContentWindow() : haxe.Int64;
	
	@:overload public function getContentXWindow() : sun.awt.X11.XBaseWindow;
	
	@:overload public function getBounds() : java.awt.Rectangle;
	
	@:overload public function getSize() : java.awt.Dimension;
	
	@:overload public function toFront() : Void;
	
	@:overload public function xRequestFocus(time : haxe.Int64) : Void;
	
	@:overload public function xRequestFocus() : Void;
	
	@:overload public static function xGetInputFocus() : haxe.Int64;
	
	@:overload public function xSetVisible(visible : Bool) : Void;
	
	@:overload public function xSetBounds(bounds : java.awt.Rectangle) : Void;
	
	@:overload public function xSetBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* We should always grab both keyboard and pointer to control event flow
	* on popups. This also simplifies synthetic grab implementation.
	* The active grab overrides activated automatic grab.
	*/
	@:overload public function grabInput() : Bool;
	
	@:overload public function getChildren() : java.util.Set<Null<haxe.Int64>>;
	
	@:overload public function handleMapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleUnmapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleReparentNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handlePropertyNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleDestroyNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleCreateNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleClientMessage(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleVisibilityEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleKeyPress(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleKeyRelease(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleExposeEvent(xev : sun.awt.X11.XEvent) : Void;
	
	/**
	* Activate automatic grab on first ButtonPress,
	* deactivate on full mouse release
	*/
	@:overload public function handleButtonPressRelease(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleMotionNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleXCrossingEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function handleConfigureNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function dispatchEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload private function isEventDisabled(e : sun.awt.X11.XEvent) : Bool;
	
	@:overload public function getAbsoluteX() : Int;
	
	@:overload public function getAbsoluteY() : Int;
	
	@:overload public function getParentWindow() : sun.awt.X11.XBaseWindow;
	
	@:overload public function getToplevelXWindow() : sun.awt.X11.XWindowPeer;
	
	@:overload public function toString() : String;
	
	/**
	* Returns whether the given point is inside of the window.  Coordinates are local.
	*/
	@:overload public function contains(x : Int, y : Int) : Bool;
	
	/**
	* Returns whether the given point is inside of the window.  Coordinates are global.
	*/
	@:overload public function containsGlobal(x : Int, y : Int) : Bool;
	
	
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
