package sun.awt.X11;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class XChoicePeer extends sun.awt.X11.XComponentPeer implements java.awt.peer.ChoicePeer implements sun.awt.X11.ToplevelStateListener
{
	public static var TEXT_SPACE(default, null) : Int;
	
	public static var BORDER_WIDTH(default, null) : Int;
	
	public static var ITEM_MARGIN(default, null) : Int;
	
	public static var SCROLLBAR_WIDTH(default, null) : Int;
	
	@:overload public function isFocusable() : Bool;
	
	@:overload public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	/*
	* Fix for 6246503 : Disabling a choice after selection locks keyboard, mouse and makes the system unusable, Xtoolkit
	* if setEnabled(false) invoked we should close opened choice in
	* order to prevent keyboard/mouse lock.
	*/
	@:overload public function setEnabled(value : Bool) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function handlesWheelScrolling() : Bool;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function getMinimumSize() : java.awt.Dimension;
	
	/*
	* Layout the...
	*/
	@:overload public function layout() : Void;
	
	/**
	* Paint the choice
	*/
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	@:overload private function paintFocus(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/*
	* ChoicePeer methods stolen from TinyChoicePeer
	*/
	@:overload public function select(index : Int) : Void;
	
	@:overload public function add(item : String, index : Int) : Void;
	
	@:overload public function remove(index : Int) : Void;
	
	@:overload public function removeAll() : Void;
	
	/**
	* DEPRECATED: Replaced by add(String, int).
	*/
	@:overload public function addItem(item : String, index : Int) : Void;
	
	@:overload public function setFont(font : java.awt.Font) : Void;
	
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	@:overload public function setDrawSelectedItem(value : Bool) : Void;
	
	@:overload public function setAlignUnder(comp : java.awt.Component) : Void;
	
	@:overload public function addXChoicePeerListener(l : sun.awt.X11.XChoicePeer.XChoicePeerListener) : Void;
	
	@:overload public function removeXChoicePeerListener() : Void;
	
	@:overload public function isUnfurled() : Bool;
	
	/* fix for 6261352. We should detect if current parent Window (containing a Choice) become iconified and hide pop-down menu with grab release.
	* In this case we should hide pop-down menu.
	*/
	@:overload public function stateChangedICCCM(oldState : Int, newState : Int) : Void;
	
	@:overload public function stateChangedJava(oldState : Int, newState : Int) : Void;
	
	@:overload public function dispose() : Void;
	
	@:overload public function handleMouseEventByChoice(me : java.awt.event.MouseEvent) : Bool;
	
	
}
/**
* Inner class for the unfurled Choice list
* Much, much more docs
*/
@:native('sun$awt$X11$XChoicePeer$UnfurledChoice') @:internal extern class XChoicePeer_UnfurledChoice extends sun.awt.X11.XWindow
{
	@:overload public function new(target : java.awt.Component) : Void;
	
	@:overload public function preInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload override public function toFront() : Void;
	
	/*
	* Track a MouseEvent (either a drag or a press) and paint a new
	* selected item, if necessary.
	*/
	@:overload public function trackMouse(e : java.awt.event.MouseEvent) : Void;
	
	/*
	* fillRect with current Background color on the whole dropdown list.
	*/
	@:overload public function paintBackground() : Void;
	
	/*
	* 6405689. In some cases we should erase background to eliminate painting
	* artefacts.
	*/
	@:overload public function repaint() : Void;
	
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	@:overload public function setVisible(vis : Bool) : Void;
	
	/*
	* Overridden from XWindow() because we don't want to send
	* ComponentEvents
	*/
	@:overload override public function handleConfigureNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleMapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleUnmapNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	
}
@:internal extern interface XChoicePeerListener
{
	/*
	* The listener interface for receiving "interesting" for XFileDialogPeer
	* choice events (opening, closing).
	* The listener added by means of the method addXChoicePeerListener
	* A opening choice event is generated when the invoking unfurledChoice.toFront()
	* A closing choice event is generated at the time of the processing the mouse releasing
	* and the Enter pressing.
	* see 6240074 for more information
	*/
	@:overload public function unfurledChoiceOpening(choiceHelper : sun.awt.X11.ListHelper) : Void;
	
	@:overload public function unfurledChoiceClosing() : Void;
	
	
}
