package sun.java2d.xr;
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
/**
* Class to efficiently store glyph information for laid out glyphs,
* passed to native or java backend.
*
* @author Clemens Eisserer
*/
extern class GrowableEltArray extends sun.java2d.xr.GrowableIntArray
{
	@:overload @:public public function new(initialSize : Int) : Void;
	
	@:overload @:public @:final public function getCharCnt(index : Int) : Int;
	
	@:overload @:public @:final public function setCharCnt(index : Int, cnt : Int) : Void;
	
	@:overload @:public @:final public function getXOff(index : Int) : Int;
	
	@:overload @:public @:final public function setXOff(index : Int, xOff : Int) : Void;
	
	@:overload @:public @:final public function getYOff(index : Int) : Int;
	
	@:overload @:public @:final public function setYOff(index : Int, yOff : Int) : Void;
	
	@:overload @:public @:final public function getGlyphSet(index : Int) : Int;
	
	@:overload @:public @:final public function setGlyphSet(index : Int, glyphSet : Int) : Void;
	
	@:overload @:public public function getGlyphs() : sun.java2d.xr.GrowableIntArray;
	
	@:overload @:public override public function clear() : Void;
	
	
}
