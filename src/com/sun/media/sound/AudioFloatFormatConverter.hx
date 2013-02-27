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
extern class AudioFloatFormatConverter extends javax.sound.sampled.spi.FormatConversionProvider
{
	@:overload override public function getAudioInputStream(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceStream : javax.sound.sampled.AudioInputStream) : javax.sound.sampled.AudioInputStream;
	
	@:overload override public function getAudioInputStream(targetFormat : javax.sound.sampled.AudioFormat, sourceStream : javax.sound.sampled.AudioInputStream) : javax.sound.sampled.AudioInputStream;
	
	@:overload public function getAudioInputStream(targetFormat : javax.sound.sampled.AudioFormat, sourceStream : com.sun.media.sound.AudioFloatInputStream) : javax.sound.sampled.AudioInputStream;
	
	@:overload override public function getSourceEncodings() : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	@:overload override public function getTargetEncodings() : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	@:overload override public function getTargetEncodings(sourceFormat : javax.sound.sampled.AudioFormat) : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	@:overload override public function getTargetFormats(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceFormat : javax.sound.sampled.AudioFormat) : java.NativeArray<javax.sound.sampled.AudioFormat>;
	
	@:overload override public function isConversionSupported(targetFormat : javax.sound.sampled.AudioFormat, sourceFormat : javax.sound.sampled.AudioFormat) : Bool;
	
	@:overload override public function isConversionSupported(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceFormat : javax.sound.sampled.AudioFormat) : Bool;
	
	
}
/**
* This class is used to convert between 8,16,24,32 bit signed/unsigned
* big/litle endian fixed/floating stereo/mono/multi-channel audio streams and
* perform sample-rate conversion if needed.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$AudioFloatFormatConverter$AudioFloatFormatConverterInputStream') @:internal extern class AudioFloatFormatConverter_AudioFloatFormatConverterInputStream extends java.io.InputStream
{
	@:overload public function new(targetFormat : javax.sound.sampled.AudioFormat, stream : com.sun.media.sound.AudioFloatInputStream) : Void;
	
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	@:overload @:synchronized override public function mark(readlimit : Int) : Void;
	
	@:overload override public function markSupported() : Bool;
	
	@:overload @:synchronized override public function reset() : Void;
	
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	
}
@:native('com$sun$media$sound$AudioFloatFormatConverter$AudioFloatInputStreamChannelMixer') @:internal extern class AudioFloatFormatConverter_AudioFloatInputStreamChannelMixer extends com.sun.media.sound.AudioFloatInputStream
{
	@:overload public function new(ais : com.sun.media.sound.AudioFloatInputStream, targetChannels : Int) : Void;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	@:overload override public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload override public function getFrameLength() : haxe.Int64;
	
	@:overload override public function mark(readlimit : Int) : Void;
	
	@:overload override public function markSupported() : Bool;
	
	@:overload override public function read(b : java.NativeArray<Single>, off : Int, len : Int) : Int;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function skip(len : haxe.Int64) : haxe.Int64;
	
	
}
@:native('com$sun$media$sound$AudioFloatFormatConverter$AudioFloatInputStreamResampler') @:internal extern class AudioFloatFormatConverter_AudioFloatInputStreamResampler extends com.sun.media.sound.AudioFloatInputStream
{
	@:overload public function new(ais : com.sun.media.sound.AudioFloatInputStream, format : javax.sound.sampled.AudioFormat) : Void;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	@:overload override public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload override public function getFrameLength() : haxe.Int64;
	
	@:overload override public function mark(readlimit : Int) : Void;
	
	@:overload override public function markSupported() : Bool;
	
	@:overload override public function read(b : java.NativeArray<Single>, off : Int, len : Int) : Int;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function skip(len : haxe.Int64) : haxe.Int64;
	
	
}
