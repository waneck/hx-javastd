package sun.awt.image;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class WritableRasterNative extends java.awt.image.WritableRaster
{
	/**
	* WritableRasterNative
	* This class exists to wrap a native DataBuffer object.  The
	* standard WritableRaster object assumes that a DataBuffer
	* of a given type (e.g., DataBuffer.TYPE_INT) implies a certain
	* subclass (e.g., DataBufferInt).  But this is not always the
	* case.  DataBufferNative, for example, may allow access to
	* integer-based data, but it is not DataBufferInt (which is a
	* final class and cannot be subclassed).
	* So this class exists simply to allow the WritableRaster
	* functionality for this new kind of DataBuffer object.
	*/
	@:overload public static function createNativeRaster(sm : java.awt.image.SampleModel, db : java.awt.image.DataBuffer) : WritableRasterNative;
	
	@:overload private function new(sm : java.awt.image.SampleModel, db : java.awt.image.DataBuffer) : Void;
	
	@:overload public static function createNativeRaster(cm : java.awt.image.ColorModel, sd : sun.java2d.SurfaceData, width : Int, height : Int) : WritableRasterNative;
	
	
}
