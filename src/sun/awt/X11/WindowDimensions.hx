package sun.awt.X11;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class WindowDimensions
{
	/**
	* If isClient is true, the bounds represent the client window area.
	* Otherwise, they represent the entire window area, with the insets included
	*/
	@:overload public function new(x : Int, y : Int, width : Int, height : Int, isClient : Bool) : Void;
	
	/**
	* If isClient is true, the bounds represent the client window area.
	* Otherwise, they represent the entire window area, with the insets included
	*/
	@:overload public function new(rec : java.awt.Rectangle, ins : java.awt.Insets, isClient : Bool) : Void;
	
	/**
	* If isClient is true, the bounds represent the client window area.
	* Otherwise, they represent the entire window area, with the insets included
	*/
	@:overload public function new(loc : java.awt.Point, size : java.awt.Dimension, _in : java.awt.Insets, isClient : Bool) : Void;
	
	/**
	* If isClient is true, the bounds represent the client window area.
	* Otherwise, they represent the entire window area, with the insets included
	*/
	@:overload public function new(bounds : java.awt.Rectangle, isClient : Bool) : Void;
	
	@:overload public function new(dims : WindowDimensions) : Void;
	
	@:overload public function getClientRect() : java.awt.Rectangle;
	
	@:overload public function setClientSize(size : java.awt.Dimension) : Void;
	
	@:overload public function setClientSize(width : Int, height : Int) : Void;
	
	@:overload public function getClientSize() : java.awt.Dimension;
	
	@:overload public function setSize(width : Int, height : Int) : Void;
	
	@:overload public function getSize() : java.awt.Dimension;
	
	@:overload public function getInsets() : java.awt.Insets;
	
	@:overload public function getBounds() : java.awt.Rectangle;
	
	@:overload public function getLocation() : java.awt.Point;
	
	@:overload public function setLocation(x : Int, y : Int) : Void;
	
	@:overload public function getScreenBounds() : java.awt.Rectangle;
	
	@:overload public function setInsets(_in : java.awt.Insets) : Void;
	
	@:overload public function isClientSizeSet() : Bool;
	
	@:overload public function toString() : String;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
