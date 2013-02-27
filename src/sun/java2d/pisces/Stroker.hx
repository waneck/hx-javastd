package sun.java2d.pisces;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Stroker implements sun.awt.geom.PathConsumer2D
{
	/**
	* Constant value for join style.
	*/
	public static var JOIN_MITER(default, null) : Int;
	
	/**
	* Constant value for join style.
	*/
	public static var JOIN_ROUND(default, null) : Int;
	
	/**
	* Constant value for join style.
	*/
	public static var JOIN_BEVEL(default, null) : Int;
	
	/**
	* Constant value for end cap style.
	*/
	public static var CAP_BUTT(default, null) : Int;
	
	/**
	* Constant value for end cap style.
	*/
	public static var CAP_ROUND(default, null) : Int;
	
	/**
	* Constant value for end cap style.
	*/
	public static var CAP_SQUARE(default, null) : Int;
	
	/**
	* Constructs a <code>Stroker</code>.
	*
	* @param pc2d an output <code>PathConsumer2D</code>.
	* @param lineWidth the desired line width in pixels
	* @param capStyle the desired end cap style, one of
	* <code>CAP_BUTT</code>, <code>CAP_ROUND</code> or
	* <code>CAP_SQUARE</code>.
	* @param joinStyle the desired line join style, one of
	* <code>JOIN_MITER</code>, <code>JOIN_ROUND</code> or
	* <code>JOIN_BEVEL</code>.
	* @param miterLimit the desired miter limit
	*/
	@:overload public function new(pc2d : sun.awt.geom.PathConsumer2D, lineWidth : Single, capStyle : Int, joinStyle : Int, miterLimit : Single) : Void;
	
	@:overload public function moveTo(x0 : Single, y0 : Single) : Void;
	
	@:overload public function lineTo(x1 : Single, y1 : Single) : Void;
	
	@:overload public function closePath() : Void;
	
	@:overload public function pathDone() : Void;
	
	@:overload public function curveTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single, x3 : Single, y3 : Single) : Void;
	
	@:overload public function quadTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	@:overload public function getNativeConsumer() : haxe.Int64;
	
	
}
@:native('sun$java2d$pisces$Stroker$PolyStack') @:internal extern class Stroker_PolyStack
{
	@:overload public function isEmpty() : Bool;
	
	@:overload public function pushCubic(x0 : Single, y0 : Single, x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	@:overload public function pushQuad(x0 : Single, y0 : Single, x1 : Single, y1 : Single) : Void;
	
	@:overload public function pushLine(x : Single, y : Single) : Void;
	
	@:overload public function pop(pts : java.NativeArray<Single>) : Int;
	
	@:overload public function pop(io : sun.awt.geom.PathConsumer2D) : Void;
	
	@:overload public function toString() : String;
	
	
}
