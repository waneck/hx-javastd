package sun.security.jgss;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* Utilities for processing GSS Tokens.
*
*/
extern class GSSToken
{
	/**
	* Copies an integer value to a byte array in little endian form.
	* @param value the integer value to write
	* @param array the byte array into which the integer must be copied. It
	* is assumed that the array will be large enough to hold the 4 bytes of
	* the integer.
	*/
	@:overload @:public @:static @:final public static function writeLittleEndian(value : Int, array : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Copies an integer value to a byte array in little endian form.
	* @param value the integer value to write
	* @param array the byte array into which the integer must be copied. It
	* is assumed that the array will be large enough to hold the 4 bytes of
	* the integer.
	* @param pos the position at which to start writing
	*/
	@:overload @:public @:static @:final public static function writeLittleEndian(value : Int, array : java.NativeArray<java.StdTypes.Int8>, pos : Int) : Void;
	
	@:overload @:public @:static @:final public static function writeBigEndian(value : Int, array : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:static @:final public static function writeBigEndian(value : Int, array : java.NativeArray<java.StdTypes.Int8>, pos : Int) : Void;
	
	/**
	* Reads an integer value from a byte array in little endian form. This
	* method allows the reading of two byte values as well as four bytes
	* values both of which are needed in the Kerberos v5 GSS-API mechanism.
	*
	* @param data the array containing the bytes of the integer value
	* @param pos the offset in the array
	* @size the number of bytes to read from the array.
	* @return the integer value
	*/
	@:overload @:public @:static @:final public static function readLittleEndian(data : java.NativeArray<java.StdTypes.Int8>, pos : Int, size : Int) : Int;
	
	@:overload @:public @:static @:final public static function readBigEndian(data : java.NativeArray<java.StdTypes.Int8>, pos : Int, size : Int) : Int;
	
	/**
	* Writes a two byte integer value to a OutputStream.
	*
	* @param val the integer value. It will lose the high-order two bytes.
	* @param os the OutputStream to write to
	* @throws IOException if an error occurs while writing to the OutputStream
	*/
	@:overload @:public @:static @:final public static function writeInt(val : Int, os : java.io.OutputStream) : Void;
	
	/**
	* Writes a two byte integer value to a byte array.
	*
	* @param val the integer value. It will lose the high-order two bytes.
	* @param dest the byte array to write to
	* @param pos the offset to start writing to
	*/
	@:overload @:public @:static @:final public static function writeInt(val : Int, dest : java.NativeArray<java.StdTypes.Int8>, pos : Int) : Int;
	
	/**
	* Reads a two byte integer value from an InputStream.
	*
	* @param is the InputStream to read from
	* @returns the integer value
	* @throws IOException if some errors occurs while reading the integer
	* bytes.
	*/
	@:overload @:public @:static @:final public static function readInt(is : java.io.InputStream) : Int;
	
	/**
	* Reads a two byte integer value from a byte array.
	*
	* @param src the byte arra to read from
	* @param pos the offset to start reading from
	* @returns the integer value
	*/
	@:overload @:public @:static @:final public static function readInt(src : java.NativeArray<java.StdTypes.Int8>, pos : Int) : Int;
	
	/**
	* Blocks till the required number of bytes have been read from the
	* input stream.
	*
	* @param is the InputStream to read from
	* @param buffer the buffer to store the bytes into
	* @param throws EOFException if EOF is reached before all bytes are
	* read.
	* @throws IOException is an error occurs while reading
	*/
	@:overload @:public @:static @:final public static function readFully(is : java.io.InputStream, buffer : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Blocks till the required number of bytes have been read from the
	* input stream.
	*
	* @param is the InputStream to read from
	* @param buffer the buffer to store the bytes into
	* @param offset the offset to start storing at
	* @param len the number of bytes to read
	* @param throws EOFException if EOF is reached before all bytes are
	* read.
	* @throws IOException is an error occurs while reading
	*/
	@:overload @:public @:static @:final public static function readFully(is : java.io.InputStream, buffer : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	@:overload @:public @:static @:final public static function debug(str : String) : Void;
	
	@:overload @:public @:static @:final public static function getHexBytes(bytes : java.NativeArray<java.StdTypes.Int8>) : String;
	
	@:overload @:public @:static @:final public static function getHexBytes(bytes : java.NativeArray<java.StdTypes.Int8>, len : Int) : String;
	
	@:overload @:public @:static @:final public static function getHexBytes(bytes : java.NativeArray<java.StdTypes.Int8>, pos : Int, len : Int) : String;
	
	
}
