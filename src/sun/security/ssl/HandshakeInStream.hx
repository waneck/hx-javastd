package sun.security.ssl;
/*
* Copyright (c) 1996, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class HandshakeInStream extends java.io.InputStream
{
	/*
	* Return the number of bytes available for read().
	*
	* Note that this returns the bytes remaining in the buffer, not
	* the bytes remaining in the current handshake message.
	*/
	@:overload public function available() : Int;
	
	/*
	* Get a byte of handshake data.
	*/
	@:overload public function read() : Int;
	
	/*
	* Get a bunch of bytes of handshake data.
	*/
	@:overload public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/*
	* Skip some handshake data.
	*/
	@:overload public function skip(n : haxe.Int64) : haxe.Int64;
	
	/*
	* Mark/ reset code, implemented using InputRecord mark/ reset.
	*
	* Note that it currently provides only a limited mark functionality
	* and should be used with care (once a new handshake record has been
	* read, data that has already been consumed is lost even if marked).
	*/
	@:overload public function mark(readlimit : Int) : Void;
	
	@:overload public function reset() : Void;
	
	@:overload public function markSupported() : Bool;
	
	@:overload public function getBytes16() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
