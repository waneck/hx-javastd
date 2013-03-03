package sun.java2d.loops;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
/*
* @author Charlton Innovations, Inc.
*/
extern class GraphicsPrimitiveMgr
{
	@:overload @:public @:synchronized @:static public static function register(newPrimitives : java.NativeArray<sun.java2d.loops.GraphicsPrimitive>) : Void;
	
	@:overload @:public @:synchronized @:static public static function registerGeneral(gen : sun.java2d.loops.GraphicsPrimitive) : Void;
	
	@:overload @:public @:synchronized @:static public static function locate(primTypeID : Int, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public @:synchronized @:static public static function locate(primTypeID : Int, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public @:synchronized @:static public static function locatePrim(primTypeID : Int, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	/**
	* Test that all of the GraphicsPrimitiveProxy objects actually
	* resolve to something.  Throws a RuntimeException if anything
	* is wrong, an has no effect if all is well.
	*/
	@:overload @:public @:static public static function testPrimitiveInstantiation() : Void;
	
	@:overload @:public @:static public static function testPrimitiveInstantiation(verbose : Bool) : Void;
	
	@:overload @:public @:static public static function main(argv : java.NativeArray<String>) : Void;
	
	
}
@:native('sun$java2d$loops$GraphicsPrimitiveMgr$PrimitiveSpec') @:internal extern class GraphicsPrimitiveMgr_PrimitiveSpec
{
	@:public public var uniqueID : Int;
	
	
}
