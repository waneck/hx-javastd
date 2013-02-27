package java.util.zip;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CheckedInputStream extends java.io.FilterInputStream
{
	/**
	* Creates an input stream using the specified Checksum.
	* @param in the input stream
	* @param cksum the Checksum
	*/
	@:overload public function new(_in : java.io.InputStream, cksum : java.util.zip.Checksum) : Void;
	
	/**
	* Reads a byte. Will block if no input is available.
	* @return the byte read, or -1 if the end of the stream is reached.
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function read() : Int;
	
	/**
	* Reads into an array of bytes. If <code>len</code> is not zero, the method
	* blocks until some input is available; otherwise, no
	* bytes are read and <code>0</code> is returned.
	* @param buf the buffer into which the data is read
	* @param off the start offset in the destination array <code>b</code>
	* @param len the maximum number of bytes read
	* @return    the actual number of bytes read, or -1 if the end
	*            of the stream is reached.
	* @exception  NullPointerException If <code>buf</code> is <code>null</code>.
	* @exception  IndexOutOfBoundsException If <code>off</code> is negative,
	* <code>len</code> is negative, or <code>len</code> is greater than
	* <code>buf.length - off</code>
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function read(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Skips specified number of bytes of input.
	* @param n the number of bytes to skip
	* @return the actual number of bytes skipped
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns the Checksum for this input stream.
	* @return the Checksum value
	*/
	@:overload public function getChecksum() : java.util.zip.Checksum;
	
	
}