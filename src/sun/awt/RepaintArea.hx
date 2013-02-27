package sun.awt;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class RepaintArea
{
	/**
	* Constructs a new <code>RepaintArea</code>
	* @since   1.3
	*/
	@:require(java3) @:overload public function new() : Void;
	
	/**
	* Adds a <code>Rectangle</code> to this <code>RepaintArea</code>.
	* PAINT Rectangles are divided into mostly vertical and mostly horizontal.
	* Each group is unioned together.
	* UPDATE Rectangles are unioned.
	*
	* @param   r   the specified <code>Rectangle</code>
	* @param   id  possible values PaintEvent.UPDATE or PaintEvent.PAINT
	* @since   1.3
	*/
	@:require(java3) @:overload @:synchronized public function add(r : java.awt.Rectangle, id : Int) : Void;
	
	@:overload public function isEmpty() : Bool;
	
	/**
	* Constrains the size of the repaint area to the passed in bounds.
	*/
	@:overload @:synchronized public function constrain(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Marks the passed in region as not needing to be painted. It's possible
	* this will do nothing.
	*/
	@:overload @:synchronized public function subtract(x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Invokes paint and update on target Component with optimal
	* rectangular clip region.
	* If PAINT bounding rectangle is less than
	* MAX_BENEFIT_RATIO times the benefit, then the vertical and horizontal unions are
	* painted separately.  Otherwise the entire bounding rectangle is painted.
	*
	* @param   target Component to <code>paint</code> or <code>update</code>
	* @since   1.4
	*/
	@:require(java4) @:overload public function paint(target : Dynamic, shouldClearRectBeforePaint : Bool) : Void;
	
	/**
	* Calls <code>Component.update(Graphics)</code> with given Graphics.
	*/
	@:overload private function updateComponent(comp : java.awt.Component, g : java.awt.Graphics) : Void;
	
	/**
	* Calls <code>Component.paint(Graphics)</code> with given Graphics.
	*/
	@:overload private function paintComponent(comp : java.awt.Component, g : java.awt.Graphics) : Void;
	
	@:overload public function toString() : String;
	
	
}
