package sun.awt.X11;
/*
* Copyright (c) 2002, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class XComponentPeer extends sun.awt.X11.XWindow implements java.awt.peer.ComponentPeer implements java.awt.dnd.peer.DropTargetPeer implements sun.java2d.BackBufferCapsProvider
{
	@:protected private var boundsOperation : Int;
	
	@:overload @:protected private function isInitialReshape() : Bool;
	
	@:overload @:public public function reparent(newNativeParent : java.awt.peer.ContainerPeer) : Void;
	
	@:overload @:public public function isReparentSupported() : Bool;
	
	@:overload @:public public function isObscured() : Bool;
	
	@:overload @:public public function canDetermineObscurity() : Bool;
	
	/**
	* Descendants should use this method to determine whether or not native window
	* has focus.
	*/
	@:overload @:final @:public public function hasFocus() : Bool;
	
	/**
	* Called when component receives focus
	*/
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Called when component loses focus
	*/
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function isFocusable() : Bool;
	
	@:overload @:final @:public public function requestFocus(lightweightChild : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Bool;
	
	/*************************************************
	* END OF FOCUS STUFF
	*************************************************/
	@:overload @:public public function setVisible(b : Bool) : Void;
	
	@:overload @:public public function hide() : Void;
	
	/**
	* @see java.awt.peer.ComponentPeer
	*/
	@:overload @:public public function setEnabled(value : Bool) : Void;
	
	@:overload @:public public function isEnabled() : Bool;
	
	@:overload @:public public function enable() : Void;
	
	@:overload @:public public function disable() : Void;
	
	@:overload @:public public function paint(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function repaint(tm : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public override public function getGraphics() : java.awt.Graphics;
	
	@:overload @:public public function print(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload @:public override public function reshape(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function coalescePaintEvent(e : java.awt.event.PaintEvent) : Void;
	
	@:overload @:public public function handleEvent(e : java.awt.AWTEvent) : Void;
	
	@:overload @:public override public function handleButtonPressRelease(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public public function getPreferredSize() : java.awt.Dimension;
	
	@:overload @:public override public function layout() : Void;
	
	@:overload @:public public function getToolkit() : java.awt.Toolkit;
	
	/*
	* Draw a 3D rectangle using the Motif colors.
	* "Normal" rectangles have shadows on the bottom.
	* "Depressed" rectangles (such as pressed buttons) have shadows on the top,
	* in which case true should be passed for topShadow.
	*/
	@:overload @:public public function drawMotif3DRect(g : java.awt.Graphics, x : Int, y : Int, width : Int, height : Int, topShadow : Bool) : Void;
	
	@:overload @:public override public function setBackground(c : java.awt.Color) : Void;
	
	@:overload @:public public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Gets the font metrics for the specified font.
	* @param font the font for which font metrics is to be
	*      obtained
	* @return the font metrics for <code>font</code>
	* @see       #getFont
	* @see       #getPeer
	* @see       java.awt.peer.ComponentPeer#getFontMetrics(Font)
	* @see       Toolkit#getFontMetrics(Font)
	* @since     JDK1.0
	*/
	@:require(java0) @:overload @:public override public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload @:public public function setFont(f : java.awt.Font) : Void;
	
	@:overload @:public public function getFont() : java.awt.Font;
	
	@:overload @:public public function updateCursorImmediately() : Void;
	
	@:overload @:public @:final public function pSetCursor(cursor : java.awt.Cursor) : Void;
	
	/*
	* The method changes the cursor.
	* @param cursor - a new cursor to change to.
	* @param ignoreSubComponents - if {@code true} is passed then
	*                              the new cursor will be installed on window.
	*                              if {@code false} is passed then
	*                              subsequent components will try to handle
	*                              this request and install their cursor.
	*/
	@:overload @:public public function pSetCursor(cursor : java.awt.Cursor, ignoreSubComponents : Bool) : Void;
	
	@:overload @:public public function createImage(producer : java.awt.image.ImageProducer) : java.awt.Image;
	
	@:overload @:public public function createImage(width : Int, height : Int) : java.awt.Image;
	
	@:overload @:public public function createVolatileImage(width : Int, height : Int) : java.awt.image.VolatileImage;
	
	@:overload @:public public function prepareImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Bool;
	
	@:overload @:public public function checkImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Int;
	
	@:overload @:public public function preferredSize() : java.awt.Dimension;
	
	@:overload @:public public function minimumSize() : java.awt.Dimension;
	
	@:overload @:public public function getInsets() : java.awt.Insets;
	
	@:overload @:public public function beginValidate() : Void;
	
	@:overload @:public public function endValidate() : Void;
	
	/**
	* DEPRECATED:  Replaced by getInsets().
	*/
	@:overload @:public public function insets() : java.awt.Insets;
	
	@:overload @:public public function isPaintPending() : Bool;
	
	@:overload @:public public function handlesWheelScrolling() : Bool;
	
	@:overload @:public public function beginLayout() : Void;
	
	@:overload @:public public function endLayout() : Void;
	
	@:overload @:public override public function getWinBackground() : java.awt.Color;
	
	@:overload @:public public function getGUIcolors() : java.NativeArray<java.awt.Color>;
	
	/**
	* Draw a 3D oval.
	*/
	@:overload @:public public function draw3DOval(g : java.awt.Graphics, colors : java.NativeArray<java.awt.Color>, x : Int, y : Int, w : Int, h : Int, raised : Bool) : Void;
	
	@:overload @:public public function draw3DRect(g : java.awt.Graphics, colors : java.NativeArray<java.awt.Color>, x : Int, y : Int, width : Int, height : Int, raised : Bool) : Void;
	
	@:overload @:public public function createBuffers(numBuffers : Int, caps : java.awt.BufferCapabilities) : Void;
	
	@:overload @:public public function getBackBufferCaps() : java.awt.BufferCapabilities;
	
	@:overload @:public public function flip(x1 : Int, y1 : Int, x2 : Int, y2 : Int, flipAction : java.awt.BufferCapabilities.BufferCapabilities_FlipContents) : Void;
	
	@:overload @:public public function getBackBuffer() : java.awt.Image;
	
	@:overload @:public public function destroyBuffers() : Void;
	
	@:overload @:public public function notifyTextComponentChange(add : Bool) : Void;
	
	/**
	* Returns true if this event is disabled and shouldn't be processed by window
	* Currently if target component is disabled the following event will be disabled on window:
	* ButtonPress, ButtonRelease, KeyPress, KeyRelease, EnterNotify, LeaveNotify, MotionNotify
	*/
	@:overload @:protected override private function isEventDisabled(e : sun.awt.X11.XEvent) : Bool;
	
	@:overload @:public public function setBoundsOperation(operation : Int) : Void;
	
	/**
	* Lowers this component at the bottom of the above HW peer. If the above parameter
	* is null then the method places this component at the top of the Z-order.
	*/
	@:overload @:public public function setZOrder(above : java.awt.peer.ComponentPeer) : Void;
	
	/****** DropTargetPeer implementation ********************/
	@:overload @:public public function addDropTarget(dt : java.awt.dnd.DropTarget) : Void;
	
	@:overload @:public public function removeDropTarget(dt : java.awt.dnd.DropTarget) : Void;
	
	/**
	* Applies the shape to the X-window.
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function applyShape(shape : sun.java2d.pipe.Region) : Void;
	
	@:overload @:public public function updateGraphicsData(gc : java.awt.GraphicsConfiguration) : Bool;
	
	
}
