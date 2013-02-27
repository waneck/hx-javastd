package sun.security.ssl;
/*
* Copyright (c) 1996, 2009, Oracle and/or its affiliates. All rights reserved.
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
* InputStream for application data as returned by SSLSocket.getInputStream().
* It uses an InputRecord as internal buffer that is refilled on demand
* whenever it runs out of data.
*
* @author David Brownell
*/
@:internal extern class AppInputStream extends java.io.InputStream
{
	/**
	* Return the minimum number of bytes that can be read without blocking.
	* Currently not synchronized.
	*/
	@:overload override public function available() : Int;
	
	/**
	* Read a single byte, returning -1 on non-fault EOF status.
	*/
	@:overload @:synchronized override public function read() : Int;
	
	/**
	* Read up to "len" bytes into this buffer, starting at "off".
	* If the layer above needs more data, it asks for more, so we
	* are responsible only for blocking to fill at most one buffer,
	* and returning "-1" on non-fault EOF status.
	*/
	@:overload @:synchronized override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Skip n bytes. This implementation is somewhat less efficient
	* than possible, but not badly so (redundant copy). We reuse
	* the read() code to keep things simpler. Note that SKIP_ARRAY
	* is static and may garbled by concurrent use, but we are not interested
	* in the data anyway.
	*/
	@:overload @:synchronized override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/*
	* Socket close is already synchronized, no need to block here.
	*/
	@:overload override public function close() : Void;
	
	
}
