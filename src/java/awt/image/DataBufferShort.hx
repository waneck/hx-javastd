package java.awt.image;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
/* ****************************************************************
******************************************************************
******************************************************************
*** COPYRIGHT (c) Eastman Kodak Company, 1997
*** As  an unpublished  work pursuant to Title 17 of the United
*** States Code.  All rights reserved.
******************************************************************
******************************************************************
******************************************************************/
/**
* This class extends <CODE>DataBuffer</CODE> and stores data internally as shorts.
* <p>
* <a name="optimizations">
* Note that some implementations may function more efficiently
* if they can maintain control over how the data for an image is
* stored.
* For example, optimizations such as caching an image in video
* memory require that the implementation track all modifications
* to that data.
* Other implementations may operate better if they can store the
* data in locations other than a Java array.
* To maintain optimum compatibility with various optimizations
* it is best to avoid constructors and methods which expose the
* underlying storage as a Java array as noted below in the
* documentation for those methods.
* </a>
*/
extern class DataBufferShort extends java.awt.image.DataBuffer
{
	/**
	* Constructs a short-based <CODE>DataBuffer</CODE> with a single bank and the
	* specified size.
	*
	* @param size The size of the <CODE>DataBuffer</CODE>.
	*/
	@:overload @:public public function new(size : Int) : Void;
	
	/**
	* Constructs a short-based <CODE>DataBuffer</CODE> with the specified number of
	* banks all of which are the specified size.
	*
	* @param size The size of the banks in the <CODE>DataBuffer</CODE>.
	* @param numBanks The number of banks in the a<CODE>DataBuffer</CODE>.
	*/
	@:overload @:public public function new(size : Int, numBanks : Int) : Void;
	
	/**
	* Constructs a short-based <CODE>DataBuffer</CODE> with a single bank using the
	* specified array.
	* Only the first <CODE>size</CODE> elements should be used by accessors of
	* this <CODE>DataBuffer</CODE>.  <CODE>dataArray</CODE> must be large enough to
	* hold <CODE>size</CODE> elements.
	* <p>
	* Note that {@code DataBuffer} objects created by this constructor
	* may be incompatible with <a href="#optimizations">performance
	* optimizations</a> used by some implementations (such as caching
	* an associated image in video memory).
	*
	* @param dataArray The short array for the <CODE>DataBuffer</CODE>.
	* @param size The size of the <CODE>DataBuffer</CODE> bank.
	*/
	@:overload @:public public function new(dataArray : java.NativeArray<java.StdTypes.Int16>, size : Int) : Void;
	
	/**
	* Constructs a short-based <CODE>DataBuffer</CODE> with a single bank using the
	* specified array, size, and offset.  <CODE>dataArray</CODE> must have at least
	* <CODE>offset</CODE> + <CODE>size</CODE> elements.  Only elements <CODE>offset</CODE>
	* through <CODE>offset</CODE> + <CODE>size</CODE> - 1
	* should be used by accessors of this <CODE>DataBuffer</CODE>.
	* <p>
	* Note that {@code DataBuffer} objects created by this constructor
	* may be incompatible with <a href="#optimizations">performance
	* optimizations</a> used by some implementations (such as caching
	* an associated image in video memory).
	*
	* @param dataArray The short array for the <CODE>DataBuffer</CODE>.
	* @param size The size of the <CODE>DataBuffer</CODE> bank.
	* @param offset The offset into the <CODE>dataArray</CODE>.
	*/
	@:overload @:public public function new(dataArray : java.NativeArray<java.StdTypes.Int16>, size : Int, offset : Int) : Void;
	
	/**
	* Constructs a short-based <CODE>DataBuffer</CODE> with the specified arrays.
	* The number of banks will be equal to <CODE>dataArray.length</CODE>.
	* Only the first <CODE>size</CODE> elements of each array should be used by
	* accessors of this <CODE>DataBuffer</CODE>.
	* <p>
	* Note that {@code DataBuffer} objects created by this constructor
	* may be incompatible with <a href="#optimizations">performance
	* optimizations</a> used by some implementations (such as caching
	* an associated image in video memory).
	*
	* @param dataArray The short arrays for the <CODE>DataBuffer</CODE>.
	* @param size The size of the banks in the <CODE>DataBuffer</CODE>.
	*/
	@:overload @:public public function new(dataArray : java.NativeArray<java.NativeArray<java.StdTypes.Int16>>, size : Int) : Void;
	
	/**
	* Constructs a short-based <CODE>DataBuffer</CODE> with the specified arrays, size,
	* and offsets.
	* The number of banks is equal to <CODE>dataArray.length</CODE>.  Each array must
	* be at least as large as <CODE>size</CODE> + the corresponding offset.   There must
	* be an entry in the offset array for each <CODE>dataArray</CODE> entry.  For each
	* bank, only elements <CODE>offset</CODE> through
	* <CODE>offset</CODE> + <CODE>size</CODE> - 1 should be
	* used by accessors of this <CODE>DataBuffer</CODE>.
	* <p>
	* Note that {@code DataBuffer} objects created by this constructor
	* may be incompatible with <a href="#optimizations">performance
	* optimizations</a> used by some implementations (such as caching
	* an associated image in video memory).
	*
	* @param dataArray The short arrays for the <CODE>DataBuffer</CODE>.
	* @param size The size of the banks in the <CODE>DataBuffer</CODE>.
	* @param offsets The offsets into each array.
	*/
	@:overload @:public public function new(dataArray : java.NativeArray<java.NativeArray<java.StdTypes.Int16>>, size : Int, offsets : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the default (first) byte data array.
	* <p>
	* Note that calling this method may cause this {@code DataBuffer}
	* object to be incompatible with <a href="#optimizations">performance
	* optimizations</a> used by some implementations (such as caching
	* an associated image in video memory).
	*
	* @return The first short data array.
	*/
	@:overload @:public public function getData() : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Returns the data array for the specified bank.
	* <p>
	* Note that calling this method may cause this {@code DataBuffer}
	* object to be incompatible with <a href="#optimizations">performance
	* optimizations</a> used by some implementations (such as caching
	* an associated image in video memory).
	*
	* @param bank The bank whose data array you want to get.
	* @return The data array for the specified bank.
	*/
	@:overload @:public public function getData(bank : Int) : java.NativeArray<java.StdTypes.Int16>;
	
	/**
	* Returns the data arrays for all banks.
	* <p>
	* Note that calling this method may cause this {@code DataBuffer}
	* object to be incompatible with <a href="#optimizations">performance
	* optimizations</a> used by some implementations (such as caching
	* an associated image in video memory).
	*
	* @return All of the data arrays.
	*/
	@:overload @:public public function getBankData() : java.NativeArray<java.NativeArray<java.StdTypes.Int16>>;
	
	/**
	* Returns the requested data array element from the first (default) bank.
	*
	* @param i The data array element you want to get.
	* @return The requested data array element as an integer.
	* @see #setElem(int, int)
	* @see #setElem(int, int, int)
	*/
	@:overload @:public override public function getElem(i : Int) : Int;
	
	/**
	* Returns the requested data array element from the specified bank.
	*
	* @param bank The bank from which you want to get a data array element.
	* @param i The data array element you want to get.
	* @return The requested data array element as an integer.
	* @see #setElem(int, int)
	* @see #setElem(int, int, int)
	*/
	@:overload @:public override public function getElem(bank : Int, i : Int) : Int;
	
	/**
	* Sets the requested data array element in the first (default) bank
	* to the specified value.
	*
	* @param i The data array element you want to set.
	* @param val The integer value to which you want to set the data array element.
	* @see #getElem(int)
	* @see #getElem(int, int)
	*/
	@:overload @:public override public function setElem(i : Int, val : Int) : Void;
	
	/**
	* Sets the requested data array element in the specified bank
	* from the given integer.
	* @param bank The bank in which you want to set the data array element.
	* @param i The data array element you want to set.
	* @param val The integer value to which you want to set the specified data array element.
	* @see #getElem(int)
	* @see #getElem(int, int)
	*/
	@:overload @:public override public function setElem(bank : Int, i : Int, val : Int) : Void;
	
	
}
