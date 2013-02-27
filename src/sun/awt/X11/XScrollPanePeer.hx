package sun.awt.X11;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XScrollPanePeer extends sun.awt.X11.XComponentPeer implements java.awt.peer.ScrollPanePeer implements sun.awt.X11.XScrollbarClient
{
	public static var MARGIN(default, null) : Int;
	
	public static var SCROLLBAR(default, null) : Int;
	
	public static var SPACE(default, null) : Int;
	
	public static var SCROLLBAR_INSET(default, null) : Int;
	
	public static var VERTICAL(default, null) : Int;
	
	public static var HORIZONTAL(default, null) : Int;
	
	@:overload override public function getContentWindow() : haxe.Int64;
	
	@:overload override public function setBounds(x : Int, y : Int, w : Int, h : Int, op : Int) : Void;
	
	@:overload override public function getInsets() : java.awt.Insets;
	
	@:overload public function getHScrollbarHeight() : Int;
	
	@:overload public function getVScrollbarWidth() : Int;
	
	@:overload public function childResized(w : Int, h : Int) : Void;
	
	@:overload public function setUnitIncrement(adj : java.awt.Adjustable, u : Int) : Void;
	
	@:overload public function setValue(adj : java.awt.Adjustable, v : Int) : Void;
	
	@:overload public function setScrollPosition(x : Int, y : Int) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload public function repaintScrollbarRequest(sb : sun.awt.X11.XScrollbar) : Void;
	
	/**
	* Paint the scrollpane.
	*/
	@:overload public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload override public function handleEvent(e : java.awt.AWTEvent) : Void;
	
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
	
	/**
	* return value from the scrollbar
	*/
	@:overload public function notifyValue(obj : sun.awt.X11.XScrollbar, type : Int, v : Int, isAdjusting : Bool) : Void;
	
	/*
	* Print the native component by rendering the Motif look ourselves.
	* ToDo(aim): needs to query native motif for more accurate size and
	* color information.
	*/
	@:overload override public function print(g : java.awt.Graphics) : Void;
	
	
}
@:native('sun$awt$X11$XScrollPanePeer$XScrollPaneContentWindow') @:internal extern class XScrollPanePeer_XScrollPaneContentWindow extends sun.awt.X11.XWindow
{
	@:overload override public function getWMName() : String;
	
	
}
