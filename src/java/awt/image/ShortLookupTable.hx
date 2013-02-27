package java.awt.image;
/*
* Copyright (c) 1997, 2000, Oracle and/or its affiliates. All rights reserved.
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
* This class defines a lookup table object.  The output of a
* lookup operation using an object of this class is interpreted
* as an unsigned short quantity.  The lookup table contains short
* data arrays for one or more bands (or components) of an image,
* and it contains an offset which will be subtracted from the
* input values before indexing the arrays.  This allows an array
* smaller than the native data size to be provided for a
* constrained input.  If there is only one array in the lookup
* table, it will be applied to all bands.
*
* @see ByteLookupTable
* @see LookupOp
*/
extern class ShortLookupTable extends java.awt.image.LookupTable
{
	/**
	* Constructs a ShortLookupTable object from an array of short
	* arrays representing a lookup table for each
	* band.  The offset will be subtracted from the input
	* values before indexing into the arrays.  The number of
	* bands is the length of the data argument.  The
	* data array for each band is stored as a reference.
	* @param offset the value subtracted from the input values
	*        before indexing into the arrays
	* @param data an array of short arrays representing a lookup
	*        table for each band
	*/
	@:overload public function new(offset : Int, data : java.NativeArray<java.NativeArray<java.StdTypes.Int16>>) : Void;
	
	/**
	* Constructs a ShortLookupTable object from an array
	* of shorts representing a lookup table for each
	* band.  The offset will be subtracted from the input
	* values before indexing into the array.  The
	* data array is stored as a reference.
	* @param offset the value subtracted from the input values
	*        before indexing into the arrays
	* @param data an array of shorts
	*/
	@:overload public function new(offset : Int, data : java.NativeArray<java.StdTypes.Int16>) : Void;
	
	/**
	* Returns the lookup table data by reference.  If this ShortLookupTable
	* was constructed using a single short array, the length of the returned
	* array is one.
	* @return ShortLookupTable data array.
	*/
	@:overload @:final public function getTable() : java.NativeArray<java.NativeArray<java.StdTypes.Int16>>;
	
	/**
	* Returns an array of samples of a pixel, translated with the lookup
	* table. The source and destination array can be the same array.
	* Array <code>dst</code> is returned.
	*
	* @param src the source array.
	* @param dst the destination array. This array must be at least as
	*         long as <code>src</code>.  If <code>dst</code> is
	*         <code>null</code>, a new array will be allocated having the
	*         same length as <code>src</code>.
	* @return the array <code>dst</code>, an <code>int</code> array of
	*         samples.
	* @exception ArrayIndexOutOfBoundsException if <code>src</code> is
	*            longer than <code>dst</code> or if for any element
	*            <code>i</code> of <code>src</code>,
	*            <code>(src[i]&0xffff)-offset</code> is either less than
	*            zero or greater than or equal to the length of the
	*            lookup table for any band.
	*/
	@:overload override public function lookupPixel(src : java.NativeArray<Int>, dst : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Returns an array of samples of a pixel, translated with the lookup
	* table. The source and destination array can be the same array.
	* Array <code>dst</code> is returned.
	*
	* @param src the source array.
	* @param dst the destination array. This array must be at least as
	*         long as <code>src</code>.  If <code>dst</code> is
	*         <code>null</code>, a new array will be allocated having the
	*         same length as <code>src</code>.
	* @return the array <code>dst</code>, an <code>int</code> array of
	*         samples.
	* @exception ArrayIndexOutOfBoundsException if <code>src</code> is
	*            longer than <code>dst</code> or if for any element
	*            <code>i</code> of <code>src</code>,
	*            <code>(src[i]&0xffff)-offset</code> is either less than
	*            zero or greater than or equal to the length of the
	*            lookup table for any band.
	*/
	@:overload public function lookupPixel(src : java.NativeArray<java.StdTypes.Int16>, dst : java.NativeArray<java.StdTypes.Int16>) : java.NativeArray<java.StdTypes.Int16>;
	
	
}
