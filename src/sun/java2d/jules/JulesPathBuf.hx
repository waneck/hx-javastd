package sun.java2d.jules;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JulesPathBuf
{
	@:overload @:public @:static public static function isCairoAvailable() : Bool;
	
	@:overload @:public public function tesselateFill(s : java.awt.Shape, at : java.awt.geom.AffineTransform, clip : sun.java2d.pipe.Region) : sun.java2d.jules.TrapezoidList;
	
	@:overload @:public public function tesselateStroke(s : java.awt.Shape, bs : java.awt.BasicStroke, thin : Bool, adjust : Bool, antialias : Bool, at : java.awt.geom.AffineTransform, clip : sun.java2d.pipe.Region) : sun.java2d.jules.TrapezoidList;
	
	@:overload @:protected private function floatToDoubleArray(dashArrayFloat : java.NativeArray<Single>) : java.NativeArray<Float>;
	
	@:overload @:protected private function convertPathData(s : java.awt.Shape, at : java.awt.geom.AffineTransform) : Int;
	
	@:overload @:public public function clear() : Void;
	
	
}
