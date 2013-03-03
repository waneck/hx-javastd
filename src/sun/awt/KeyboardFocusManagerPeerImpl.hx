package sun.awt;
/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyboardFocusManagerPeerImpl implements java.awt.peer.KeyboardFocusManagerPeer
{
	@:public @:static @:final public static var SNFH_FAILURE(default, null) : Int;
	
	@:public @:static @:final public static var SNFH_SUCCESS_HANDLED(default, null) : Int;
	
	@:public @:static @:final public static var SNFH_SUCCESS_PROCEED(default, null) : Int;
	
	@:protected private var manager : java.awt.KeyboardFocusManager;
	
	@:overload @:public public function new(manager : java.awt.KeyboardFocusManager) : Void;
	
	@:overload @:public public function clearGlobalFocusOwner(activeWindow : java.awt.Window) : Void;
	
	/*
	* WARNING: Don't call it on the Toolkit thread.
	*
	* Checks if the component:
	* 1) accepts focus on click (in general)
	* 2) may be a focus owner (in particular)
	*/
	@:overload @:public @:static public static function shouldFocusOnClick(component : java.awt.Component) : Bool;
	
	/*
	* Posts proper lost/gain focus events to the event queue.
	*/
	@:overload @:public @:static public static function deliverFocus(lightweightChild : java.awt.Component, target : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause, currentFocusOwner : java.awt.Component) : Bool;
	
	@:overload @:public @:static public static function requestFocusFor(target : java.awt.Component, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Bool;
	
	@:overload @:public @:static public static function shouldNativelyFocusHeavyweight(heavyweight : java.awt.Component, descendant : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Int;
	
	@:overload @:public @:static public static function removeLastFocusRequest(heavyweight : java.awt.Component) : Void;
	
	@:overload @:public @:static public static function processSynchronousLightweightTransfer(heavyweight : java.awt.Component, descendant : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64) : Bool;
	
	/**
	* Returns the currently focused window.
	*
	* @return the currently focused window
	*
	* @see KeyboardFocusManager#getNativeFocusedWindow()
	*/
	@:overload @:public public function getCurrentFocusedWindow() : java.awt.Window;
	
	/**
	* Returns the component that currently owns the input focus.
	*
	* @return the component that currently owns the input focus
	*
	* @see KeyboardFocusManager#getNativeFocusOwner()
	*/
	@:overload @:public public function getCurrentFocusOwner() : java.awt.Component;
	
	/**
	* Sets the component that should become the focus owner.
	*
	* @param comp the component to become the focus owner
	*
	* @see KeyboardFocusManager#setNativeFocusOwner(Component)
	*/
	@:overload @:public public function setCurrentFocusOwner(comp : java.awt.Component) : Void;
	
	
}
