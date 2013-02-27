package sun.awt.X11;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XScrollbarPeer extends sun.awt.X11.XComponentPeer implements java.awt.peer.ScrollbarPeer implements sun.awt.X11.XScrollbarClient
{
	@:overload override public function preInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	/**
	* Compute the minimum size for the scrollbar.
	*/
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload override public function repaint() : Void;
	
	/**
	* Paint the scrollbar.
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload public function repaintScrollbarRequest(sb : sun.awt.X11.XScrollbar) : Void;
	
	/**
	* The value has changed.
	*/
	@:overload public function notifyValue(obj : sun.awt.X11.XScrollbar, type : Int, value : Int, isAdjusting : Bool) : Void;
	
	/**
	*
	* @see java.awt.event.MouseEvent
	* MouseEvent.MOUSE_CLICKED
	* MouseEvent.MOUSE_PRESSED
	* MouseEvent.MOUSE_RELEASED
	* MouseEvent.MOUSE_MOVED
	* MouseEvent.MOUSE_ENTERED
	* MouseEvent.MOUSE_EXITED
	* MouseEvent.MOUSE_DRAGGED
	*/
	@:overload override public function handleJavaMouseEvent(mouseEvent : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function handleJavaKeyEvent(event : java.awt.event.KeyEvent) : Void;
	
	@:overload public function setValue(value : Int) : Void;
	
	@:overload public function setValues(value : Int, visible : Int, minimum : Int, maximum : Int) : Void;
	
	@:overload public function setLineIncrement(l : Int) : Void;
	
	@:overload public function setPageIncrement(p : Int) : Void;
	
	@:overload override public function layout() : Void;
	
	
}
