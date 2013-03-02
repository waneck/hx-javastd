package sun.awt.geom;
/*
* Copyright (c) 1998, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CurveLink
{
	@:overload public function new(curve : sun.awt.geom.Curve, ystart : Float, yend : Float, etag : Int) : Void;
	
	@:overload public function absorb(link : sun.awt.geom.CurveLink) : Bool;
	
	@:overload public function absorb(curve : sun.awt.geom.Curve, ystart : Float, yend : Float, etag : Int) : Bool;
	
	@:overload public function isEmpty() : Bool;
	
	@:overload public function getCurve() : sun.awt.geom.Curve;
	
	@:overload public function getSubCurve() : sun.awt.geom.Curve;
	
	@:overload public function getMoveto() : sun.awt.geom.Curve;
	
	@:overload public function getXTop() : Float;
	
	@:overload public function getYTop() : Float;
	
	@:overload public function getXBot() : Float;
	
	@:overload public function getYBot() : Float;
	
	@:overload public function getX() : Float;
	
	@:overload public function getEdgeTag() : Int;
	
	@:overload public function setNext(link : sun.awt.geom.CurveLink) : Void;
	
	@:overload public function getNext() : sun.awt.geom.CurveLink;
	
	
}
