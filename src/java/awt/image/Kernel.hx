package java.awt.image;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
* The <code>Kernel</code> class defines a matrix that describes how a
* specified pixel and its surrounding pixels affect the value
* computed for the pixel's position in the output image of a filtering
* operation.  The X origin and Y origin indicate the kernel matrix element
* that corresponds to the pixel position for which an output value is
* being computed.
*
* @see ConvolveOp
*/
extern class Kernel implements java.lang.Cloneable
{
	/**
	* Constructs a <code>Kernel</code> object from an array of floats.
	* The first <code>width</code>*<code>height</code> elements of
	* the <code>data</code> array are copied.
	* If the length of the <code>data</code> array is less
	* than width*height, an <code>IllegalArgumentException</code> is thrown.
	* The X origin is (width-1)/2 and the Y origin is (height-1)/2.
	* @param width         width of the kernel
	* @param height        height of the kernel
	* @param data          kernel data in row major order
	* @throws IllegalArgumentException if the length of <code>data</code>
	*         is less than the product of <code>width</code> and
	*         <code>height</code>
	*/
	@:overload @:public public function new(width : Int, height : Int, data : java.NativeArray<Single>) : Void;
	
	/**
	* Returns the X origin of this <code>Kernel</code>.
	* @return the X origin.
	*/
	@:overload @:final @:public public function getXOrigin() : Int;
	
	/**
	* Returns the Y origin of this <code>Kernel</code>.
	* @return the Y origin.
	*/
	@:overload @:final @:public public function getYOrigin() : Int;
	
	/**
	* Returns the width of this <code>Kernel</code>.
	* @return the width of this <code>Kernel</code>.
	*/
	@:overload @:final @:public public function getWidth() : Int;
	
	/**
	* Returns the height of this <code>Kernel</code>.
	* @return the height of this <code>Kernel</code>.
	*/
	@:overload @:final @:public public function getHeight() : Int;
	
	/**
	* Returns the kernel data in row major order.
	* The <code>data</code> array is returned.  If <code>data</code>
	* is <code>null</code>, a new array is allocated.
	* @param data  if non-null, contains the returned kernel data
	* @return the <code>data</code> array containing the kernel data
	*         in row major order or, if <code>data</code> is
	*         <code>null</code>, a newly allocated array containing
	*         the kernel data in row major order
	* @throws IllegalArgumentException if <code>data</code> is less
	*         than the size of this <code>Kernel</code>
	*/
	@:overload @:final @:public public function getKernelData(data : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Clones this object.
	* @return a clone of this object.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
