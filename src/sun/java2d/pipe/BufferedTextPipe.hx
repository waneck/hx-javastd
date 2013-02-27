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
extern class BufferedTextPipe extends sun.java2d.pipe.GlyphListPipe
{
	private var rq(default, null) : sun.java2d.pipe.RenderQueue;
	
	@:overload private function new(rq : sun.java2d.pipe.RenderQueue) : Void;
	
	@:overload override private function drawGlyphList(sg2d : sun.java2d.SunGraphics2D, gl : sun.font.GlyphList) : Void;
	
	/**
	* Called as a separate Runnable when the operation is too large to fit
	* on the RenderQueue.  The OGL/D3D pipelines each have their own (small)
	* native implementation of this method.
	*/
	@:overload @:abstract private function drawGlyphList(numGlyphs : Int, usePositions : Bool, subPixPos : Bool, rgbOrder : Bool, lcdContrast : Int, glOrigX : Single, glOrigY : Single, images : java.NativeArray<haxe.Int64>, positions : java.NativeArray<Single>) : Void;
	
	/**
	* Validates the state in the provided SunGraphics2D object.
	*/
	@:overload @:abstract private function validateContext(sg2d : sun.java2d.SunGraphics2D, comp : java.awt.Composite) : Void;
	
	
}
