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
	@:overload @:public public function isObscured() : Bool;
	
	@:overload @:public public function canDetermineObscurity() : Bool;
	
	@:overload @:public public function setVisible(b : Bool) : Void;
	
	@:overload @:public public function setEnabled(b : Bool) : Void;
	
	@:overload @:public public function paint(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function repaint(tm : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function print(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload @:public public function handleEvent(e : java.awt.AWTEvent) : Void;
	
	@:overload @:public public function coalescePaintEvent(e : java.awt.event.PaintEvent) : Void;
	
	@:overload @:public public function getLocationOnScreen() : java.awt.Point;
	
	@:overload @:public public function getPreferredSize() : java.awt.Dimension;
	
	@:overload @:public public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public public function getColorModel() : java.awt.image.ColorModel;
	
	@:overload @:public public function getToolkit() : java.awt.Toolkit;
	
	@:overload @:public public function getGraphics() : java.awt.Graphics;
	
	@:overload @:public public function getFontMetrics(font : java.awt.Font) : java.awt.FontMetrics;
	
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public public function setForeground(c : java.awt.Color) : Void;
	
	@:overload @:public public function setBackground(c : java.awt.Color) : Void;
	
	@:overload @:public public function setFont(f : java.awt.Font) : Void;
	
	@:overload @:public public function updateCursorImmediately() : Void;
	
	@:overload @:public public function requestFocus(lightweightChild : java.awt.Component, temporary : Bool, focusedWindowChangeAllowed : Bool, time : haxe.Int64, cause : sun.awt.CausedFocusEvent.CausedFocusEvent_Cause) : Bool;
	
	@:overload @:public public function isFocusable() : Bool;
	
	@:overload @:public public function createImage(producer : java.awt.image.ImageProducer) : java.awt.Image;
	
	@:overload @:public public function createImage(width : Int, height : Int) : java.awt.Image;
	
	@:overload @:public public function createVolatileImage(width : Int, height : Int) : java.awt.image.VolatileImage;
	
	@:overload @:public public function prepareImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Bool;
	
	@:overload @:public public function checkImage(img : java.awt.Image, w : Int, h : Int, o : java.awt.image.ImageObserver) : Int;
	
	@:overload @:public public function getGraphicsConfiguration() : java.awt.GraphicsConfiguration;
	
	@:overload @:public public function handlesWheelScrolling() : Bool;
	
	@:overload @:public public function createBuffers(numBuffers : Int, caps : java.awt.BufferCapabilities) : Void;
	
	@:overload @:public public function getBackBuffer() : java.awt.Image;
	
	@:overload @:public public function flip(x1 : Int, y1 : Int, x2 : Int, y2 : Int, flipAction : java.awt.BufferCapabilities.BufferCapabilities_FlipContents) : Void;
	
	@:overload @:public public function destroyBuffers() : Void;
	
	/**
	* Used by lightweight implementations to tell a ComponentPeer to layout
	* its sub-elements.  For instance, a lightweight Checkbox needs to layout
	* the box, as well as the text label.
	*/
	@:overload @:public public function layout() : Void;
	
	/**
	* DEPRECATED:  Replaced by getPreferredSize().
	*/
	@:overload @:public public function preferredSize() : java.awt.Dimension;
	
	/**
	* DEPRECATED:  Replaced by getMinimumSize().
	*/
	@:overload @:public public function minimumSize() : java.awt.Dimension;
	
	/**
	* DEPRECATED:  Replaced by setVisible(boolean).
	*/
	@:overload @:public public function show() : Void;
	
	/**
	* DEPRECATED:  Replaced by setVisible(boolean).
	*/
	@:overload @:public public function hide() : Void;
	
	/**
	* DEPRECATED:  Replaced by setEnabled(boolean).
	*/
	@:overload @:public public function enable() : Void;
	
	/**
	* DEPRECATED:  Replaced by setEnabled(boolean).
	*/
	@:overload @:public public function disable() : Void;
	
	/**
	* DEPRECATED:  Replaced by setBounds(int, int, int, int).
	*/
	@:overload @:public public function reshape(x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload @:public public function dispatchEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload @:public public function reparent(newNativeParent : java.awt.peer.ContainerPeer) : Void;
	
	@:overload @:public public function isReparentSupported() : Bool;
	
	@:overload @:public public function getBounds() : java.awt.Rectangle;
	
	@:overload @:public public function setBoundsOperation(operation : Int) : Void;
	
	@:overload @:public public function applyShape(shape : sun.java2d.pipe.Region) : Void;
	
	@:overload @:public public function setZOrder(above : java.awt.peer.ComponentPeer) : Void;
	
	@:overload @:public public function updateGraphicsData(gc : java.awt.GraphicsConfiguration) : Bool;
	
	
}
