package com.sun.media.sound;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class RIFFWriter extends java.io.OutputStream
{
	@:overload @:public public function new(name : String, format : String) : Void;
	
	@:overload @:public public function new(file : java.io.File, format : String) : Void;
	
	@:overload @:public public function new(stream : java.io.OutputStream, format : String) : Void;
	
	@:overload @:public public function seek(pos : haxe.Int64) : Void;
	
	@:overload @:public public function getFilePointer() : haxe.Int64;
	
	@:overload @:public public function setWriteOverride(writeoverride : Bool) : Void;
	
	@:overload @:public public function getWriteOverride() : Bool;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function writeList(format : String) : com.sun.media.sound.RIFFWriter;
	
	@:overload @:public public function writeChunk(format : String) : com.sun.media.sound.RIFFWriter;
	
	@:overload @:public public function writeString(string : String) : Void;
	
	@:overload @:public public function writeString(string : String, len : Int) : Void;
	
	@:overload @:public public function writeByte(b : Int) : Void;
	
	@:overload @:public public function writeShort(b : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function writeInt(b : Int) : Void;
	
	@:overload @:public public function writeLong(b : haxe.Int64) : Void;
	
	@:overload @:public public function writeUnsignedByte(b : Int) : Void;
	
	@:overload @:public public function writeUnsignedShort(b : Int) : Void;
	
	@:overload @:public public function writeUnsignedInt(b : haxe.Int64) : Void;
	
	
}
/**
* Resource Interchange File Format (RIFF) stream encoder.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$RIFFWriter$RandomAccessWriter') @:internal extern interface RIFFWriter_RandomAccessWriter
{
	@:overload @:public public function seek(chunksizepointer : haxe.Int64) : Void;
	
	@:overload @:public public function getPointer() : haxe.Int64;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function write(b : Int) : Void;
	
	@:overload @:public public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function write(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function length() : haxe.Int64;
	
	@:overload @:public public function setLength(i : haxe.Int64) : Void;
	
	
}
@:native('com$sun$media$sound$RIFFWriter$RandomAccessFileWriter') @:internal extern class RIFFWriter_RandomAccessFileWriter implements com.sun.media.sound.RIFFWriter.RIFFWriter_RandomAccessWriter
{
	@:overload @:public public function new(file : java.io.File) : Void;
	
	@:overload @:public public function new(name : String) : Void;
	
	@:overload @:public public function seek(chunksizepointer : haxe.Int64) : Void;
	
	@:overload @:public public function getPointer() : haxe.Int64;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function write(b : Int) : Void;
	
	@:overload @:public public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function write(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function length() : haxe.Int64;
	
	@:overload @:public public function setLength(i : haxe.Int64) : Void;
	
	
}
@:native('com$sun$media$sound$RIFFWriter$RandomAccessByteWriter') @:internal extern class RIFFWriter_RandomAccessByteWriter implements com.sun.media.sound.RIFFWriter.RIFFWriter_RandomAccessWriter
{
	@:overload @:public public function new(stream : java.io.OutputStream) : Void;
	
	@:overload @:public public function seek(chunksizepointer : haxe.Int64) : Void;
	
	@:overload @:public public function getPointer() : haxe.Int64;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function write(b : Int) : Void;
	
	@:overload @:public public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public public function write(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function length() : haxe.Int64;
	
	@:overload @:public public function setLength(i : haxe.Int64) : Void;
	
	
}
