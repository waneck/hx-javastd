package sun.java2d.pipe;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class OutlineTextRenderer implements sun.java2d.pipe.TextPipe
{
	/**
	* A delegate pipe of SG2D for drawing "large" text with
	* a solid source colour to an opaque destination.
	* The text is drawn as a filled outline.
	* Since the developer is not explicitly requesting this way of
	* rendering, this should not be used if the current paint is not
	* a solid colour.
	*
	* If text anti-aliasing is requested by the application, and
	* filling path, an anti-aliasing fill pipe needs to
	* be invoked.
	* This involves making some of the same decisions as in the
	* validatePipe call, which may be in a SurfaceData subclass, so
	* its awkward to always ensure that the correct pipe is used.
	* The easiest thing, rather than reproducing much of that logic
	* is to call validatePipe() which works but is expensive, although
	* probably not compared to the cost of filling the path.
	* Note if AA hint is ON but text-AA hint is OFF this logic will
	* produce AA text which perhaps isn't what the user expected.
	* Note that the glyphvector obeys its FRC, not the G2D.
	*/
	public static var THRESHHOLD(default, null) : Int;
	
	@:overload public function drawChars(g2d : sun.java2d.SunGraphics2D, data : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, x : Int, y : Int) : Void;
	
	@:overload public function drawString(g2d : sun.java2d.SunGraphics2D, str : String, x : Float, y : Float) : Void;
	
	@:overload public function drawGlyphVector(g2d : sun.java2d.SunGraphics2D, gv : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	
}
