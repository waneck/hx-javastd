package sun.awt.X11;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ListHelper implements sun.awt.X11.XScrollbarClient
{
	/*
	* Comment
	*/
	@:overload public function new(peer : sun.awt.X11.XWindow, colors : java.NativeArray<java.awt.Color>, initialSize : Int, multiSelect : Bool, scrollVert : Bool, scrollHoriz : Bool, font : java.awt.Font, maxVisItems : Int, SPACE : Int, MARGIN : Int, BORDER : Int, SCROLLBAR : Int) : Void;
	
	@:overload public function getEventSource() : java.awt.Component;
	
	/**********************************************************************/
	@:overload public function add(item : String) : Void;
	
	@:overload public function add(item : String, index : Int) : Void;
	
	@:overload public function remove(item : String) : Void;
	
	@:overload public function remove(index : Int) : Void;
	
	@:overload public function removeAll() : Void;
	
	@:overload public function setMultiSelect(ms : Bool) : Void;
	
	/*
	* docs.....definitely docs
	* merely keeps internal track of which items are selected for painting
	* dealing with target Components happens elsewhere
	*/
	@:overload public function select(index : Int) : Void;
	
	/* docs */
	@:overload public function deselect(index : Int) : Void;
	
	/* if called for multiselect, return -1 */
	@:overload public function getSelectedIndex() : Int;
	
	/*
	* A getter method for XChoicePeer.
	* Returns vsbVisiblityChanged value and sets it to false.
	*/
	@:overload public function checkVsbVisibilityChangedAndReset() : Bool;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function getItemCount() : Int;
	
	@:overload public function getItem(index : Int) : String;
	
	/**********************************************************************/
	@:overload public function setFocusedIndex(index : Int) : Void;
	
	@:overload public function isFocusedIndex(index : Int) : Bool;
	
	@:overload public function setFont(newFont : java.awt.Font) : Void;
	
	/*
	* Returns width of the text of the longest item
	*/
	@:overload public function getMaxItemWidth() : Int;
	
	@:overload public function y2index(y : Int) : Int;
	
	/* write these
	int index2y(int);
	public int numItemsDisplayed() {}
	*/
	@:overload public function firstDisplayedIndex() : Int;
	
	@:overload public function lastDisplayedIndex() : Int;
	
	/*
	* If the given index is not visible in the List, scroll so that it is.
	*/
	@:overload public function makeVisible(index : Int) : Void;
	
	@:overload public function up() : Void;
	
	@:overload public function down() : Void;
	
	@:overload public function pageUp() : Void;
	
	@:overload public function pageDown() : Void;
	
	@:overload public function home() : Void;
	
	@:overload public function end() : Void;
	
	@:overload public function isVSBVisible() : Bool;
	
	@:overload public function isHSBVisible() : Bool;
	
	@:overload public function getVSB() : sun.awt.X11.XVerticalScrollbar;
	
	@:overload public function getHSB() : sun.awt.X11.XHorizontalScrollbar;
	
	@:overload public function isInVertSB(bounds : java.awt.Rectangle, x : Int, y : Int) : Bool;
	
	@:overload public function isInHorizSB(bounds : java.awt.Rectangle, x : Int, y : Int) : Bool;
	
	@:overload public function handleVSBEvent(e : java.awt.event.MouseEvent, bounds : java.awt.Rectangle, x : Int, y : Int) : Void;
	
	@:overload public function getNumItemsDisplayed() : Int;
	
	@:overload public function repaintScrollbarRequest(sb : sun.awt.X11.XScrollbar) : Void;
	
	@:overload public function notifyValue(obj : sun.awt.X11.XScrollbar, type : Int, v : Int, isAdjusting : Bool) : Void;
	
	@:overload public function updateColors(newColors : java.NativeArray<java.awt.Color>) : Void;
	
	/*
	public void paintItems(Graphics g,
	Color[] colors,
	Rectangle bounds,
	Font font,
	int first,
	int last,
	XVerticalScrollbar vsb,
	XHorizontalScrollbar hsb) {
	*/
	@:overload public function paintItems(g : java.awt.Graphics, colors : java.NativeArray<java.awt.Color>, bounds : java.awt.Rectangle) : Void;
	
	@:overload public function paintAllItems(g : java.awt.Graphics, colors : java.NativeArray<java.awt.Color>, bounds : java.awt.Rectangle) : Void;
	
	@:overload public function paintItems(g : java.awt.Graphics, colors : java.NativeArray<java.awt.Color>, bounds : java.awt.Rectangle, first : Int, last : Int) : Void;
	
	/*
	* comment about what is painted (i.e. the focus rect
	*/
	@:overload public function paintItem(g : java.awt.Graphics, colors : java.NativeArray<java.awt.Color>, string : String, x : Int, y : Int, width : Int, height : Int, selected : Bool, focused : Bool) : Void;
	
	@:overload public function paintVSB(g : java.awt.Graphics, colors : java.NativeArray<java.awt.Color>, bounds : java.awt.Rectangle) : Void;
	
	@:overload public function paintHSB(g : java.awt.Graphics, colors : java.NativeArray<java.awt.Color>, bounds : java.awt.Rectangle) : Void;
	
	
}
