package sun.awt.X11;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XEmbedChildProxyPeer implements java.awt.peer.ComponentPeer implements sun.awt.X11.XEventDispatcher
{
	@:overload public function isObscured() : Bool;
	
	@:overload public function canDetermineObscurity() : Bool;
	
	@:overload public function setVisible(b : Bool) : Void;
	
	@:overload public function setEnabled(b : Bool) : Void;
	
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	@:overload public function repaint(tm : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function print(g : java.awt.Graphics) : Void;
	
	@:overload public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload public function handleEvent(e : java.awt.AWTEvent) : Void;
	
	@:overload public function coalescePaintEvent(e : java.awt.event.PaintEvent) : Void;
	
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	@:overload public function getPreferredSize() : java.awt.Dimension;
	
	@:overload public function getMinimumSize() : java.awt.Dimension;
	
	@:overload public function getColorModel() : java.awt.image.ColorModel;
	
	@:overload public function getToolkit() : java.awt.Toolkit;
	
	@:overload public function getGraphics() : java.awt.Graphics;
	
	@:overload public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload public function dispose() : Void;
	
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	@:overload public function updateCursorImmediately() : Void;
	
	@:overload public function requestFocus(lightweightChild : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Bool;
	
	@:overload public function isFocusable() : Bool;
	
	@:overload public function createImage(producer : java.awt.image.ImageProducer) : java.awt.Image;
	
	@:overload public function createImage(width : Int, height : Int) : java.awt.Image;
	
	@:overload public function createVolatileImage(width : Int, height : Int) : java.awt.image.VolatileImage;
	
	@:overload public function prepareImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Bool;
	
	@:overload public function checkImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Int;
	
	@:overload public function getGraphicsConfiguration() : java.awt.GraphicsConfiguration;
	
	@:overload public function handlesWheelScrolling() : Bool;
	
	@:overload public function createBuffers(numBuffers : Int, caps : java.awt.BufferCapabilities) : Void;
	
	@:overload public function getBackBuffer() : java.awt.Image;
	
	@:overload public function flip(x1 : Int, y1 : Int, x2 : Int, y2 : Int, flipAction : java.awt.BufferCapabilities.BufferCapabilities_FlipContents) : Void;
	
	@:overload public function destroyBuffers() : Void;
	
	/**
	* Used by lightweight implementations to tell a ComponentPeer to layout
	* its sub-elements.  For instance, a lightweight Checkbox needs to layout
	* the box, as well as the text label.
	*/
	@:overload public function layout() : Void;
	
	/**
	* DEPRECATED:  Replaced by getPreferredSize().
	*/
	@:overload public function preferredSize() : java.awt.Dimension;
	
	/**
	* DEPRECATED:  Replaced by getMinimumSize().
	*/
	@:overload public function minimumSize() : java.awt.Dimension;
	
	/**
	* DEPRECATED:  Replaced by setVisible(boolean).
	*/
	@:overload public function show() : Void;
	
	/**
	* DEPRECATED:  Replaced by setVisible(boolean).
	*/
	@:overload public function hide() : Void;
	
	/**
	* DEPRECATED:  Replaced by setEnabled(boolean).
	*/
	@:overload public function enable() : Void;
	
	/**
	* DEPRECATED:  Replaced by setEnabled(boolean).
	*/
	@:overload public function disable() : Void;
	
	/**
	* DEPRECATED:  Replaced by setBounds(int, int, int, int).
	*/
	@:overload public function reshape(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function dispatchEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function reparent(newNativeParent : java.awt.peer.ContainerPeer) : Void;
	
	@:overload public function isReparentSupported() : Bool;
	
	@:overload public function getBounds() : java.awt.Rectangle;
	
	@:overload public function setBoundsOperation(operation : Int) : Void;
	
	@:overload public function applyShape(shape : sun.java2d.pipe.Region) : Void;
	
	@:overload public function setZOrder(above : java.awt.peer.ComponentPeer) : Void;
	
	@:overload public function updateGraphicsData(gc : java.awt.GraphicsConfiguration) : Bool;
	
	
}
