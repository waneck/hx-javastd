package sun.awt;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class NullComponentPeer implements java.awt.peer.LightweightPeer implements java.awt.peer.CanvasPeer implements java.awt.peer.PanelPeer
{
	/**
	* Implements the LightweightPeer interface for use in lightweight components
	* that have no native window associated with them.  This gets created by
	* default in Component so that Component and Container can be directly
	* extended to create useful components written entirely in java.  These
	* components must be hosted somewhere higher up in the component tree by a
	* native container (such as a Frame).
	*
	* This implementation provides no useful semantics and serves only as a
	* marker.  One could provide alternative implementations in java that do
	* something useful for some of the other peer interfaces to minimize the
	* native code.
	*
	* This was renamed from java.awt.LightweightPeer (a horrible and confusing
	* name) and moved from java.awt.Toolkit into sun.awt as a public class in
	* its own file.
	*
	* @author Timothy Prinzing
	* @author Michael Martak
	*/
	@:overload public function isObscured() : Bool;
	
	@:overload public function canDetermineObscurity() : Bool;
	
	@:overload public function isFocusable() : Bool;
	
	@:overload public function setVisible(b : Bool) : Void;
	
	@:overload public function show() : Void;
	
	@:overload public function hide() : Void;
	
	@:overload public function setEnabled(b : Bool) : Void;
	
	@:overload public function enable() : Void;
	
	@:overload public function disable() : Void;
	
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	@:overload public function repaint(tm : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function print(g : java.awt.Graphics) : Void;
	
	@:overload public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload public function reshape(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function coalescePaintEvent(e : java.awt.event.PaintEvent) : Void;
	
	@:overload public function handleEvent(e : java.awt.Event) : Bool;
	
	@:overload public function handleEvent(arg0 : java.awt.AWTEvent) : Void;
	
	@:overload public function getPreferredSize() : java.awt.Dimension;
	
	@:overload public function getMinimumSize() : java.awt.Dimension;
	
	@:overload public function getToolkit() : java.awt.Toolkit;
	
	@:overload public function getColorModel() : java.awt.image.ColorModel;
	
	@:overload public function getGraphics() : java.awt.Graphics;
	
	@:overload public function getGraphicsConfiguration() : java.awt.GraphicsConfiguration;
	
	@:overload public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload public function dispose() : Void;
	
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	@:overload public function updateCursorImmediately() : Void;
	
	@:overload public function setCursor(cursor : java.awt.Cursor) : Void;
	
	@:overload public function requestFocus(lightweightChild : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Bool;
	
	@:overload public function createImage(producer : java.awt.image.ImageProducer) : java.awt.Image;
	
	@:overload public function createImage(width : Int, height : Int) : java.awt.Image;
	
	@:overload public function prepareImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function checkImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Int;
	
	@:overload public function preferredSize() : java.awt.Dimension;
	
	@:overload public function minimumSize() : java.awt.Dimension;
	
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	@:overload public function getInsets() : java.awt.Insets;
	
	@:overload public function beginValidate() : Void;
	
	@:overload public function endValidate() : Void;
	
	@:overload public function insets() : java.awt.Insets;
	
	@:overload public function isPaintPending() : Bool;
	
	@:overload public function handlesWheelScrolling() : Bool;
	
	@:overload public function createVolatileImage(width : Int, height : Int) : java.awt.image.VolatileImage;
	
	@:overload public function beginLayout() : Void;
	
	@:overload public function endLayout() : Void;
	
	@:overload public function createBuffers(numBuffers : Int, caps : java.awt.BufferCapabilities) : Void;
	
	@:overload public function getBackBuffer() : java.awt.Image;
	
	@:overload public function flip(x1 : Int, y1 : Int, x2 : Int, y2 : Int, flipAction : java.awt.BufferCapabilities.BufferCapabilities_FlipContents) : Void;
	
	@:overload public function destroyBuffers() : Void;
	
	/**
	* @see java.awt.peer.ComponentPeer#isReparentSupported
	*/
	@:overload public function isReparentSupported() : Bool;
	
	/**
	* @see java.awt.peer.ComponentPeer#reparent
	*/
	@:overload public function reparent(newNativeParent : java.awt.peer.ContainerPeer) : Void;
	
	@:overload public function layout() : Void;
	
	@:overload public function getBounds() : java.awt.Rectangle;
	
	/**
	* Applies the shape to the native component window.
	* @since 1.7
	*/
	@:require(java7) @:overload public function applyShape(shape : sun.java2d.pipe.Region) : Void;
	
	/**
	* Lowers this component at the bottom of the above HW peer. If the above parameter
	* is null then the method places this component at the top of the Z-order.
	*/
	@:overload public function setZOrder(above : java.awt.peer.ComponentPeer) : Void;
	
	@:overload public function updateGraphicsData(gc : java.awt.GraphicsConfiguration) : Bool;
	
	@:overload public function getAppropriateGraphicsConfiguration(gc : java.awt.GraphicsConfiguration) : java.awt.GraphicsConfiguration;
	
	
}
