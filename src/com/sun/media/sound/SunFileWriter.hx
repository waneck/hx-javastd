package com.sun.media.sound;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SunFileWriter extends javax.sound.sampled.spi.AudioFileWriter
{
	/**
	* Abstract File Writer class.
	*
	* @author Jan Borgersen
	*/
	@:protected @:static @:final private static var bufferSize(default, null) : Int;
	
	@:protected @:static @:final private static var bisBufferSize(default, null) : Int;
	
	@:overload @:public override public function getAudioFileTypes() : java.NativeArray<javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type>;
	
	@:overload @:public @:abstract override public function getAudioFileTypes(stream : javax.sound.sampled.AudioInputStream) : java.NativeArray<javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type>;
	
	@:overload @:public @:abstract override public function write(stream : javax.sound.sampled.AudioInputStream, fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, out : java.io.OutputStream) : Int;
	
	@:overload @:public @:abstract override public function write(stream : javax.sound.sampled.AudioInputStream, fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, out : java.io.File) : Int;
	
	/**
	* rllong
	* Protected helper method to read 64 bits and changing the order of
	* each bytes.
	* @param DataInputStream
	* @return 32 bits swapped value.
	* @exception IOException
	*/
	@:overload @:protected private function rllong(dis : java.io.DataInputStream) : Int;
	
	/**
	* big2little
	* Protected helper method to swap the order of bytes in a 32 bit int
	* @param int
	* @return 32 bits swapped value
	*/
	@:overload @:protected private function big2little(i : Int) : Int;
	
	/**
	* rlshort
	* Protected helper method to read 16 bits value. Swap high with low byte.
	* @param DataInputStream
	* @return the swapped value.
	* @exception IOException
	*/
	@:overload @:protected private function rlshort(dis : java.io.DataInputStream) : java.StdTypes.Int16;
	
	/**
	* big2little
	* Protected helper method to swap the order of bytes in a 16 bit short
	* @param int
	* @return 16 bits swapped value
	*/
	@:overload @:protected private function big2littleShort(i : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	
}
/**
* InputStream wrapper class which prevent source stream from being closed.
* The class is usefull for use with SequenceInputStream to prevent
* closing of the source input streams.
*/
@:native('com$sun$media$sound$SunFileWriter$NoCloseInputStream') extern class SunFileWriter_NoCloseInputStream extends java.io.InputStream
{
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function close() : Void;
	
	@:overload @:public override public function mark(readlimit : Int) : Void;
	
	@:overload @:public override public function reset() : Void;
	
	@:overload @:public override public function markSupported() : Bool;
	
	
}
