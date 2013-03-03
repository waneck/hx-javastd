package sun.rmi.log;
/*
* Copyright (c) 1997, Oracle and/or its affiliates. All rights reserved.
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
extern class LogOutputStream extends java.io.OutputStream
{
	/**
	* Creates an output file with the specified system dependent
	* file descriptor.
	* @param fd the system dependent file descriptor
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:public public function new(raf : java.io.RandomAccessFile) : Void;
	
	/**
	* Writes a byte of data. This method will block until the byte is
	* actually written.
	* @param b the byte to be written
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function write(b : Int) : Void;
	
	/**
	* Writes an array of bytes. Will block until the bytes
	* are actually written.
	* @param b the data to be written
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes a sub array of bytes.
	* @param b the data to be written
	* @param off       the start offset in the data
	* @param len       the number of bytes that are written
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Can not close a LogOutputStream, so this does nothing.
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:public @:final override public function close() : Void;
	
	
}
