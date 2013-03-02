package com.sun.media.sound;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class WaveExtensibleFileReader extends javax.sound.sampled.spi.AudioFileReader
{
	@:overload public function getAudioFileFormat(stream : java.io.InputStream) : javax.sound.sampled.AudioFileFormat;
	
	@:overload public function getAudioInputStream(stream : java.io.InputStream) : javax.sound.sampled.AudioInputStream;
	
	@:overload public function getAudioFileFormat(url : java.net.URL) : javax.sound.sampled.AudioFileFormat;
	
	@:overload public function getAudioFileFormat(file : java.io.File) : javax.sound.sampled.AudioFileFormat;
	
	@:overload public function getAudioInputStream(url : java.net.URL) : javax.sound.sampled.AudioInputStream;
	
	@:overload public function getAudioInputStream(file : java.io.File) : javax.sound.sampled.AudioInputStream;
	
	
}
/**
* WAVE file reader for files using format WAVE_FORMAT_EXTENSIBLE (0xFFFE).
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$WaveExtensibleFileReader$GUID') @:internal extern class WaveExtensibleFileReader_GUID
{
	@:overload public function new(i1 : haxe.Int64, s1 : Int, s2 : Int, x1 : Int, x2 : Int, x3 : Int, x4 : Int, x5 : Int, x6 : Int, x7 : Int, x8 : Int) : Void;
	
	@:overload public static function read(riff : com.sun.media.sound.RIFFReader) : com.sun.media.sound.WaveExtensibleFileReader.WaveExtensibleFileReader_GUID;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
