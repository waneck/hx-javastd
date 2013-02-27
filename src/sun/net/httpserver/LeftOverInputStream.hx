package sun.net.httpserver;
/*
* Copyright (c) 2005, 2007, Oracle and/or its affiliates. All rights reserved.
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
* a (filter) input stream which can tell us if bytes are "left over"
* on the underlying stream which can be read (without blocking)
* on another instance of this class.
*
* The class can also report if all bytes "expected" to be read
* were read, by the time close() was called. In that case,
* bytes may be drained to consume them (by calling drain() ).
*
* isEOF() returns true, when all expected bytes have been read
*/
@:internal extern class LeftOverInputStream extends java.io.FilterInputStream
{
	private var closed : Bool;
	
	private var eof : Bool;
	
	@:overload public function new(t : sun.net.httpserver.ExchangeImpl, src : java.io.InputStream) : Void;
	
	/**
	* if bytes are left over buffered on *the UNDERLYING* stream
	*/
	@:overload public function isDataBuffered() : Bool;
	
	@:overload override public function close() : Void;
	
	@:overload public function isClosed() : Bool;
	
	@:overload public function isEOF() : Bool;
	
	@:overload @:abstract private function readImpl(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:synchronized override public function read() : Int;
	
	@:overload @:synchronized override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* read and discard up to l bytes or "eof" occurs,
	* (whichever is first). Then return true if the stream
	* is at eof (ie. all bytes were read) or false if not
	* (still bytes to be read)
	*/
	@:overload public function drain(l : haxe.Int64) : Bool;
	
	
}
