package sun.java2d.pipe;
/*
* Copyright (c) 1997, Oracle and/or its affiliates. All rights reserved.
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
extern interface PixelFillPipe
{
	/**
	* This interface defines the set of calls that pipeline objects
	* can use to pass on responsibility for filling various basic
	* geometric figures defined by explicit integer coordinates.
	* Typically this interface will be used for communication when
	* the coordinates of the rendering have been narrowed down to
	* actual device pixels, or for communication of untransformed
	* coordinates when the coordinates were specified using integers.
	* This interface does not cover all of the rendering calls that
	* are possible in Graphics since many of the rendering calls can
	* be transformed into one or more variants of these calls.
	*/
	@:overload public function fillRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillRoundRect(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, arcWidth : Int, arcHeight : Int) : Void;
	
	@:overload public function fillOval(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int) : Void;
	
	@:overload public function fillArc(sg : sun.java2d.SunGraphics2D, x : Int, y : Int, width : Int, height : Int, startAngle : Int, arcAngle : Int) : Void;
	
	@:overload public function fillPolygon(sg : sun.java2d.SunGraphics2D, xPoints : java.NativeArray<Int>, yPoints : java.NativeArray<Int>, nPoints : Int) : Void;
	
	
}
