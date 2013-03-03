package com.sun.xml.internal.ws.util;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ReadAllStream extends java.io.InputStream
{
	@:overload @:public public function new() : Void;
	
	/**
	* Reads the data from input stream completely. It keeps
	* inMemory size in the memory, and the rest on the file
	* system.
	*
	* Caller's responsibility to close the InputStream. This
	* method can be called only once.
	*
	* @param in from which to be read
	* @param inMemory this much data is kept in the memory
	* @throws IOException in case of exception
	*/
	@:overload @:public public function readAll(_in : java.io.InputStream, inMemory : haxe.Int64) : Void;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, sz : Int) : Int;
	
	@:overload @:public override public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$ws$util$ReadAllStream$FileStream') @:internal extern class ReadAllStream_FileStream extends java.io.InputStream
{
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, sz : Int) : Int;
	
	@:overload @:public override public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$ws$util$ReadAllStream$MemoryStream') @:internal extern class ReadAllStream_MemoryStream extends java.io.InputStream
{
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, sz : Int) : Int;
	
	
}
@:native('com$sun$xml$internal$ws$util$ReadAllStream$MemoryStream$Chunk') @:internal extern class ReadAllStream_MemoryStream_Chunk
{
	@:overload @:public public function new(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function createNext(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : com.sun.xml.internal.ws.util.ReadAllStream.ReadAllStream_MemoryStream_Chunk;
	
	
}
