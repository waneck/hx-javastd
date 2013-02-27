package sun.awt.image;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class DataBufferNative extends java.awt.image.DataBuffer
{
	/**
	* This class extends <CODE>DataBuffer</CODE> and allows access to
	* native data via the DataBuffer methods.  Note that, unlike other
	* DataBuffer classes, the data is not stored in this class but
	* has been created and stored elsewhere and this class is used
	* merely to access that data.  Note also that this class subclasses
	* from DataBuffer and not from any of the standard subclasses
	* (e.g., DataBufferInt); those subclasses allow the user to
	* get a pointer to the data and manipulate it directly.  That
	* operation may not be possible or wise with native data.
	* One important use of this DataBuffer class is in accessing the
	* data stored in an offscreen vram surface, such as that created
	* by the createVolatileImage() method.
	*/
	private var surfaceData : sun.java2d.SurfaceData;
	
	private var width : Int;
	
	/**
	* Constructor.  The constructor of this object requires a
	* SurfaceData object; that surfaceData object will be used
	* to access the actual pixel data in native code.
	*/
	@:overload public function new(sData : sun.java2d.SurfaceData, type : Int, width : Int, height : Int) : Void;
	
	@:overload @:native private function getElem(x : Int, y : Int, sData : sun.java2d.SurfaceData) : Int;
	
	/**
	* getElem returns the pixel value for a given index into the
	* dataBuffer array.  The bank value is currently ignored (the
	* type of data accessed through this class is not stored in
	* separate banks).  The x and y coordinates of a pixel are calculated
	* from the index value and the native getElem() method is
	* called with the internal surfaceData object.
	*/
	@:overload override public function getElem(bank : Int, i : Int) : Int;
	
	@:overload @:native private function setElem(x : Int, y : Int, val : Int, sData : sun.java2d.SurfaceData) : Void;
	
	/**
	* setElem sets the pixel value of a given index into the
	* dataBuffer array.  The bank value is currently ignored (the
	* type of data accessed through this class is not stored in
	* separate banks).  The x and y coordinates of a pixel are calculated
	* from the index value and the native setElem() method is
	* called with the internal surfaceData object.
	*/
	@:overload override public function setElem(bank : Int, i : Int, val : Int) : Void;
	
	
}
