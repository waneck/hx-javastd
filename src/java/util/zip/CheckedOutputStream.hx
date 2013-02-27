package java.util.zip;
/*
* Copyright (c) 1996, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class CheckedOutputStream extends java.io.FilterOutputStream
{
	/**
	* Creates an output stream with the specified Checksum.
	* @param out the output stream
	* @param cksum the checksum
	*/
	@:overload public function new(out : java.io.OutputStream, cksum : java.util.zip.Checksum) : Void;
	
	/**
	* Writes a byte. Will block until the byte is actually written.
	* @param b the byte to be written
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function write(b : Int) : Void;
	
	/**
	* Writes an array of bytes. Will block until the bytes are
	* actually written.
	* @param b the data to be written
	* @param off the start offset of the data
	* @param len the number of bytes to be written
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Returns the Checksum for this output stream.
	* @return the Checksum
	*/
	@:overload public function getChecksum() : java.util.zip.Checksum;
	
	
}
