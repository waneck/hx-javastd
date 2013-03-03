package sun.net.www.http;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
* OutputStream that sends the output to the underlying stream using chunked
* encoding as specified in RFC 2068.
*/
extern class ChunkedOutputStream extends java.io.PrintStream
{
	@:overload @:public public function new(o : java.io.PrintStream) : Void;
	
	@:overload @:public public function new(o : java.io.PrintStream, size : Int) : Void;
	
	@:overload @:public override public function checkError() : Bool;
	
	/*
	* Writes data from b[] to an internal buffer and stores the data as data
	* chunks of a following format: {Data length in Hex}{CRLF}{data}{CRLF}
	* The size of the data is preferredChunkSize. As soon as a completed chunk
	* is read from b[] a process of reading from b[] suspends, the chunk gets
	* flushed to the underlying stream and then the reading process from b[]
	* continues. When there is no more sufficient data in b[] to build up a
	* chunk of preferredChunkSize size the data get stored as an incomplete
	* chunk of a following format: {space for data length}{CRLF}{data}
	* The size of the data is of course smaller than preferredChunkSize.
	*/
	@:overload @:public @:synchronized override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public @:synchronized override public function write(_b : Int) : Void;
	
	@:overload @:public @:synchronized public function reset() : Void;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public @:synchronized override public function close() : Void;
	
	@:overload @:public @:synchronized override public function flush() : Void;
	
	
}
