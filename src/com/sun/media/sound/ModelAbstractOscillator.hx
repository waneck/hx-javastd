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
extern class ModelAbstractOscillator implements com.sun.media.sound.ModelOscillator implements com.sun.media.sound.ModelOscillatorStream implements javax.sound.midi.Soundbank
{
	/**
	* A abstract class used to simplify creating custom ModelOscillator.
	*
	* @author Karl Helgason
	*/
	@:protected private var pitch : Single;
	
	@:protected private var samplerate : Single;
	
	@:protected private var channel : javax.sound.midi.MidiChannel;
	
	@:protected private var voice : javax.sound.midi.VoiceStatus;
	
	@:protected private var noteNumber : Int;
	
	@:protected private var velocity : Int;
	
	@:protected private var on : Bool;
	
	@:overload @:public public function init() : Void;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function noteOff(velocity : Int) : Void;
	
	@:overload @:public public function noteOn(channel : javax.sound.midi.MidiChannel, voice : javax.sound.midi.VoiceStatus, noteNumber : Int, velocity : Int) : Void;
	
	@:overload @:public public function read(buffer : java.NativeArray<java.NativeArray<Single>>, offset : Int, len : Int) : Int;
	
	@:overload @:public public function getChannel() : javax.sound.midi.MidiChannel;
	
	@:overload @:public public function getVoice() : javax.sound.midi.VoiceStatus;
	
	@:overload @:public public function getNoteNumber() : Int;
	
	@:overload @:public public function getVelocity() : Int;
	
	@:overload @:public public function isOn() : Bool;
	
	@:overload @:public public function setPitch(pitch : Single) : Void;
	
	@:overload @:public public function getPitch() : Single;
	
	@:overload @:public public function setSampleRate(samplerate : Single) : Void;
	
	@:overload @:public public function getSampleRate() : Single;
	
	@:overload @:public public function getAttenuation() : Single;
	
	@:overload @:public public function getChannels() : Int;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getPatch() : javax.sound.midi.Patch;
	
	@:overload @:public public function open(samplerate : Single) : com.sun.media.sound.ModelOscillatorStream;
	
	@:overload @:public public function getPerformer() : com.sun.media.sound.ModelPerformer;
	
	@:overload @:public public function getInstrument() : com.sun.media.sound.ModelInstrument;
	
	@:overload @:public public function getSoundBank() : javax.sound.midi.Soundbank;
	
	@:overload @:public public function getDescription() : String;
	
	@:overload @:public public function getInstrument(patch : javax.sound.midi.Patch) : javax.sound.midi.Instrument;
	
	@:overload @:public public function getInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	@:overload @:public public function getResources() : java.NativeArray<javax.sound.midi.SoundbankResource>;
	
	@:overload @:public public function getVendor() : String;
	
	@:overload @:public public function getVersion() : String;
	
	
}
