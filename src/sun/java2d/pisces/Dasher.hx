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
@:internal extern class Dasher implements sun.awt.geom.PathConsumer2D
{
	/**
	* Constructs a <code>Dasher</code>.
	*
	* @param out an output <code>PathConsumer2D</code>.
	* @param dash an array of <code>float</code>s containing the dash pattern
	* @param phase a <code>float</code> containing the dash phase
	*/
	@:overload @:public public function new(out : sun.awt.geom.PathConsumer2D, dash : java.NativeArray<Single>, phase : Single) : Void;
	
	@:overload @:public public function moveTo(x0 : Single, y0 : Single) : Void;
	
	@:overload @:public public function lineTo(x1 : Single, y1 : Single) : Void;
	
	@:overload @:public public function curveTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single, x3 : Single, y3 : Single) : Void;
	
	@:overload @:public public function quadTo(x1 : Single, y1 : Single, x2 : Single, y2 : Single) : Void;
	
	@:overload @:public public function closePath() : Void;
	
	@:overload @:public public function pathDone() : Void;
	
	@:overload @:public public function getNativeConsumer() : haxe.Int64;
	
	
}
@:native('sun$java2d$pisces$Dasher$LengthIterator') @:internal extern class Dasher_LengthIterator
{
	@:overload @:public public function new(reclimit : Int, err : Single) : Void;
	
	@:overload @:public public function initializeIterationOnCurve(pts : java.NativeArray<Single>, type : Int) : Void;
	
	@:overload @:public public function next(len : Single) : Single;
	
	@:overload @:public public function lastSegLen() : Single;
	
	
}
@:native('sun$java2d$pisces$Dasher$LengthIterator$Side') privateextern enum Dasher_LengthIterator_Side
{
	LEFT;
	RIGHT;
	
}

