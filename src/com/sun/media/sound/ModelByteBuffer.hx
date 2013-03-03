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
extern class ModelByteBuffer
{
	@:overload @:public public function new(buffer : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function new(buffer : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	@:overload @:public public function new(file : java.io.File) : Void;
	
	@:overload @:public public function new(file : java.io.File, offset : haxe.Int64, len : haxe.Int64) : Void;
	
	@:overload @:public public function writeTo(out : java.io.OutputStream) : Void;
	
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	@:overload @:public public function subbuffer(beginIndex : haxe.Int64) : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function subbuffer(beginIndex : haxe.Int64, endIndex : haxe.Int64) : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function subbuffer(beginIndex : haxe.Int64, endIndex : haxe.Int64, independent : Bool) : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function array() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function arrayOffset() : haxe.Int64;
	
	@:overload @:public public function capacity() : haxe.Int64;
	
	@:overload @:public public function getRoot() : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function getFile() : java.io.File;
	
	@:overload @:public public function getFilePointer() : haxe.Int64;
	
	@:overload @:public @:static public static function loadAll(col : java.util.Collection<com.sun.media.sound.ModelByteBuffer>) : Void;
	
	@:overload @:public public function load() : Void;
	
	@:overload @:public public function unload() : Void;
	
	
}
@:native('com$sun$media$sound$ModelByteBuffer$RandomFileInputStream') @:internal extern class ModelByteBuffer_RandomFileInputStream extends java.io.InputStream
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public @:synchronized override public function mark(readlimit : Int) : Void;
	
	@:overload @:public override public function markSupported() : Bool;
	
	@:overload @:public @:synchronized override public function reset() : Void;
	
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function close() : Void;
	
	
}
