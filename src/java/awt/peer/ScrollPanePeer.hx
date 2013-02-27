package java.awt.peer;
/*
* Copyright (c) 1996, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface ScrollPanePeer extends java.awt.peer.ContainerPeer
{
	/**
	* Returns the height of the horizontal scroll bar.
	*
	* @return the height of the horizontal scroll bar
	*
	* @see ScrollPane#getHScrollbarHeight()
	*/
	@:overload public function getHScrollbarHeight() : Int;
	
	/**
	* Returns the width of the vertical scroll bar.
	*
	* @return the width of the vertical scroll bar
	*
	* @see ScrollPane#getVScrollbarWidth()
	*/
	@:overload public function getVScrollbarWidth() : Int;
	
	/**
	* Sets the scroll position of the child.
	*
	* @param x the X coordinate of the scroll position
	* @param y the Y coordinate of the scroll position
	*
	* @see ScrollPane#setScrollPosition(int, int)
	*/
	@:overload public function setScrollPosition(x : Int, y : Int) : Void;
	
	/**
	* Called when the child component changes its size.
	*
	* @param w the new width of the child component
	* @param h the new height of the child component
	*
	* @see ScrollPane#layout()
	*/
	@:overload public function childResized(w : Int, h : Int) : Void;
	
	/**
	* Sets the unit increment of one of the scroll pane's adjustables.
	*
	* @param adj the scroll pane adjustable object
	* @param u the unit increment
	*
	* @see ScrollPaneAdjustable#setUnitIncrement(int)
	*/
	@:overload public function setUnitIncrement(adj : java.awt.Adjustable, u : Int) : Void;
	
	/**
	* Sets the value for one of the scroll pane's adjustables.
	*
	* @param adj the scroll pane adjustable object
	* @param v the value to set
	*/
	@:overload public function setValue(adj : java.awt.Adjustable, v : Int) : Void;
	
	
}
