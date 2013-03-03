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
@:internal extern class XScrollbar
{
	@:public @:static @:final public static var ALIGNMENT_VERTICAL(default, null) : Int;
	
	@:overload @:public public function new(alignment : Int, sb : sun.awt.X11.XScrollbarClient) : Void;
	
	@:overload @:public public function needsRepaint() : Bool;
	
	@:overload @:abstract @:protected private function rebuildArrows() : Void;
	
	@:overload @:public public function setSize(width : Int, height : Int) : Void;
	
	/**
	* Creates oriented directed arrow
	*/
	@:overload @:protected private function createArrowShape(vertical : Bool, up : Bool) : java.awt.Polygon;
	
	/**
	* Gets the area of the scroll track
	*/
	@:overload @:protected @:abstract private function getThumbArea() : java.awt.Rectangle;
	
	/**
	* The set method for mode property.
	* See 6243382 for more information
	*/
	@:overload @:public public function setMode(mode : Int) : Void;
	
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
	@:overload @:public public function handleMouseEvent(id : Int, modifiers : Int, x : Int, y : Int) : Void;
	
	/**
	* Method to calculate the scroll thumb's size and position.  This is
	* based on CalcSliderRect in ScrollBar.c of Motif source.
	*
	* If we ever cache the thumb rect, we'll need to use a clone in
	* isInThumb().
	*/
	@:overload @:protected private function calculateThumbRect() : java.awt.Rectangle;
	
	@:overload @:public public function toString() : String;
	
	
}
@:internal extern class XScrollRepeater implements java.lang.Runnable
{
	@:overload @:public public function start() : Void;
	
	@:overload @:public public function stop() : Void;
	
	/**
	* Sets the scrollbar.
	* @param sb the scrollbar that this thread will scroll
	*/
	@:overload @:public @:synchronized public function setScrollbar(sb : sun.awt.X11.XScrollbar) : Void;
	
	@:overload @:public public function run() : Void;
	
	
}
