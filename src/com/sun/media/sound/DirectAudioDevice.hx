package com.sun.media.sound;
/*
* Copyright (c) 2002, 2011, Oracle and/or its affiliates. All rights reserved.
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
//// IDEA:
//// Use java.util.concurrent.Semaphore,
//// java.util.concurrent.locks.ReentrantLock and other new classes/methods
//// to improve this class's thread safety.
/**
* A Mixer which provides direct access to audio devices
*
* @author Florian Bomers
*/
@:internal extern class DirectAudioDevice extends com.sun.media.sound.AbstractMixer
{
	@:overload @:public override public function getLine(info : javax.sound.sampled.Line.Line_Info) : javax.sound.sampled.Line;
	
	@:overload @:public override public function getMaxLines(info : javax.sound.sampled.Line.Line_Info) : Int;
	
	@:overload @:protected override private function implOpen() : Void;
	
	@:overload @:protected override private function implClose() : Void;
	
	@:overload @:protected override private function implStart() : Void;
	
	@:overload @:protected override private function implStop() : Void;
	
	@:overload @:protected @:static private static function getSignOrEndianChangedFormat(format : javax.sound.sampled.AudioFormat) : javax.sound.sampled.AudioFormat;
	
	
}
/**
* Private inner class for the DataLine.Info objects
* adds a little magic for the isFormatSupported so
* that the automagic conversion of endianness and sign
* does not show up in the formats array.
* I.e. the formats array contains only the formats
* that are really supported by the hardware,
* but isFormatSupported() also returns true
* for formats with wrong endianness.
*/
@:native('com$sun$media$sound$DirectAudioDevice$DirectDLI') @:internal extern class DirectAudioDevice_DirectDLI extends javax.sound.sampled.DataLine.DataLine_Info
{
	@:overload @:public public function isFormatSupportedInHardware(format : javax.sound.sampled.AudioFormat) : Bool;
	
	
}
/**
* Private inner class as base class for direct lines
*/
@:native('com$sun$media$sound$DirectAudioDevice$DirectDL') @:internal extern class DirectAudioDevice_DirectDL extends com.sun.media.sound.AbstractDataLine implements com.sun.media.sound.EventDispatcher.EventDispatcher_LineMonitor
{
	@:protected private var mixerIndex : Int;
	
	@:protected private var deviceID : Int;
	
	@:protected private var id : haxe.Int64;
	
	@:protected private var waitTime : Int;
	
	@:protected @:volatile private var flushing : Bool;
	
	@:protected private var isSource : Bool;
	
	@:protected @:volatile private var bytePosition : haxe.Int64;
	
	@:protected @:volatile private var doIO : Bool;
	
	@:protected @:volatile private var stoppedWritten : Bool;
	
	@:protected @:volatile private var drained : Bool;
	
	@:protected private var monitoring : Bool;
	
	@:protected private var softwareConversionSize : Int;
	
	@:protected private var hardwareFormat : javax.sound.sampled.AudioFormat;
	
	@:protected @:volatile private var noService : Bool;
	
	@:protected @:final private var lockNative(default, null) : Dynamic;
	
	@:overload @:protected private function new(info : javax.sound.sampled.DataLine.DataLine_Info, mixer : com.sun.media.sound.DirectAudioDevice, format : javax.sound.sampled.AudioFormat, bufferSize : Int, mixerIndex : Int, deviceID : Int, isSource : Bool) : Void;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function drain() : Void;
	
	@:overload @:public override public function flush() : Void;
	
	@:overload @:public override public function getLongFramePosition() : haxe.Int64;
	
	/*
	* write() belongs into SourceDataLine and Clip,
	* so define it here and make it accessible by
	* declaring the respective interfaces with DirectSDL and DirectClip
	*/
	@:overload @:public public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:protected private function requiresServicing() : Bool;
	
	@:overload @:public public function checkLine() : Void;
	
	
}
@:native('com$sun$media$sound$DirectAudioDevice$DirectDL$Gain') extern class DirectAudioDevice_DirectDL_Gain extends javax.sound.sampled.FloatControl
{
	@:overload @:public override public function setValue(newValue : Single) : Void;
	
	
}
@:native('com$sun$media$sound$DirectAudioDevice$DirectDL$Mute') @:internal extern class DirectAudioDevice_DirectDL_Mute extends javax.sound.sampled.BooleanControl
{
	@:overload @:public override public function setValue(newValue : Bool) : Void;
	
	
}
@:native('com$sun$media$sound$DirectAudioDevice$DirectDL$Balance') @:internal extern class DirectAudioDevice_DirectDL_Balance extends javax.sound.sampled.FloatControl
{
	@:overload @:public override public function setValue(newValue : Single) : Void;
	
	
}
@:native('com$sun$media$sound$DirectAudioDevice$DirectDL$Pan') @:internal extern class DirectAudioDevice_DirectDL_Pan extends javax.sound.sampled.FloatControl
{
	@:overload @:public override public function setValue(newValue : Single) : Void;
	
	
}
/**
* Private inner class representing a SourceDataLine
*/
@:native('com$sun$media$sound$DirectAudioDevice$DirectSDL') @:internal extern class DirectAudioDevice_DirectSDL extends com.sun.media.sound.DirectAudioDevice.DirectAudioDevice_DirectDL implements javax.sound.sampled.SourceDataLine
{
	
}
/**
* Private inner class representing a TargetDataLine
*/
@:native('com$sun$media$sound$DirectAudioDevice$DirectTDL') @:internal extern class DirectAudioDevice_DirectTDL extends com.sun.media.sound.DirectAudioDevice.DirectAudioDevice_DirectDL implements javax.sound.sampled.TargetDataLine
{
	@:overload @:public public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	
}
/**
* Private inner class representing a Clip
* This clip is realized in software only
*/
@:native('com$sun$media$sound$DirectAudioDevice$DirectClip') @:internal extern class DirectAudioDevice_DirectClip extends com.sun.media.sound.DirectAudioDevice.DirectAudioDevice_DirectDL implements javax.sound.sampled.Clip implements java.lang.Runnable implements com.sun.media.sound.AutoClosingClip
{
	@:overload @:public public function open(format : javax.sound.sampled.AudioFormat, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, bufferSize : Int) : Void;
	
	@:overload @:public public function open(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload @:public public function getFrameLength() : Int;
	
	@:overload @:public public function getMicrosecondLength() : haxe.Int64;
	
	@:overload @:public public function setFramePosition(frames : Int) : Void;
	
	@:overload @:public override public function getLongFramePosition() : haxe.Int64;
	
	@:overload @:public @:synchronized public function setMicrosecondPosition(microseconds : haxe.Int64) : Void;
	
	@:overload @:public public function setLoopPoints(start : Int, end : Int) : Void;
	
	@:overload @:public public function loop(count : Int) : Void;
	
	@:overload @:public public function run() : Void;
	
	/* $$mp 2003-10-01
	The following two methods are common between this class and
	MixerClip. They should be moved to a base class, together
	with the instance variable 'autoclosing'. */
	@:overload @:public public function isAutoClosing() : Bool;
	
	@:overload @:public public function setAutoClosing(value : Bool) : Void;
	
	@:overload @:protected override private function requiresServicing() : Bool;
	
	
}
/*
* private inner class representing a ByteArrayOutputStream
* which allows retrieval of the internal array
*/
@:native('com$sun$media$sound$DirectAudioDevice$DirectBAOS') @:internal extern class DirectAudioDevice_DirectBAOS extends java.io.ByteArrayOutputStream
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getInternalBuffer() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
