package org.classpath.icedtea.pulseaudio;
/* PulseAudioClip.java
Copyright (C) 2008 Red Hat, Inc.

This file is part of IcedTea.

IcedTea is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 2.

IcedTea is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with IcedTea; see the file COPYING.  If not, write to
the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
02110-1301 USA.

Linking this library statically or dynamically with other modules is
making a combined work based on this library.  Thus, the terms and
conditions of the GNU General Public License cover the whole
combination.

As a special exception, the copyright holders of this library give you
permission to link this library with independent modules to produce an
executable, regardless of the license terms of these independent
modules, and to copy and distribute the resulting executable under
terms of your choice, provided that you also meet, for each linked
independent module, the terms and conditions of the license of that
module.  An independent module is a module which is not derived from
or based on this library.  If you modify this library, you may extend
this exception to your version of the library, but you are not
obligated to do so.  If you do not wish to do so, delete this
exception statement from your version.
*/
extern class PulseAudioClip extends org.classpath.icedtea.pulseaudio.PulseAudioDataLine implements javax.sound.sampled.Clip implements org.classpath.icedtea.pulseaudio.PulseAudioPlaybackLine
{
	@:public @:static @:final public static var DEFAULT_CLIP_NAME(default, null) : String;
	
	@:overload @:protected override private function connectLine(bufferSize : Int, masterStream : org.classpath.icedtea.pulseaudio.Stream) : Void;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function close() : Void;
	
	/*
	* 
	* drain() on a Clip should block until the entire clip has finished playing
	* http://bugs.sun.com/bugdatabase/view_bug.do?bug_id=4732218
	*/
	@:overload @:public override public function drain() : Void;
	
	@:overload @:public override public function flush() : Void;
	
	@:overload @:public public function getFrameLength() : Int;
	
	@:overload @:public override public function getFramePosition() : Int;
	
	@:overload @:public override public function getLongFramePosition() : haxe.Int64;
	
	@:overload @:public public function getMicrosecondLength() : haxe.Int64;
	
	@:overload @:public override public function getMicrosecondPosition() : haxe.Int64;
	
	@:overload @:public public function loop(count : Int) : Void;
	
	@:overload @:public override public function open() : Void;
	
	@:overload @:public public function open(format : javax.sound.sampled.AudioFormat, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, bufferSize : Int) : Void;
	
	@:overload @:public public function native_set_volume(value : Single) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function native_update_volume() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getCachedVolume() : Single;
	
	@:overload @:public public function setCachedVolume(value : Single) : Void;
	
	@:overload @:public public function open(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload @:public public function setFramePosition(frames : Int) : Void;
	
	@:overload @:public public function setLoopPoints(start : Int, end : Int) : Void;
	
	@:overload @:public public function setMicrosecondPosition(microseconds : haxe.Int64) : Void;
	
	@:overload @:public override public function start() : Void;
	
	@:overload @:public override public function stop() : Void;
	
	@:overload @:public override public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
	
}
/**
* This thread runs
* 
*/
@:native('org$classpath$icedtea$pulseaudio$PulseAudioClip$ClipThread') @:internal extern class PulseAudioClip_ClipThread extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
