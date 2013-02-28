package org.classpath.icedtea.pulseaudio;
/* PulseAudioMixer.java
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
extern class PulseAudioMixer implements javax.sound.sampled.Mixer
{
	@:overload @:synchronized public static function getInstance() : PulseAudioMixer;
	
	@:overload public function getLine(info : javax.sound.sampled.Line.Line_Info) : javax.sound.sampled.Line;
	
	@:overload public function getMaxLines(info : javax.sound.sampled.Line.Line_Info) : Int;
	
	@:overload public function getMixerInfo() : javax.sound.sampled.Mixer.Mixer_Info;
	
	@:overload public function getSourceLineInfo() : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getSourceLineInfo(info : javax.sound.sampled.Line.Line_Info) : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getSourceLines() : java.NativeArray<javax.sound.sampled.Line>;
	
	@:overload public function getTargetLineInfo() : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getTargetLineInfo(info : javax.sound.sampled.Line.Line_Info) : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getTargetLines() : java.NativeArray<javax.sound.sampled.Line>;
	
	@:overload public function isLineSupported(info : javax.sound.sampled.Line.Line_Info) : Bool;
	
	@:overload public function isSynchronizationSupported(lines : java.NativeArray<javax.sound.sampled.Line>, maintainSync : Bool) : Bool;
	
	@:overload public function synchronize(lines : java.NativeArray<javax.sound.sampled.Line>, maintainSync : Bool) : Void;
	
	@:overload public function unsynchronize(lines : java.NativeArray<javax.sound.sampled.Line>) : Void;
	
	@:overload public function addLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	@:overload @:synchronized public function close() : Void;
	
	@:overload public function getControl(control : javax.sound.sampled.Control.Control_Type) : javax.sound.sampled.Control;
	
	@:overload public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
	@:overload public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
	@:overload public function isControlSupported(control : javax.sound.sampled.Control.Control_Type) : Bool;
	
	@:overload public function isOpen() : Bool;
	
	@:overload public function open() : Void;
	
	@:overload public function openLocal() : Void;
	
	@:overload public function openLocal(appName : String) : Void;
	
	@:overload public function openRemote(appName : String, host : String) : Void;
	
	@:overload public function openRemote(appName : String, host : String, port : Int) : Void;
	
	@:overload public function removeLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	
}
