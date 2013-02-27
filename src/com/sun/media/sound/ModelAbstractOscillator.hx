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
	private var pitch : Single;
	
	private var samplerate : Single;
	
	private var channel : javax.sound.midi.MidiChannel;
	
	private var voice : javax.sound.midi.VoiceStatus;
	
	private var noteNumber : Int;
	
	private var velocity : Int;
	
	private var on : Bool;
	
	@:overload public function init() : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function noteOff(velocity : Int) : Void;
	
	@:overload public function noteOn(channel : javax.sound.midi.MidiChannel, voice : javax.sound.midi.VoiceStatus, noteNumber : Int, velocity : Int) : Void;
	
	@:overload public function read(buffer : java.NativeArray<java.NativeArray<Single>>, offset : Int, len : Int) : Int;
	
	@:overload public function getChannel() : javax.sound.midi.MidiChannel;
	
	@:overload public function getVoice() : javax.sound.midi.VoiceStatus;
	
	@:overload public function getNoteNumber() : Int;
	
	@:overload public function getVelocity() : Int;
	
	@:overload public function isOn() : Bool;
	
	@:overload public function setPitch(pitch : Single) : Void;
	
	@:overload public function getPitch() : Single;
	
	@:overload public function setSampleRate(samplerate : Single) : Void;
	
	@:overload public function getSampleRate() : Single;
	
	@:overload public function getAttenuation() : Single;
	
	@:overload public function getChannels() : Int;
	
	@:overload public function getName() : String;
	
	@:overload public function getPatch() : javax.sound.midi.Patch;
	
	@:overload public function open(samplerate : Single) : com.sun.media.sound.ModelOscillatorStream;
	
	@:overload public function getPerformer() : com.sun.media.sound.ModelPerformer;
	
	@:overload public function getInstrument() : com.sun.media.sound.ModelInstrument;
	
	@:overload public function getSoundBank() : javax.sound.midi.Soundbank;
	
	@:overload public function getDescription() : String;
	
	@:overload public function getInstrument(patch : javax.sound.midi.Patch) : javax.sound.midi.Instrument;
	
	@:overload public function getInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	@:overload public function getResources() : java.NativeArray<javax.sound.midi.SoundbankResource>;
	
	@:overload public function getVendor() : String;
	
	@:overload public function getVersion() : String;
	
	
}
