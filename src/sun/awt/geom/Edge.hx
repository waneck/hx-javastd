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
@:internal extern class Edge
{
	@:overload @:public public function new(c : sun.awt.geom.Curve, ctag : Int) : Void;
	
	@:overload @:public public function new(c : sun.awt.geom.Curve, ctag : Int, etag : Int) : Void;
	
	@:overload @:public public function getCurve() : sun.awt.geom.Curve;
	
	@:overload @:public public function getCurveTag() : Int;
	
	@:overload @:public public function getEdgeTag() : Int;
	
	@:overload @:public public function setEdgeTag(etag : Int) : Void;
	
	@:overload @:public public function getEquivalence() : Int;
	
	@:overload @:public public function setEquivalence(eq : Int) : Void;
	
	@:overload @:public public function compareTo(other : sun.awt.geom.Edge, yrange : java.NativeArray<Float>) : Int;
	
	@:overload @:public public function record(yend : Float, etag : Int) : Void;
	
	@:overload @:public public function isActiveFor(y : Float, etag : Int) : Bool;
	
	@:overload @:public public function toString() : String;
	
	
}
