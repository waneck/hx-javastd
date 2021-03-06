package sun.font;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class DelegatingShape implements java.awt.Shape
{
	@:overload @:public public function new(delegate : java.awt.Shape) : Void;
	
	@:overload @:public public function getBounds() : java.awt.Rectangle;
	
	@:overload @:public public function getBounds2D() : java.awt.geom.Rectangle2D;
	
	@:overload @:public public function contains(x : Float, y : Float) : Bool;
	
	@:overload @:public public function contains(p : java.awt.geom.Point2D) : Bool;
	
	@:overload @:public public function intersects(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	@:overload @:public public function intersects(r : java.awt.geom.Rectangle2D) : Bool;
	
	@:overload @:public public function contains(x : Float, y : Float, w : Float, h : Float) : Bool;
	
	@:overload @:public public function contains(r : java.awt.geom.Rectangle2D) : Bool;
	
	@:overload @:public public function getPathIterator(at : java.awt.geom.AffineTransform) : java.awt.geom.PathIterator;
	
	@:overload @:public public function getPathIterator(at : java.awt.geom.AffineTransform, flatness : Float) : java.awt.geom.PathIterator;
	
	
}
