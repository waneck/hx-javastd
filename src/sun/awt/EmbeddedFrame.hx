package sun.awt;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class EmbeddedFrame extends java.awt.Frame implements java.awt.KeyEventDispatcher implements java.beans.PropertyChangeListener
{
	/*
	* The constants define focus traversal directions.
	* Use them in {@code traverseIn}, {@code traverseOut} methods.
	*/
	@:protected @:static @:final private static var FORWARD(default, null) : Bool;
	
	@:protected @:static @:final private static var BACKWARD(default, null) : Bool;
	
	@:overload @:public public function supportsXEmbed() : Bool;
	
	@:overload @:protected private function new(supportsXEmbed : Bool) : Void;
	
	@:overload @:protected private function new() : Void;
	
	/**
	* @deprecated This constructor will be removed in 1.5
	*/
	@:overload @:protected private function new(handle : Int) : Void;
	
	@:overload @:protected private function new(handle : haxe.Int64) : Void;
	
	@:overload @:protected private function new(handle : haxe.Int64, supportsXEmbed : Bool) : Void;
	
	/**
	* Block introspection of a parent window by this child.
	*/
	@:overload @:public override public function getParent() : java.awt.Container;
	
	/**
	* Needed to track which KeyboardFocusManager is current. We want to avoid memory
	* leaks, so when KFM stops being current, we remove ourselves as listeners.
	*/
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Because there may be many AppContexts, and we can't be sure where this
	* EmbeddedFrame is first created or shown, we can't automatically determine
	* the correct KeyboardFocusManager to attach to as KeyEventDispatcher.
	* Those who want to use the functionality of traversing out of the EmbeddedFrame
	* must call this method on the Applet's AppContext. After that, all the changes
	* can be handled automatically, including possible replacement of
	* KeyboardFocusManager.
	*/
	@:overload @:public public function registerListeners() : Void;
	
	/**
	* Needed to avoid memory leak: we register this EmbeddedFrame as a listener with
	* KeyboardFocusManager of applet's AppContext. We don't want the KFM to keep
	* reference to our EmbeddedFrame forever if the Frame is no longer in use, so we
	* add listeners in show() and remove them in hide().
	*/
	@:overload @:public override public function show() : Void;
	
	/**
	* Needed to avoid memory leak: we register this EmbeddedFrame as a listener with
	* KeyboardFocusManager of applet's AppContext. We don't want the KFM to keep
	* reference to our EmbeddedFrame forever if the Frame is no longer in use, so we
	* add listeners in show() and remove them in hide().
	*/
	@:overload @:public override public function hide() : Void;
	
	/**
	* Need this method to detect when the focus may have chance to leave the
	* focus cycle root which is EmbeddedFrame. Mostly, the code here is copied
	* from DefaultKeyboardFocusManager.processKeyEvent with some minor
	* modifications.
	*/
	@:overload @:public public function dispatchKeyEvent(e : java.awt.event.KeyEvent) : Bool;
	
	/**
	* This method is called by the embedder when we should receive focus as element
	* of the traversal chain.  The method requests focus on:
	* 1. the first Component of this EmbeddedFrame if user moves focus forward
	*    in the focus traversal cycle.
	* 2. the last Component of this EmbeddedFrame if user moves focus backward
	*    in the focus traversal cycle.
	*
	* The direction parameter specifies which of the two mentioned cases is
	* happening. Use FORWARD and BACKWARD constants defined in the EmbeddedFrame class
	* to avoid confusing boolean values.
	*
	* A concrete implementation of this method is defined in the platform-dependent
	* subclasses.
	*
	* @param direction FORWARD or BACKWARD
	* @return true, if the EmbeddedFrame wants to get focus, false otherwise.
	*/
	@:overload @:public public function traverseIn(direction : Bool) : Bool;
	
	/**
	* This method is called from dispatchKeyEvent in the following two cases:
	* 1. The focus is on the first Component of this EmbeddedFrame and we are
	*    about to transfer the focus backward.
	* 2. The focus in on the last Component of this EmbeddedFrame and we are
	*    about to transfer the focus forward.
	* This is needed to give the opportuity for keyboard focus to leave the
	* EmbeddedFrame. Override this method, initiate focus transfer in it and
	* return true if you want the focus to leave EmbeddedFrame's cycle.
	* The direction parameter specifies which of the two mentioned cases is
	* happening. Use FORWARD and BACKWARD constants defined in EmbeddedFrame
	* to avoid confusing boolean values.
	*
	* @param direction FORWARD or BACKWARD
	* @return true, if EmbeddedFrame wants the focus to leave it,
	*         false otherwise.
	*/
	@:overload @:protected private function traverseOut(direction : Bool) : Bool;
	
	/**
	* Block modifying any frame attributes, since they aren't applicable
	* for EmbeddedFrames.
	*/
	@:overload @:public override public function setTitle(title : String) : Void;
	
	@:overload @:public override public function setIconImage(image : java.awt.Image) : Void;
	
	@:overload @:public override public function setIconImages(icons : java.util.List<java.awt.Image>) : Void;
	
	@:overload @:public override public function setMenuBar(mb : java.awt.MenuBar) : Void;
	
	@:overload @:public override public function setResizable(resizable : Bool) : Void;
	
	@:overload @:public override public function remove(m : java.awt.MenuComponent) : Void;
	
	@:overload @:public override public function isResizable() : Bool;
	
	@:overload @:public override public function addNotify() : Void;
	
	@:overload @:public public function setCursorAllowed(isCursorAllowed : Bool) : Void;
	
	@:overload @:public public function isCursorAllowed() : Bool;
	
	@:overload @:public override public function getCursor() : java.awt.Cursor;
	
	@:overload @:protected private function setPeer(p : java.awt.peer.ComponentPeer) : Void;
	
	/**
	* Synthesize native message to activate or deactivate EmbeddedFrame window
	* depending on the value of parameter <code>b</code>.
	* Peers should override this method if they are to implement
	* this functionality.
	* @param doActivate  if <code>true</code>, activates the window;
	* otherwise, deactivates the window
	*/
	@:overload @:public public function synthesizeWindowActivation(doActivate : Bool) : Void;
	
	/**
	* Moves this embedded frame to a new location. The top-left corner of
	* the new location is specified by the <code>x</code> and <code>y</code>
	* parameters relative to the native parent component.
	* <p>
	* setLocation() and setBounds() for EmbeddedFrame really don't move it
	* within the native parent. These methods always put embedded frame to
	* (0, 0) for backward compatibility. To allow moving embedded frame
	* setLocationPrivate() and setBoundsPrivate() were introduced, and they
	* work just the same way as setLocation() and setBounds() for usual,
	* non-embedded components.
	* </p>
	* <p>
	* Using usual get/setLocation() and get/setBounds() together with new
	* get/setLocationPrivate() and get/setBoundsPrivate() is not recommended.
	* For example, calling getBoundsPrivate() after setLocation() works fine,
	* but getBounds() after setBoundsPrivate() may return unpredictable value.
	* </p>
	* @param x the new <i>x</i>-coordinate relative to the parent component
	* @param y the new <i>y</i>-coordinate relative to the parent component
	* @see java.awt.Component#setLocation
	* @see #getLocationPrivate
	* @see #setBoundsPrivate
	* @see #getBoundsPrivate
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function setLocationPrivate(x : Int, y : Int) : Void;
	
	/**
	* Gets the location of this embedded frame as a point specifying the
	* top-left corner relative to parent component.
	* <p>
	* setLocation() and setBounds() for EmbeddedFrame really don't move it
	* within the native parent. These methods always put embedded frame to
	* (0, 0) for backward compatibility. To allow getting location and size
	* of embedded frame getLocationPrivate() and getBoundsPrivate() were
	* introduced, and they work just the same way as getLocation() and getBounds()
	* for ususal, non-embedded components.
	* </p>
	* <p>
	* Using usual get/setLocation() and get/setBounds() together with new
	* get/setLocationPrivate() and get/setBoundsPrivate() is not recommended.
	* For example, calling getBoundsPrivate() after setLocation() works fine,
	* but getBounds() after setBoundsPrivate() may return unpredictable value.
	* </p>
	* @return a point indicating this embedded frame's top-left corner
	* @see java.awt.Component#getLocation
	* @see #setLocationPrivate
	* @see #setBoundsPrivate
	* @see #getBoundsPrivate
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function getLocationPrivate() : java.awt.Point;
	
	/**
	* Moves and resizes this embedded frame. The new location of the top-left
	* corner is specified by <code>x</code> and <code>y</code> parameters
	* relative to the native parent component. The new size is specified by
	* <code>width</code> and <code>height</code>.
	* <p>
	* setLocation() and setBounds() for EmbeddedFrame really don't move it
	* within the native parent. These methods always put embedded frame to
	* (0, 0) for backward compatibility. To allow moving embedded frames
	* setLocationPrivate() and setBoundsPrivate() were introduced, and they
	* work just the same way as setLocation() and setBounds() for usual,
	* non-embedded components.
	* </p>
	* <p>
	* Using usual get/setLocation() and get/setBounds() together with new
	* get/setLocationPrivate() and get/setBoundsPrivate() is not recommended.
	* For example, calling getBoundsPrivate() after setLocation() works fine,
	* but getBounds() after setBoundsPrivate() may return unpredictable value.
	* </p>
	* @param x the new <i>x</i>-coordinate relative to the parent component
	* @param y the new <i>y</i>-coordinate relative to the parent component
	* @param width the new <code>width</code> of this embedded frame
	* @param height the new <code>height</code> of this embedded frame
	* @see java.awt.Component#setBounds
	* @see #setLocationPrivate
	* @see #getLocationPrivate
	* @see #getBoundsPrivate
	* @since 1.5
	*/
	@:require(java5) @:overload @:protected private function setBoundsPrivate(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Gets the bounds of this embedded frame as a rectangle specifying the
	* width, height and location relative to the native parent component.
	* <p>
	* setLocation() and setBounds() for EmbeddedFrame really don't move it
	* within the native parent. These methods always put embedded frame to
	* (0, 0) for backward compatibility. To allow getting location and size
	* of embedded frames getLocationPrivate() and getBoundsPrivate() were
	* introduced, and they work just the same way as getLocation() and getBounds()
	* for ususal, non-embedded components.
	* </p>
	* <p>
	* Using usual get/setLocation() and get/setBounds() together with new
	* get/setLocationPrivate() and get/setBoundsPrivate() is not recommended.
	* For example, calling getBoundsPrivate() after setLocation() works fine,
	* but getBounds() after setBoundsPrivate() may return unpredictable value.
	* </p>
	* @return a rectangle indicating this embedded frame's bounds
	* @see java.awt.Component#getBounds
	* @see #setLocationPrivate
	* @see #getLocationPrivate
	* @see #setBoundsPrivate
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function getBoundsPrivate() : java.awt.Rectangle;
	
	@:overload @:public override public function toFront() : Void;
	
	@:overload @:public override public function toBack() : Void;
	
	@:overload @:public @:abstract public function registerAccelerator(stroke : java.awt.AWTKeyStroke) : Void;
	
	@:overload @:public @:abstract public function unregisterAccelerator(stroke : java.awt.AWTKeyStroke) : Void;
	
	/**
	* Checks if the component is in an EmbeddedFrame. If so,
	* returns the applet found in the hierarchy or null if
	* not found.
	* @return the parent applet or {@ null}
	* @since 1.6
	*/
	@:require(java6) @:overload @:public @:static public static function getAppletIfAncestorOf(comp : java.awt.Component) : java.applet.Applet;
	
	/**
	* This method should be overriden in subclasses. It is
	* called when window this frame is within should be blocked
	* by some modal dialog.
	*/
	@:overload @:public public function notifyModalBlocked(blocker : java.awt.Dialog, blocked : Bool) : Void;
	
	
}
@:native('sun$awt$EmbeddedFrame$NullEmbeddedFramePeer') @:internal extern class EmbeddedFrame_NullEmbeddedFramePeer extends sun.awt.NullComponentPeer implements java.awt.peer.FramePeer
{
	@:overload @:public public function setTitle(title : String) : Void;
	
	@:overload @:public public function setIconImage(im : java.awt.Image) : Void;
	
	@:overload @:public public function updateIconImages() : Void;
	
	@:overload @:public public function setMenuBar(mb : java.awt.MenuBar) : Void;
	
	@:overload @:public public function setResizable(resizeable : Bool) : Void;
	
	@:overload @:public public function setState(state : Int) : Void;
	
	@:overload @:public public function getState() : Int;
	
	@:overload @:public public function setMaximizedBounds(b : java.awt.Rectangle) : Void;
	
	@:overload @:public public function toFront() : Void;
	
	@:overload @:public public function toBack() : Void;
	
	@:overload @:public public function updateFocusableWindowState() : Void;
	
	@:overload @:public public function updateAlwaysOnTop() : Void;
	
	@:overload @:public public function setAlwaysOnTop(alwaysOnTop : Bool) : Void;
	
	@:overload @:public public function getGlobalHeavyweightFocusOwner() : java.awt.Component;
	
	@:overload @:public public function setBoundsPrivate(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function getBoundsPrivate() : java.awt.Rectangle;
	
	@:overload @:public public function setModalBlocked(blocker : java.awt.Dialog, blocked : Bool) : Void;
	
	/**
	* @see java.awt.peer.ContainerPeer#restack
	*/
	@:overload @:public public function restack() : Void;
	
	/**
	* @see java.awt.peer.ContainerPeer#isRestackSupported
	*/
	@:overload @:public public function isRestackSupported() : Bool;
	
	@:overload @:public public function requestWindowFocus() : Bool;
	
	@:overload @:public public function updateMinimumSize() : Void;
	
	@:overload @:public public function setOpacity(opacity : Single) : Void;
	
	@:overload @:public public function setOpaque(isOpaque : Bool) : Void;
	
	@:overload @:public public function updateWindow() : Void;
	
	@:overload @:public public function repositionSecurityWarning() : Void;
	
	
}
