package sun.rmi.transport.tcp;
/*
* Copyright (c) 1996, Oracle and/or its affiliates. All rights reserved.
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
* MultiplexOutputStream manages sending data over a conection managed
* by a ConnectionMultiplexer object.  Data written is buffered until the
* internal buffer is full or the flush() method is called, at which
* point it attempts to push a packet of bytes through to the remote
* endpoint.  This will never push more bytes than the amount already
* requested by the remote endpoint (to prevent receive buffer from
* overflowing), so if the write() and flush() methods will block
* until their operation can complete if enough bytes cannot be
* pushed immediately.
*
* @author Peter Jones
*/
@:internal extern class MultiplexOutputStream extends java.io.OutputStream
{
	/**
	* Write a byte over connection.
	* @param b byte of data to write
	*/
	@:overload @:public @:synchronized override public function write(b : Int) : Void;
	
	/**
	* Write a subarray of bytes over connection.
	* @param b array containing bytes to write
	* @param off offset of beginning of bytes to write
	* @param len number of bytes to write
	*/
	@:overload @:public @:synchronized override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Guarantee that all data written to this stream has been pushed
	* over and made available to the remote endpoint.
	*/
	@:overload @:public @:synchronized override public function flush() : Void;
	
	/**
	* Close this connection.
	*/
	@:overload @:public override public function close() : Void;
	
	
}
