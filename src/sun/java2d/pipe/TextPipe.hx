package sun.java2d.pipe;
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
/*
* @author Charlton Innovations, Inc.
*/
extern interface TextPipe
{
	/**
	* This interface defines the set of calls that pipeline objects
	* can use to pass on responsibility for drawing various text
	* representations.
	*/
	@:overload @:public public function drawString(g2d : sun.java2d.SunGraphics2D, s : String, x : Float, y : Float) : Void;
	
	@:overload @:public public function drawGlyphVector(g2d : sun.java2d.SunGraphics2D, g : java.awt.font.GlyphVector, x : Single, y : Single) : Void;
	
	@:overload @:public public function drawChars(g2d : sun.java2d.SunGraphics2D, data : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int, x : Int, y : Int) : Void;
	
	
}
