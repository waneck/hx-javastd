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
extern class ModelByteBufferWavetable implements com.sun.media.sound.ModelWavetable
{
	@:overload @:public public function new(buffer : com.sun.media.sound.ModelByteBuffer) : Void;
	
	@:overload @:public public function new(buffer : com.sun.media.sound.ModelByteBuffer, pitchcorrection : Single) : Void;
	
	@:overload @:public public function new(buffer : com.sun.media.sound.ModelByteBuffer, format : javax.sound.sampled.AudioFormat) : Void;
	
	@:overload @:public public function new(buffer : com.sun.media.sound.ModelByteBuffer, format : javax.sound.sampled.AudioFormat, pitchcorrection : Single) : Void;
	
	@:overload @:public public function set8BitExtensionBuffer(buffer : com.sun.media.sound.ModelByteBuffer) : Void;
	
	@:overload @:public public function get8BitExtensionBuffer() : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function getBuffer() : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload @:public public function openStream() : com.sun.media.sound.AudioFloatInputStream;
	
	@:overload @:public public function getChannels() : Int;
	
	@:overload @:public public function open(samplerate : Single) : com.sun.media.sound.ModelOscillatorStream;
	
	@:overload @:public public function getAttenuation() : Single;
	
	@:overload @:public public function setAttenuation(attenuation : Single) : Void;
	
	@:overload @:public public function getLoopLength() : Single;
	
	@:overload @:public public function setLoopLength(loopLength : Single) : Void;
	
	@:overload @:public public function getLoopStart() : Single;
	
	@:overload @:public public function setLoopStart(loopStart : Single) : Void;
	
	@:overload @:public public function setLoopType(loopType : Int) : Void;
	
	@:overload @:public public function getLoopType() : Int;
	
	@:overload @:public public function getPitchcorrection() : Single;
	
	@:overload @:public public function setPitchcorrection(pitchcorrection : Single) : Void;
	
	
}
/**
* Wavetable oscillator for pre-loaded data.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$ModelByteBufferWavetable$Buffer8PlusInputStream') @:internal extern class ModelByteBufferWavetable_Buffer8PlusInputStream extends java.io.InputStream
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function markSupported() : Bool;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public @:synchronized override public function mark(readlimit : Int) : Void;
	
	@:overload @:public @:synchronized override public function reset() : Void;
	
	
}
