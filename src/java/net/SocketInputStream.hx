package java.net;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SocketInputStream extends java.io.FileInputStream
{
	/**
	* Returns the unique {@link java.nio.channels.FileChannel FileChannel}
	* object associated with this file input stream.</p>
	*
	* The <code>getChannel</code> method of <code>SocketInputStream</code>
	* returns <code>null</code> since it is a socket based stream.</p>
	*
	* @return  the file channel associated with this file input stream
	*
	* @since 1.4
	* @spec JSR-51
	*/
	@:require(java4) @:overload @:public @:final override public function getChannel() : java.nio.channels.FileChannel;
	
	/**
	* Reads into a byte array data from the socket.
	* @param b the buffer into which the data is read
	* @return the actual number of bytes read, -1 is
	*          returned when the end of the stream is reached.
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Reads into a byte array <i>b</i> at offset <i>off</i>,
	* <i>length</i> bytes of data.
	* @param b the buffer into which the data is read
	* @param off the start offset of the data
	* @param len the maximum number of bytes read
	* @return the actual number of bytes read, -1 is
	*          returned when the end of the stream is reached.
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, length : Int) : Int;
	
	/**
	* Reads a single byte from the socket.
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Skips n bytes of input.
	* @param n the number of bytes to skip
	* @return  the actual number of bytes skipped.
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function skip(numbytes : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns the number of bytes that can be read without blocking.
	* @return the number of immediately available bytes
	*/
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function close() : Void;
	
	/**
	* Overrides finalize, the fd is closed by the Socket.
	*/
	@:overload @:protected override private function finalize() : Void;
	
	
}
