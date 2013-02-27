package sun.java2d.cmm.lcms;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
/**********************************************************************
**********************************************************************
**********************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997                      ***
*** As  an unpublished  work pursuant to Title 17 of the United    ***
*** States Code.  All rights reserved.                             ***
**********************************************************************
**********************************************************************
**********************************************************************/
extern class LCMSTransform implements sun.java2d.cmm.ColorTransform
{
	@:overload public function new(profile : java.awt.color.ICC_Profile, renderType : Int, transformType : Int) : Void;
	
	@:overload public function new(transforms : java.NativeArray<sun.java2d.cmm.ColorTransform>) : Void;
	
	@:overload public function getNumInComponents() : Int;
	
	@:overload public function getNumOutComponents() : Int;
	
	@:overload public function colorConvert(src : java.awt.image.BufferedImage, dst : java.awt.image.BufferedImage) : Void;
	
	@:overload public function colorConvert(src : java.awt.image.Raster, dst : java.awt.image.WritableRaster, srcMinVal : java.NativeArray<Single>, srcMaxVal : java.NativeArray<Single>, dstMinVal : java.NativeArray<Single>, dstMaxVal : java.NativeArray<Single>) : Void;
	
	@:overload public function colorConvert(src : java.awt.image.Raster, dst : java.awt.image.WritableRaster) : Void;
	
	/* the number of colors is (size of the array) / (number of input/output
	components */
	@:overload public function colorConvert(src : java.NativeArray<java.StdTypes.Int16>, dst : java.NativeArray<java.StdTypes.Int16>) : java.NativeArray<java.StdTypes.Int16>;
	
	@:overload public function colorConvert(src : java.NativeArray<java.StdTypes.Int8>, dst : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
