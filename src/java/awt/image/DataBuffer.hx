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
extern class DataBuffer
{
	/** Tag for unsigned byte data. */
	public static var TYPE_BYTE(default, null) : Int;
	
	/** Tag for unsigned short data. */
	public static var TYPE_USHORT(default, null) : Int;
	
	/** Tag for signed short data.  Placeholder for future use. */
	public static var TYPE_SHORT(default, null) : Int;
	
	/** Tag for int data. */
	public static var TYPE_INT(default, null) : Int;
	
	/** Tag for float data.  Placeholder for future use. */
	public static var TYPE_FLOAT(default, null) : Int;
	
	/** Tag for double data.  Placeholder for future use. */
	public static var TYPE_DOUBLE(default, null) : Int;
	
	/** Tag for undefined data. */
	public static var TYPE_UNDEFINED(default, null) : Int;
	
	/** The data type of this DataBuffer. */
	private var dataType : Int;
	
	/** The number of banks in this DataBuffer. */
	private var banks : Int;
	
	/** Offset into default (first) bank from which to get the first element. */
	private var offset : Int;
	
	/** Usable size of all banks. */
	private var size : Int;
	
	/** Offsets into all banks. */
	private var offsets : java.NativeArray<Int>;
	
	/** Returns the size (in bits) of the data type, given a datatype tag.
	* @param type the value of one of the defined datatype tags
	* @return the size of the data type
	* @throws IllegalArgumentException if <code>type</code> is less than
	*         zero or greater than {@link #TYPE_DOUBLE}
	*/
	@:overload public static function getDataTypeSize(type : Int) : Int;
	
	/**
	*  Constructs a DataBuffer containing one bank of the specified
	*  data type and size.
	*
	*  @param dataType the data type of this <code>DataBuffer</code>
	*  @param size the size of the banks
	*/
	@:overload private function new(dataType : Int, size : Int) : Void;
	
	/**
	*  Constructs a DataBuffer containing the specified number of
	*  banks.  Each bank has the specified size and an offset of 0.
	*
	*  @param dataType the data type of this <code>DataBuffer</code>
	*  @param size the size of the banks
	*  @param numBanks the number of banks in this
	*         <code>DataBuffer</code>
	*/
	@:overload private function new(dataType : Int, size : Int, numBanks : Int) : Void;
	
	/**
	*  Constructs a DataBuffer that contains the specified number
	*  of banks.  Each bank has the specified datatype, size and offset.
	*
	*  @param dataType the data type of this <code>DataBuffer</code>
	*  @param size the size of the banks
	*  @param numBanks the number of banks in this
	*         <code>DataBuffer</code>
	*  @param offset the offset for each bank
	*/
	@:overload private function new(dataType : Int, size : Int, numBanks : Int, offset : Int) : Void;
	
	/**
	*  Constructs a DataBuffer which contains the specified number
	*  of banks.  Each bank has the specified datatype and size.  The
	*  offset for each bank is specified by its respective entry in
	*  the offsets array.
	*
	*  @param dataType the data type of this <code>DataBuffer</code>
	*  @param size the size of the banks
	*  @param numBanks the number of banks in this
	*         <code>DataBuffer</code>
	*  @param offsets an array containing an offset for each bank.
	*  @throws ArrayIndexOutOfBoundsException if <code>numBanks</code>
	*          does not equal the length of <code>offsets</code>
	*/
	@:overload private function new(dataType : Int, size : Int, numBanks : Int, offsets : java.NativeArray<Int>) : Void;
	
	/**  Returns the data type of this DataBuffer.
	*   @return the data type of this <code>DataBuffer</code>.
	*/
	@:overload public function getDataType() : Int;
	
	/**  Returns the size (in array elements) of all banks.
	*   @return the size of all banks.
	*/
	@:overload public function getSize() : Int;
	
	/** Returns the offset of the default bank in array elements.
	*  @return the offset of the default bank.
	*/
	@:overload public function getOffset() : Int;
	
	/** Returns the offsets (in array elements) of all the banks.
	*  @return the offsets of all banks.
	*/
	@:overload public function getOffsets() : java.NativeArray<Int>;
	
	/** Returns the number of banks in this DataBuffer.
	*  @return the number of banks.
	*/
	@:overload public function getNumBanks() : Int;
	
	/**
	* Returns the requested data array element from the first (default) bank
	* as an integer.
	* @param i the index of the requested data array element
	* @return the data array element at the specified index.
	* @see #setElem(int, int)
	* @see #setElem(int, int, int)
	*/
	@:overload public function getElem(i : Int) : Int;
	
	/**
	* Returns the requested data array element from the specified bank
	* as an integer.
	* @param bank the specified bank
	* @param i the index of the requested data array element
	* @return the data array element at the specified index from the
	*         specified bank at the specified index.
	* @see #setElem(int, int)
	* @see #setElem(int, int, int)
	*/
	@:overload @:abstract public function getElem(bank : Int, i : Int) : Int;
	
	/**
	* Sets the requested data array element in the first (default) bank
	* from the given integer.
	* @param i the specified index into the data array
	* @param val the data to set the element at the specified index in
	* the data array
	* @see #getElem(int)
	* @see #getElem(int, int)
	*/
	@:overload public function setElem(i : Int, val : Int) : Void;
	
	/**
	* Sets the requested data array element in the specified bank
	* from the given integer.
	* @param bank the specified bank
	* @param i the specified index into the data array
	* @param val  the data to set the element in the specified bank
	* at the specified index in the data array
	* @see #getElem(int)
	* @see #getElem(int, int)
	*/
	@:overload @:abstract public function setElem(bank : Int, i : Int, val : Int) : Void;
	
	/**
	* Returns the requested data array element from the first (default) bank
	* as a float.  The implementation in this class is to cast getElem(i)
	* to a float.  Subclasses may override this method if another
	* implementation is needed.
	* @param i the index of the requested data array element
	* @return a float value representing the data array element at the
	*  specified index.
	* @see #setElemFloat(int, float)
	* @see #setElemFloat(int, int, float)
	*/
	@:overload public function getElemFloat(i : Int) : Single;
	
	/**
	* Returns the requested data array element from the specified bank
	* as a float.  The implementation in this class is to cast
	* {@link #getElem(int, int)}
	* to a float.  Subclasses can override this method if another
	* implementation is needed.
	* @param bank the specified bank
	* @param i the index of the requested data array element
	* @return a float value representing the data array element from the
	* specified bank at the specified index.
	* @see #setElemFloat(int, float)
	* @see #setElemFloat(int, int, float)
	*/
	@:overload public function getElemFloat(bank : Int, i : Int) : Single;
	
	/**
	* Sets the requested data array element in the first (default) bank
	* from the given float.  The implementation in this class is to cast
	* val to an int and call {@link #setElem(int, int)}.  Subclasses
	* can override this method if another implementation is needed.
	* @param i the specified index
	* @param val the value to set the element at the specified index in
	* the data array
	* @see #getElemFloat(int)
	* @see #getElemFloat(int, int)
	*/
	@:overload public function setElemFloat(i : Int, val : Single) : Void;
	
	/**
	* Sets the requested data array element in the specified bank
	* from the given float.  The implementation in this class is to cast
	* val to an int and call {@link #setElem(int, int)}.  Subclasses can
	* override this method if another implementation is needed.
	* @param bank the specified bank
	* @param i the specified index
	* @param val the value to set the element in the specified bank at
	* the specified index in the data array
	* @see #getElemFloat(int)
	* @see #getElemFloat(int, int)
	*/
	@:overload public function setElemFloat(bank : Int, i : Int, val : Single) : Void;
	
	/**
	* Returns the requested data array element from the first (default) bank
	* as a double.  The implementation in this class is to cast
	* {@link #getElem(int)}
	* to a double.  Subclasses can override this method if another
	* implementation is needed.
	* @param i the specified index
	* @return a double value representing the element at the specified
	* index in the data array.
	* @see #setElemDouble(int, double)
	* @see #setElemDouble(int, int, double)
	*/
	@:overload public function getElemDouble(i : Int) : Float;
	
	/**
	* Returns the requested data array element from the specified bank as
	* a double.  The implementation in this class is to cast getElem(bank, i)
	* to a double.  Subclasses may override this method if another
	* implementation is needed.
	* @param bank the specified bank
	* @param i the specified index
	* @return a double value representing the element from the specified
	* bank at the specified index in the data array.
	* @see #setElemDouble(int, double)
	* @see #setElemDouble(int, int, double)
	*/
	@:overload public function getElemDouble(bank : Int, i : Int) : Float;
	
	/**
	* Sets the requested data array element in the first (default) bank
	* from the given double.  The implementation in this class is to cast
	* val to an int and call {@link #setElem(int, int)}.  Subclasses can
	* override this method if another implementation is needed.
	* @param i the specified index
	* @param val the value to set the element at the specified index
	* in the data array
	* @see #getElemDouble(int)
	* @see #getElemDouble(int, int)
	*/
	@:overload public function setElemDouble(i : Int, val : Float) : Void;
	
	/**
	* Sets the requested data array element in the specified bank
	* from the given double.  The implementation in this class is to cast
	* val to an int and call {@link #setElem(int, int)}.  Subclasses can
	* override this method if another implementation is needed.
	* @param bank the specified bank
	* @param i the specified index
	* @param val the value to set the element in the specified bank
	* at the specified index of the data array
	* @see #getElemDouble(int)
	* @see #getElemDouble(int, int)
	*/
	@:overload public function setElemDouble(bank : Int, i : Int, val : Float) : Void;
	
	
}
