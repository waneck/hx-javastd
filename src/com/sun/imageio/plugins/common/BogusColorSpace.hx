package com.sun.imageio.plugins.common;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class BogusColorSpace extends java.awt.color.ColorSpace
{
	/**
	* Constructs a bogus <code>ColorSpace</code>.
	*
	* @param numComponents The number of components in the
	* <code>ColorSpace</code>.
	* @exception IllegalArgumentException if <code>numComponents</code>
	* is less than 1.
	*/
	@:overload @:public public function new(numComponents : Int) : Void;
	
	@:overload @:public override public function toRGB(colorvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	@:overload @:public override public function fromRGB(rgbvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	@:overload @:public override public function toCIEXYZ(colorvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	@:overload @:public override public function fromCIEXYZ(xyzvalue : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	
}
