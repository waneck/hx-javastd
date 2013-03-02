package sun.awt.X11;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XDecoratedPeer extends sun.awt.X11.XWindowPeer
{
	@:overload public function getShell() : haxe.Int64;
	
	@:overload override public function getContentWindow() : haxe.Int64;
	
	@:overload override public function updateMinimumSize() : Void;
	
	@:overload private function getWMProtocols() : sun.awt.X11.XAtomList;
	
	@:overload override public function getGraphics() : java.awt.Graphics;
	
	@:overload public function setTitle(title : String) : Void;
	
	@:overload override private function getWMName() : String;
	
	@:overload override public function handleIconify() : Void;
	
	@:overload override public function handleDeiconify() : Void;
	
	@:overload override public function handleFocusEvent(xev : sun.awt.X11.XEvent) : Void;
	
	/***************************************************************************************
	*                             I N S E T S   C O D E
	**************************************************************************************/
	@:overload override private function isInitialReshape() : Bool;
	
	@:overload override public function handlePropertyNotify(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload override public function handleReparentNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload private function handleCorrectInsets(correctWM : java.awt.Insets) : Void;
	
	@:overload public function handleMoved(dims : sun.awt.X11.WindowDimensions) : Void;
	
	@:overload private function guessInsets() : java.awt.Insets;
	
	@:overload public function revalidate() : Void;
	
	@:overload override public function getInsets() : java.awt.Insets;
	
	@:overload public function reshape(newDimensions : sun.awt.X11.WindowDimensions, op : Int, userReshape : Bool) : Void;
	
	/**
	* @see java.awt.peer.ComponentPeer#setBounds
	*/
	@:overload override public function setBounds(x : Int, y : Int, width : Int, height : Int, op : Int) : Void;
	
	@:overload override public function handleConfigureNotifyEvent(xev : sun.awt.X11.XEvent) : Void;
	
	@:overload public function setShellBounds(rec : java.awt.Rectangle) : Void;
	
	@:overload public function setShellSize(rec : java.awt.Rectangle) : Void;
	
	@:overload public function setShellPosition(rec : java.awt.Rectangle) : Void;
	
	@:overload public function setResizable(resizable : Bool) : Void;
	
	@:overload override public function getBounds() : java.awt.Rectangle;
	
	@:overload override public function getSize() : java.awt.Dimension;
	
	@:overload public function getX() : Int;
	
	@:overload public function getY() : Int;
	
	@:overload public function getLocation() : java.awt.Point;
	
	@:overload override public function getAbsoluteX() : Int;
	
	@:overload override public function getAbsoluteY() : Int;
	
	@:overload public function getWidth() : Int;
	
	@:overload public function getHeight() : Int;
	
	@:overload @:final public function getDimensions() : sun.awt.X11.WindowDimensions;
	
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	/***************************************************************************************
	*              END            OF             I N S E T S   C O D E
	**************************************************************************************/
	@:overload override private function isEventDisabled(e : sun.awt.X11.XEvent) : Bool;
	
	@:overload override public function setVisible(vis : Bool) : Void;
	
	@:overload override private function suppressWmTakeFocus(doSuppress : Bool) : Void;
	
	@:overload override public function dispose() : Void;
	
	@:overload override public function handleClientMessage(xev : sun.awt.X11.XEvent) : Void;
	
	/**
	* Requests focus to this decorated top-level by requesting X input focus
	* to the shell window.
	*/
	@:overload override private function requestXFocus(time : haxe.Int64, timeProvided : Bool) : Void;
	
	@:overload public function handleQuit() : Void;
	
	@:overload override public function requestWindowFocus(time : haxe.Int64, timeProvided : Bool) : Bool;
	
	@:overload override public function handleWindowFocusIn(serial : haxe.Int64) : Void;
	
	@:overload override public function handleWindowFocusOut(oppositeWindow : java.awt.Window, serial : haxe.Int64) : Void;
	
	
}
