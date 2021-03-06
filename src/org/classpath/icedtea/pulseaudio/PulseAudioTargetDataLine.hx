package org.classpath.icedtea.pulseaudio;
/* PulseAudioTargetDataLine.java
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
extern class PulseAudioTargetDataLine extends org.classpath.icedtea.pulseaudio.PulseAudioDataLine implements javax.sound.sampled.TargetDataLine
{
	@:public @:static @:final public static var DEFAULT_TARGETDATALINE_NAME(default, null) : String;
	
	@:overload @:synchronized @:public override public function close() : Void;
	
	@:overload @:synchronized @:public override public function open(format : javax.sound.sampled.AudioFormat, bufferSize : Int) : Void;
	
	@:overload @:synchronized @:public override public function open(format : javax.sound.sampled.AudioFormat) : Void;
	
	@:overload @:protected override private function connectLine(bufferSize : Int, masterStream : org.classpath.icedtea.pulseaudio.Stream) : Void;
	
	@:overload @:public public function read(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Int;
	
	@:overload @:public override public function drain() : Void;
	
	@:overload @:public @:synchronized override public function flush() : Void;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function getFramePosition() : Int;
	
	@:overload @:public override public function getLongFramePosition() : haxe.Int64;
	
	@:overload @:public override public function getMicrosecondPosition() : haxe.Int64;
	
	/*
	* A TargetData starts when we ask it to and continues playing until we ask
	* it to stop. There are no buffer underruns/overflows or anything so we
	* will just fire the LineEvents manually
	*/
	@:overload @:synchronized @:public override public function start() : Void;
	
	@:overload @:synchronized @:public override public function stop() : Void;
	
	@:overload @:public override public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
	
}
