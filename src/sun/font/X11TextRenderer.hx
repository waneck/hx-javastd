package sun.font;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class X11TextRenderer extends sun.java2d.pipe.GlyphListPipe
{
	/*
	* Override super class method to call the AA pipe if
	* AA is specified in the GlyphVector's FontRenderContext
	*/
	@:overload override public function drawGlyphVector(sg2d : sun.java2d.SunGraphics2D, g : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	@:overload override private function drawGlyphList(sg2d : sun.java2d.SunGraphics2D, gl : sun.font.GlyphList) : Void;
	
	@:overload public function traceWrap() : sun.font.X11TextRenderer;
	
	
}
@:native('sun$font$X11TextRenderer$Tracer') extern class X11TextRenderer_Tracer extends sun.font.X11TextRenderer
{
	
}
