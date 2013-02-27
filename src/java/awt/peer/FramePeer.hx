package java.awt.peer;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface FramePeer extends java.awt.peer.WindowPeer
{
	/**
	* Sets the title on the frame.
	*
	* @param title the title to set
	*
	* @see Frame#setTitle(String)
	*/
	@:overload public function setTitle(title : String) : Void;
	
	/**
	* Sets the menu bar for the frame.
	*
	* @param mb the menu bar to set
	*
	* @see Frame#setMenuBar(MenuBar)
	*/
	@:overload public function setMenuBar(mb : java.awt.MenuBar) : Void;
	
	/**
	* Sets if the frame should be resizable or not.
	*
	* @param resizeable {@code true} when the frame should be resizable,
	*        {@code false} if not
	*
	* @see Frame#setResizable(boolean)
	*/
	@:overload public function setResizable(resizeable : Bool) : Void;
	
	/**
	* Changes the state of the frame.
	*
	* @param state the new state
	*
	* @see Frame#setExtendedState(int)
	*/
	@:overload public function setState(state : Int) : Void;
	
	/**
	* Returns the current state of the frame.
	*
	* @return the current state of the frame
	*
	* @see Frame#getExtendedState()
	*/
	@:overload public function getState() : Int;
	
	/**
	* Sets the bounds of the frame when it becomes maximized.
	*
	* @param bounds the maximized bounds of the frame
	*
	* @see Frame#setMaximizedBounds(Rectangle)
	*/
	@:overload public function setMaximizedBounds(bounds : java.awt.Rectangle) : Void;
	
	/**
	* Sets the size and location for embedded frames. (On embedded frames,
	* setLocation() and setBounds() always set the frame to (0,0) for
	* backwards compatibility.
	*
	* @param x the X location
	* @param y the Y location
	* @param width the width of the frame
	* @param height the height of the frame
	*
	* @see EmbeddedFrame#setBoundsPrivate(int, int, int, int)
	*/
	@:overload public function setBoundsPrivate(x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Returns the size and location for embedded frames. (On embedded frames,
	* setLocation() and setBounds() always set the frame to (0,0) for
	* backwards compatibility.
	*
	* @return the bounds of an embedded frame
	*
	* @see EmbeddedFrame#getBoundsPrivate()
	*/
	@:overload public function getBoundsPrivate() : java.awt.Rectangle;
	
	
}
