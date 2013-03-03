package sun.java2d.loops;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class GraphicsPrimitive
{
	@:overload @:public @:synchronized @:static @:final public static function makePrimTypeID() : Int;
	
	@:overload @:public @:synchronized @:static @:final public static function makeUniqueID(primTypeID : Int, src : sun.java2d.loops.SurfaceType, cmp : sun.java2d.loops.CompositeType, dst : sun.java2d.loops.SurfaceType) : Int;
	
	/**
	* Create a new GraphicsPrimitive with all of the required
	* descriptive information.
	*/
	@:overload @:protected private function new(methodSignature : String, primTypeID : Int, sourceType : sun.java2d.loops.SurfaceType, compositeType : sun.java2d.loops.CompositeType, destType : sun.java2d.loops.SurfaceType) : Void;
	
	/**
	* Create a new GraphicsPrimitive for native invocation
	* with all of the required descriptive information.
	*/
	@:overload @:protected private function new(pNativePrim : haxe.Int64, methodSignature : String, primTypeID : Int, sourceType : sun.java2d.loops.SurfaceType, compositeType : sun.java2d.loops.CompositeType, destType : sun.java2d.loops.SurfaceType) : Void;
	
	/**
	* Gets instance ID of this graphics primitive.
	*
	* Instance ID is comprised of four distinct ids (ORed together)
	* that uniquely identify each instance of a GraphicsPrimitive
	* object. The four ids making up instance ID are:
	* 1. primitive id - identifier shared by all primitives of the
	* same type (eg. all Blits have the same primitive id)
	* 2. sourcetype id - identifies source surface type
	* 3. desttype id - identifies destination surface type
	* 4. compositetype id - identifies composite used
	*
	* @return instance ID
	*/
	@:overload @:public @:final public function getUniqueID() : Int;
	
	/**
	*/
	@:overload @:public @:final public function getSignature() : String;
	
	/**
	* Gets unique id for this GraphicsPrimitive type.
	*
	* This id is used to identify the TYPE of primitive (Blit vs. BlitBg)
	* as opposed to INSTANCE of primitive.
	*
	* @return primitive ID
	*/
	@:overload @:public @:final public function getPrimTypeID() : Int;
	
	/**
	*/
	@:overload @:public @:final public function getNativePrim() : haxe.Int64;
	
	/**
	*/
	@:overload @:public @:final public function getSourceType() : sun.java2d.loops.SurfaceType;
	
	/**
	*/
	@:overload @:public @:final public function getCompositeType() : sun.java2d.loops.CompositeType;
	
	/**
	*/
	@:overload @:public @:final public function getDestType() : sun.java2d.loops.SurfaceType;
	
	/**
	* Return true if this primitive can be used for the given signature
	* surfaces, and composite.
	*
	* @param signature The signature of the given operation.  Must be
	*          == (not just .equals) the signature string given by the
	*          abstract class that declares the operation.
	* @param srctype The surface type for the source of the operation
	* @param comptype The composite type for the operation
	* @param dsttype The surface type for the destination of the operation
	*/
	@:overload @:public @:final public function satisfies(signature : String, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Bool;
	
	@:overload @:public @:abstract public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public @:abstract public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	@:public @:static public static var traceflags : Int;
	
	@:public @:static public static var tracefile : String;
	
	@:public @:static public static var traceout : java.io.PrintStream;
	
	@:public @:static @:final public static var TRACELOG(default, null) : Int;
	
	@:public @:static @:final public static var TRACETIMESTAMP(default, null) : Int;
	
	@:public @:static @:final public static var TRACECOUNTS(default, null) : Int;
	
	@:overload @:public @:static public static function tracingEnabled() : Bool;
	
	@:overload @:public @:synchronized @:static public static function tracePrimitive(prim : Dynamic) : Void;
	
	@:overload @:protected private function setupGeneralBinaryOp(gbo : sun.java2d.loops.GraphicsPrimitive.GraphicsPrimitive_GeneralBinaryOp) : Void;
	
	@:overload @:protected private function setupGeneralUnaryOp(guo : sun.java2d.loops.GraphicsPrimitive.GraphicsPrimitive_GeneralUnaryOp) : Void;
	
	@:overload @:protected @:static private static function createConverter(srctype : sun.java2d.loops.SurfaceType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.Blit;
	
	@:overload @:protected @:static private static function convertFrom(ob : sun.java2d.loops.Blit, srcData : sun.java2d.SurfaceData, srcX : Int, srcY : Int, w : Int, h : Int, dstData : sun.java2d.SurfaceData) : sun.java2d.SurfaceData;
	
	@:overload @:protected @:static private static function convertFrom(ob : sun.java2d.loops.Blit, srcData : sun.java2d.SurfaceData, srcX : Int, srcY : Int, w : Int, h : Int, dstData : sun.java2d.SurfaceData, type : Int) : sun.java2d.SurfaceData;
	
	@:overload @:protected @:static private static function convertTo(ob : sun.java2d.loops.Blit, srcImg : sun.java2d.SurfaceData, dstImg : sun.java2d.SurfaceData, clip : sun.java2d.pipe.Region, dstX : Int, dstY : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected @:static private static function getGeneralOp(primID : Int, comptype : sun.java2d.loops.CompositeType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload @:public @:static public static function simplename(fields : java.NativeArray<java.lang.reflect.Field>, o : Dynamic) : String;
	
	@:overload @:public @:static public static function simplename(st : sun.java2d.loops.SurfaceType) : String;
	
	@:overload @:public @:static public static function simplename(ct : sun.java2d.loops.CompositeType) : String;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* defines interface for primitives which can be placed into
* the graphic component manager framework
*/
@:native('sun$java2d$loops$GraphicsPrimitive$GeneralBinaryOp') extern interface GraphicsPrimitive_GeneralBinaryOp
{
	/**
	* This method allows the setupGeneralBinaryOp method to set
	* the converters into the General version of the Primitive.
	*/
	@:overload @:public public function setPrimitives(srcconverter : sun.java2d.loops.Blit, dstconverter : sun.java2d.loops.Blit, genericop : sun.java2d.loops.GraphicsPrimitive, resconverter : sun.java2d.loops.Blit) : Void;
	
	/**
	* These 4 methods are implemented automatically for any
	* GraphicsPrimitive.  They are used by setupGeneralBinaryOp
	* to retrieve the information needed to find the right
	* converter primitives.
	*/
	@:overload @:public public function getSourceType() : sun.java2d.loops.SurfaceType;
	
	@:overload @:public public function getCompositeType() : sun.java2d.loops.CompositeType;
	
	@:overload @:public public function getDestType() : sun.java2d.loops.SurfaceType;
	
	@:overload @:public public function getSignature() : String;
	
	@:overload @:public public function getPrimTypeID() : Int;
	
	
}
@:native('sun$java2d$loops$GraphicsPrimitive$GeneralUnaryOp') extern interface GraphicsPrimitive_GeneralUnaryOp
{
	/**
	* This method allows the setupGeneralUnaryOp method to set
	* the converters into the General version of the Primitive.
	*/
	@:overload @:public public function setPrimitives(dstconverter : sun.java2d.loops.Blit, genericop : sun.java2d.loops.GraphicsPrimitive, resconverter : sun.java2d.loops.Blit) : Void;
	
	/**
	* These 3 methods are implemented automatically for any
	* GraphicsPrimitive.  They are used by setupGeneralUnaryOp
	* to retrieve the information needed to find the right
	* converter primitives.
	*/
	@:overload @:public public function getCompositeType() : sun.java2d.loops.CompositeType;
	
	@:overload @:public public function getDestType() : sun.java2d.loops.SurfaceType;
	
	@:overload @:public public function getSignature() : String;
	
	@:overload @:public public function getPrimTypeID() : Int;
	
	
}
@:native('sun$java2d$loops$GraphicsPrimitive$TraceReporter') extern class GraphicsPrimitive_TraceReporter extends java.lang.Thread
{
	@:overload @:public @:static public static function setShutdownHook() : Void;
	
	@:overload @:public override public function run() : Void;
	
	
}
