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
//// Very much based on XListPeer from javaos
@:internal extern class XListPeer extends sun.awt.X11.XComponentPeer implements java.awt.peer.ListPeer implements sun.awt.X11.XScrollbarClient
{
	public static var MARGIN(default, null) : Int;
	
	public static var SPACE(default, null) : Int;
	
	public static var SCROLLBAR_AREA(default, null) : Int;
	
	public static var SCROLLBAR_WIDTH(default, null) : Int;
	
	public static var NONE(default, null) : Int;
	
	public static var WINDOW(default, null) : Int;
	
	public static var VERSCROLLBAR(default, null) : Int;
	
	public static var HORSCROLLBAR(default, null) : Int;
	
	public static var DEFAULT_VISIBLE_ROWS(default, null) : Int;
	
	public static var HORIZ_SCROLL_AMT(default, null) : Int;
	
	/**
	* Overridden from XWindow
	*/
	@:overload public function preInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload public function postInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	/* New method name for 1.1 */
	@:overload public function add(item : String, index : Int) : Void;
	
	/* New method name for 1.1 */
	@:overload public function removeAll() : Void;
	
	/* New method name for 1.1 */
	@:overload public function setMultipleMode(b : Bool) : Void;
	
	/* New method name for 1.1 */
	@:overload public function getPreferredSize(rows : Int) : java.awt.Dimension;
	
	/* New method name for 1.1 */
	@:overload public function getMinimumSize(rows : Int) : java.awt.Dimension;
	
	/**
	* Minimum size.
	*/
	@:overload override public function minimumSize() : java.awt.Dimension;
	
	/**
	* return the preferredSize
	*/
	@:overload public function preferredSize(v : Int) : java.awt.Dimension;
	
	/**
	* return the minimumsize
	*/
	@:overload public function minimumSize(v : Int) : java.awt.Dimension;
	
	@:overload override public function setForeground(c : java.awt.Color) : Void;
	
	@:overload override public function setBackground(c : java.awt.Color) : Void;
	
	@:overload public function repaintScrollbarRequest(scrollbar : sun.awt.X11.XScrollbar) : Void;
	
	/**
	* Overridden for performance
	*/
	@:overload override public function repaint() : Void;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload override public function isFocusable() : Bool;
	
	@:overload override public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	/**
	* Layout the sub-components of the List - that is, the scrollbars and the
	* list of items.
	*/
	@:overload override public function layout() : Void;
	
	@:overload override public function handleConfigureNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handlesWheelScrolling() : Bool;
	
	/**
	* return value from the scrollbar
	*/
	@:overload public function notifyValue(obj : sun.awt.X11.XScrollbar, type : Int, v : Int, isAdjusting : Bool) : Void;
	
	/**
	* set multiple selections
	*/
	@:overload public function setMultipleSelections(v : Bool) : Void;
	
	/**
	* add an item
	* if the index of the item is < 0 or >= than items.size()
	* then add the item to the end of the list
	*/
	@:overload public function addItem(item : String, i : Int) : Void;
	
	/**
	* delete items starting with s (start position) to e (end position) including s and e
	* if s < 0 then s = 0
	* if e >= items.size() then e = items.size() - 1
	*/
	@:overload public function delItems(s : Int, e : Int) : Void;
	
	/**
	* ListPeer method
	*/
	@:overload public function select(index : Int) : Void;
	
	/**
	* ListPeer method
	* focusedIndex isn't updated according to native (Window, Motif) behaviour
	*/
	@:overload public function deselect(index : Int) : Void;
	
	/**
	* ensure that the given index is visible, scrolling the List
	* if necessary, or doing nothing if the item is already visible.
	* The List must be repainted for changes to be visible.
	*/
	@:overload public function makeVisible(index : Int) : Void;
	
	/**
	* clear
	*/
	@:overload public function clear() : Void;
	
	/**
	* return the selected indexes
	*/
	@:overload public function getSelectedIndexes() : java.NativeArray<Int>;
	
	/*
	* Fixed 5010944: List's rows overlap one another
	* The bug is due to incorrent caching of the list item size
	* So we should recalculate font metrics on setFont
	*/
	@:overload override public function setFont(f : java.awt.Font) : Void;
	
	
}
/**
* Sometimes painter is called on Toolkit thread, so the lock sequence is:
*     awtLock -> Painter -> awtLock
* Sometimes it is called on other threads:
*     Painter -> awtLock
* Since we can't guarantee the sequence, use awtLock.
*/
@:native('sun$awt$X11$XListPeer$ListPainter') @:internal extern class XListPeer_ListPainter
{
	@:overload public function invalidate() : Void;
	
	
}
