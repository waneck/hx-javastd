package java.net;
/*
* Copyright (c) 1995, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SocketOutputStream extends java.io.FileOutputStream
{
	/**
	* Returns the unique {@link java.nio.channels.FileChannel FileChannel}
	* object associated with this file output stream. </p>
	*
	* The <code>getChannel</code> method of <code>SocketOutputStream</code>
	* returns <code>null</code> since it is a socket based stream.</p>
	*
	* @return  the file channel associated with this file output stream
	*
	* @since 1.4
	* @spec JSR-51
	*/
	@:require(java4) @:overload @:final public function getChannel() : java.nio.channels.FileChannel;
	
	/**
	* Writes a byte to the socket.
	* @param b the data to be written
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload override public function write(b : Int) : Void;
	
	/**
	* Writes the contents of the buffer <i>b</i> to the socket.
	* @param b the data to be written
	* @exception SocketException If an I/O error has occurred.
	*/
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes <i>length</i> bytes from buffer <i>b</i> starting at
	* offset <i>len</i>.
	* @param b the data to be written
	* @param off the start offset in the data
	* @param len the number of bytes that are written
	* @exception SocketException If an I/O error has occurred.
	*/
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function close() : Void;
	
	/**
	* Overrides finalize, the fd is closed by the Socket.
	*/
	@:overload private function finalize() : Void;
	
	
}
