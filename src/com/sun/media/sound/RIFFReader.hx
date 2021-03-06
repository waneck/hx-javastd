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
extern class RIFFReader extends java.io.InputStream
{
	@:overload @:public public function new(stream : java.io.InputStream) : Void;
	
	@:overload @:public public function getFilePointer() : haxe.Int64;
	
	@:overload @:public public function hasNextChunk() : Bool;
	
	@:overload @:public public function nextChunk() : com.sun.media.sound.RIFFReader;
	
	@:overload @:public public function getFormat() : String;
	
	@:overload @:public public function getType() : String;
	
	@:overload @:public public function getSize() : haxe.Int64;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	@:overload @:public @:final public function readFully(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public @:final public function readFully(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public @:final public function skipBytes(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public public function finish() : Void;
	
	@:overload @:public public function readString(len : Int) : String;
	
	@:overload @:public public function readByte() : java.StdTypes.Int8;
	
	@:overload @:public public function readShort() : java.StdTypes.Int16;
	
	@:overload @:public public function readInt() : Int;
	
	@:overload @:public public function readLong() : haxe.Int64;
	
	@:overload @:public public function readUnsignedByte() : Int;
	
	@:overload @:public public function readUnsignedShort() : Int;
	
	@:overload @:public public function readUnsignedInt() : haxe.Int64;
	
	@:overload @:public override public function close() : Void;
	
	
}
