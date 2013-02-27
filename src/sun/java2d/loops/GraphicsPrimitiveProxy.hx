package sun.java2d.loops;
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
/**
*   GraphicsPrimitiveProxy
*
* Acts as a proxy for instances of GraphicsPrimitive, enabling lazy
* classloading of these primitives.  This leads to a substantial
* savings in start-up time and footprint.  In the typical case,
* it has been found that a small number of GraphicsPrimitive instance
* actually end up getting instantiated.
* <p>
* Note that the makePrimitive method should never be invoked on
* a GraphicsPrimitiveProxy object since they are instantiated as
* soon as they are found in the primitive list and never returned
* to the caller.
*/
extern class GraphicsPrimitiveProxy extends sun.java2d.loops.GraphicsPrimitive
{
	/**
	* Create a GraphicsPrimitiveProxy for a primitive with a no-argument
	* constructor.
	*
	* @param owner The owner class for this primitive.  The primitive
	*          must be in the same package as this owner.
	* @param relativeClassName  The name of the class this is a proxy for.
	*          This should not include the package.
	*/
	@:overload public function new(owner : Class<Dynamic>, relativeClassName : String, methodSignature : String, primID : Int, srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload override public function makePrimitive(srctype : sun.java2d.loops.SurfaceType, comptype : sun.java2d.loops.CompositeType, dsttype : sun.java2d.loops.SurfaceType) : sun.java2d.loops.GraphicsPrimitive;
	
	@:overload override public function traceWrap() : sun.java2d.loops.GraphicsPrimitive;
	
	
}
