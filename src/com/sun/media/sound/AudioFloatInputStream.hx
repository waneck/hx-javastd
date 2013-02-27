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
extern class AudioFloatInputStream
{
	@:overload public static function getInputStream(url : java.net.URL) : AudioFloatInputStream;
	
	@:overload public static function getInputStream(file : java.io.File) : AudioFloatInputStream;
	
	@:overload public static function getInputStream(stream : java.io.InputStream) : AudioFloatInputStream;
	
	@:overload public static function getInputStream(stream : javax.sound.sampled.AudioInputStream) : AudioFloatInputStream;
	
	@:overload public static function getInputStream(format : javax.sound.sampled.AudioFormat, buffer : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : AudioFloatInputStream;
	
	@:overload @:abstract public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload @:abstract public function getFrameLength() : haxe.Int64;
	
	@:overload @:abstract public function read(b : java.NativeArray<Single>, off : Int, len : Int) : Int;
	
	@:overload public function read(b : java.NativeArray<Single>) : Int;
	
	@:overload public function read() : Single;
	
	@:overload @:abstract public function skip(len : haxe.Int64) : haxe.Int64;
	
	@:overload @:abstract public function available() : Int;
	
	@:overload @:abstract public function close() : Void;
	
	@:overload @:abstract public function mark(readlimit : Int) : Void;
	
	@:overload @:abstract public function markSupported() : Bool;
	
	@:overload @:abstract public function reset() : Void;
	
	
}
/**
* This class is used to create AudioFloatInputStream from AudioInputStream and
* byte buffers.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$AudioFloatInputStream$BytaArrayAudioFloatInputStream') @:internal extern class AudioFloatInputStream_BytaArrayAudioFloatInputStream extends AudioFloatInputStream
{
	@:overload public function new(converter : com.sun.media.sound.AudioFloatConverter, buffer : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	@:overload override public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload override public function getFrameLength() : haxe.Int64;
	
	@:overload override public function read(b : java.NativeArray<Single>, off : Int, len : Int) : Int;
	
	@:overload override public function skip(len : haxe.Int64) : haxe.Int64;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	@:overload override public function mark(readlimit : Int) : Void;
	
	@:overload override public function markSupported() : Bool;
	
	@:overload override public function reset() : Void;
	
	
}
@:native('com$sun$media$sound$AudioFloatInputStream$DirectAudioFloatInputStream') @:internal extern class AudioFloatInputStream_DirectAudioFloatInputStream extends AudioFloatInputStream
{
	@:overload public function new(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload override public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload override public function getFrameLength() : haxe.Int64;
	
	@:overload override public function read(b : java.NativeArray<Single>, off : Int, len : Int) : Int;
	
	@:overload override public function skip(len : haxe.Int64) : haxe.Int64;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	@:overload override public function mark(readlimit : Int) : Void;
	
	@:overload override public function markSupported() : Bool;
	
	@:overload override public function reset() : Void;
	
	
}
