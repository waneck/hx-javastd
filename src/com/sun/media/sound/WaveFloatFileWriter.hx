package com.sun.media.sound;
/*
* Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class WaveFloatFileWriter extends javax.sound.sampled.spi.AudioFileWriter
{
	/**
	* Floating-point encoded (format 3) WAVE file writer.
	*
	* @author Karl Helgason
	*/
	@:overload @:public override public function getAudioFileTypes() : java.NativeArray<javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type>;
	
	@:overload @:public override public function getAudioFileTypes(stream : javax.sound.sampled.AudioInputStream) : java.NativeArray<javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type>;
	
	@:overload @:public public function write(stream : javax.sound.sampled.AudioInputStream, writer : com.sun.media.sound.RIFFWriter) : Void;
	
	@:overload @:public override public function write(stream : javax.sound.sampled.AudioInputStream, fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, out : java.io.OutputStream) : Int;
	
	@:overload @:public override public function write(stream : javax.sound.sampled.AudioInputStream, fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, out : java.io.File) : Int;
	
	
}
@:native('com$sun$media$sound$WaveFloatFileWriter$NoCloseOutputStream') @:internal extern class WaveFloatFileWriter_NoCloseOutputStream extends java.io.OutputStream
{
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function flush() : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
