package sun.java2d.pipe;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
* The MaskFill operation is expressed as:
*   dst = ((src <MODE> dst) * pathA) + (dst * (1 - pathA))
*
* The OGL/D3D implementation of the MaskFill operation differs from the above
* equation because it is not possible to perform such a complex operation in
* OpenGL/Direct3D (without the use of advanced techniques like fragment
* shaders and multitexturing).  Therefore, the BufferedMaskFill operation
* is expressed as:
*   dst = (src * pathA) <SrcOver> dst
*
* This simplified formula is only equivalent to the "true" MaskFill equation
* in the following situations:
*   - <MODE> is SrcOver
*   - <MODE> is Src, extra alpha == 1.0, and the source paint is opaque
*
* Therefore, we register BufferedMaskFill primitives for only the SurfaceType
* and CompositeType restrictions mentioned above.  In addition, for the
* SrcNoEa case we must override the incoming composite with a SrcOver (no
* extra alpha) instance, so that we set up the OpenGL/Direct3D blending
* mode to match the BufferedMaskFill equation.
*/
extern class BufferedMaskFill extends sun.java2d.loops.MaskFill
{
	private var rq(default, null) : sun.java2d.pipe.RenderQueue;
	
	@:overload private function new(rq : sun.java2d.pipe.RenderQueue, srcType : sun.java2d.loops.SurfaceType, compType : sun.java2d.loops.CompositeType, dstType : sun.java2d.loops.SurfaceType) : Void;
	
	@:overload override public function MaskFill(sg2d : sun.java2d.SunGraphics2D, sData : sun.java2d.SurfaceData, comp : java.awt.Composite, x : Int, y : Int, w : Int, h : Int, mask : java.NativeArray<java.StdTypes.Int8>, maskoff : Int, maskscan : Int) : Void;
	
	/**
	* Called as a separate Runnable when the operation is too large to fit
	* on the RenderQueue.  The OGL/D3D pipelines each have their own (small)
	* native implementation of this method.
	*/
	@:overload @:abstract private function maskFill(x : Int, y : Int, w : Int, h : Int, maskoff : Int, maskscan : Int, masklen : Int, mask : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Validates the state in the provided SunGraphics2D object and sets up
	* any special resources for this operation (e.g. enabling gradient
	* shading).
	*/
	@:overload @:abstract private function validateContext(sg2d : sun.java2d.SunGraphics2D, comp : java.awt.Composite, ctxflags : Int) : Void;
	
	
}
