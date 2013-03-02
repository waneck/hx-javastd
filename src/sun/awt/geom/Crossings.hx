package sun.awt.geom;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Crossings
{
	public static var debug(default, null) : Bool;
	
	@:overload public function new(xlo : Float, ylo : Float, xhi : Float, yhi : Float) : Void;
	
	@:overload @:final public function getXLo() : Float;
	
	@:overload @:final public function getYLo() : Float;
	
	@:overload @:final public function getXHi() : Float;
	
	@:overload @:final public function getYHi() : Float;
	
	@:overload @:abstract public function record(ystart : Float, yend : Float, direction : Int) : Void;
	
	@:overload public function print() : Void;
	
	@:overload @:final public function isEmpty() : Bool;
	
	@:overload @:abstract public function covers(ystart : Float, yend : Float) : Bool;
	
	@:overload public static function findCrossings(curves : java.util.Vector<Dynamic>, xlo : Float, ylo : Float, xhi : Float, yhi : Float) : sun.awt.geom.Crossings;
	
	@:overload public static function findCrossings(pi : java.awt.geom.PathIterator, xlo : Float, ylo : Float, xhi : Float, yhi : Float) : sun.awt.geom.Crossings;
	
	@:overload public function accumulateLine(x0 : Float, y0 : Float, x1 : Float, y1 : Float) : Bool;
	
	@:overload public function accumulateLine(x0 : Float, y0 : Float, x1 : Float, y1 : Float, direction : Int) : Bool;
	
	@:overload public function accumulateQuad(x0 : Float, y0 : Float, coords : java.NativeArray<Float>) : Bool;
	
	@:overload public function accumulateCubic(x0 : Float, y0 : Float, coords : java.NativeArray<Float>) : Bool;
	
	
}
@:native('sun$awt$geom$Crossings$EvenOdd') extern class Crossings_EvenOdd extends sun.awt.geom.Crossings
{
	@:overload public function new(xlo : Float, ylo : Float, xhi : Float, yhi : Float) : Void;
	
	@:overload @:final override public function covers(ystart : Float, yend : Float) : Bool;
	
	@:overload override public function record(ystart : Float, yend : Float, direction : Int) : Void;
	
	
}
@:native('sun$awt$geom$Crossings$NonZero') extern class Crossings_NonZero extends sun.awt.geom.Crossings
{
	@:overload public function new(xlo : Float, ylo : Float, xhi : Float, yhi : Float) : Void;
	
	@:overload @:final override public function covers(ystart : Float, yend : Float) : Bool;
	
	@:overload public function remove(cur : Int) : Void;
	
	@:overload public function insert(cur : Int, lo : Float, hi : Float, dir : Int) : Void;
	
	@:overload override public function record(ystart : Float, yend : Float, direction : Int) : Void;
	
	
}
