package sun.net.httpserver;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
*/
@:internal extern class Request
{
	@:overload @:public public function inputStream() : java.io.InputStream;
	
	@:overload @:public public function outputStream() : java.io.OutputStream;
	
	/**
	* read a line from the stream returning as a String.
	* Not used for reading headers.
	*/
	@:overload @:public public function readLine() : String;
	
	/**
	* returns the request line (first line of a request)
	*/
	@:overload @:public public function requestLine() : String;
	
	
}
/**
* Implements blocking reading semantics on top of a non-blocking channel
*/
@:native('sun$net$httpserver$Request$ReadStream') @:internal extern class Request_ReadStream extends java.io.InputStream
{
	@:overload @:public public function new(server : sun.net.httpserver.ServerImpl, chan : java.nio.channels.SocketChannel) : Void;
	
	@:overload @:public @:synchronized override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:public @:synchronized override public function read() : Int;
	
	@:overload @:public @:synchronized override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, srclen : Int) : Int;
	
	@:overload @:public override public function markSupported() : Bool;
	
	/* Does not query the OS socket */
	@:overload @:public @:synchronized override public function available() : Int;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public @:synchronized override public function mark(readlimit : Int) : Void;
	
	@:overload @:public @:synchronized override public function reset() : Void;
	
	
}
@:native('sun$net$httpserver$Request$WriteStream') @:internal extern class Request_WriteStream extends java.io.OutputStream
{
	@:overload @:public public function new(server : sun.net.httpserver.ServerImpl, channel : java.nio.channels.SocketChannel) : Void;
	
	@:overload @:public @:synchronized override public function write(b : Int) : Void;
	
	@:overload @:public @:synchronized override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:synchronized override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}
