package sun.rmi.transport.tcp;
/*
* Copyright (c) 1996, 1997, Oracle and/or its affiliates. All rights reserved.
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
* MultiplexInputStream manages receiving data over a connection managed
* by a ConnectionMultiplexer object.  This object is responsible for
* requesting more bytes of data as space in its internal buffer becomes
* available.
*
* @author Peter Jones
*/
@:internal extern class MultiplexInputStream extends java.io.InputStream
{
	/**
	* Read a byte from the connection.
	*/
	@:overload @:synchronized override public function read() : Int;
	
	/**
	* Read a subarray of bytes from connection.  This method blocks for
	* at least one byte, and it returns the number of bytes actually read,
	* or -1 if the end of the stream was detected.
	* @param b array to read bytes into
	* @param off offset of beginning of bytes to read into
	* @param len number of bytes to read
	*/
	@:overload @:synchronized override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Return the number of bytes immediately available for reading.
	*/
	@:overload override public function available() : Int;
	
	/**
	* Close this connection.
	*/
	@:overload override public function close() : Void;
	
	
}
