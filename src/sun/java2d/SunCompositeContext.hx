package sun.java2d;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class SunCompositeContext implements java.awt.CompositeContext
{
	@:overload @:public public function new(ac : java.awt.AlphaComposite, s : java.awt.image.ColorModel, d : java.awt.image.ColorModel) : Void;
	
	@:overload @:public public function new(xc : sun.java2d.loops.XORComposite, s : java.awt.image.ColorModel, d : java.awt.image.ColorModel) : Void;
	
	/**
	* Release resources allocated for context.
	*/
	@:overload @:public public function dispose() : Void;
	
	/**
	* This method composes the two source tiles
	* and places the result in the destination tile. Note that
	* the destination can be the same object as either
	* the first or second source.
	* @param src1 The first source tile for the compositing operation.
	* @param src2 The second source tile for the compositing operation.
	* @param dst The tile where the result of the operation is stored.
	*/
	@:overload @:public public function compose(srcArg : java.awt.image.Raster, dstIn : java.awt.image.Raster, dstOut : java.awt.image.WritableRaster) : Void;
	
	
}
