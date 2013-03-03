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
extern class SoftChannel implements javax.sound.midi.MidiChannel implements com.sun.media.sound.ModelDirectedPlayer
{
	@:protected private var portamento_time : Float;
	
	@:protected private var portamento_lastnote : java.NativeArray<Int>;
	
	@:protected private var portamento_lastnote_ix : Int;
	
	@:protected private var tuning : com.sun.media.sound.SoftTuning;
	
	@:protected private var tuning_bank : Int;
	
	@:protected private var tuning_program : Int;
	
	@:protected private var current_instrument : com.sun.media.sound.SoftInstrument;
	
	@:protected private var current_mixer : com.sun.media.sound.ModelChannelMixer;
	
	@:protected private var current_director : com.sun.media.sound.ModelDirector;
	
	@:protected private var cds_control_number : Int;
	
	@:protected private var cds_control_connections : java.NativeArray<com.sun.media.sound.ModelConnectionBlock>;
	
	@:protected private var cds_channelpressure_connections : java.NativeArray<com.sun.media.sound.ModelConnectionBlock>;
	
	@:protected private var cds_polypressure_connections : java.NativeArray<com.sun.media.sound.ModelConnectionBlock>;
	
	@:protected private var sustain : Bool;
	
	@:protected private var keybasedcontroller_active : java.NativeArray<java.NativeArray<Bool>>;
	
	@:protected private var keybasedcontroller_value : java.NativeArray<java.NativeArray<Float>>;
	
	@:overload @:public public function new(synth : com.sun.media.sound.SoftSynthesizer, channel : Int) : Void;
	
	@:overload @:protected private function initVoice(voice : com.sun.media.sound.SoftVoice, p : com.sun.media.sound.SoftPerformer, voiceID : Int, noteNumber : Int, velocity : Int, delay : Int, connectionBlocks : java.NativeArray<com.sun.media.sound.ModelConnectionBlock>, channelmixer : com.sun.media.sound.ModelChannelMixer, releaseTriggered : Bool) : Void;
	
	@:overload @:public public function noteOn(noteNumber : Int, velocity : Int) : Void;
	
	/* A special noteOn with delay parameter, which is used to
	* start note within control buffers.
	*/
	@:overload @:protected private function noteOn(noteNumber : Int, velocity : Int, delay : Int) : Void;
	
	@:overload @:public public function noteOff(noteNumber : Int, velocity : Int) : Void;
	
	@:overload @:public public function play(performerIndex : Int, connectionBlocks : java.NativeArray<com.sun.media.sound.ModelConnectionBlock>) : Void;
	
	@:overload @:public public function noteOff(noteNumber : Int) : Void;
	
	@:overload @:public public function setPolyPressure(noteNumber : Int, pressure : Int) : Void;
	
	@:overload @:public public function getPolyPressure(noteNumber : Int) : Int;
	
	@:overload @:public public function setChannelPressure(pressure : Int) : Void;
	
	@:overload @:public public function getChannelPressure() : Int;
	
	@:overload @:protected private function applyInstrumentCustomization() : Void;
	
	@:overload @:public public function mapPolyPressureToDestination(destination : java.NativeArray<Int>, range : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function mapChannelPressureToDestination(destination : java.NativeArray<Int>, range : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function mapControlToDestination(control : Int, destination : java.NativeArray<Int>, range : java.NativeArray<Int>) : Void;
	
	@:overload @:public public function controlChangePerNote(noteNumber : Int, controller : Int, value : Int) : Void;
	
	@:overload @:public public function getControlPerNote(noteNumber : Int, controller : Int) : Int;
	
	@:overload @:public public function controlChange(controller : Int, value : Int) : Void;
	
	@:overload @:public public function getController(controller : Int) : Int;
	
	@:overload @:public public function tuningChange(program : Int) : Void;
	
	@:overload @:public public function tuningChange(bank : Int, program : Int) : Void;
	
	@:overload @:public public function programChange(program : Int) : Void;
	
	@:overload @:public public function programChange(bank : Int, program : Int) : Void;
	
	@:overload @:public public function getProgram() : Int;
	
	@:overload @:public public function setPitchBend(bend : Int) : Void;
	
	@:overload @:public public function getPitchBend() : Int;
	
	@:overload @:public public function nrpnChange(controller : Int, value : Int) : Void;
	
	@:overload @:public public function rpnChange(controller : Int, value : Int) : Void;
	
	@:overload @:public public function resetAllControllers() : Void;
	
	@:overload @:public public function resetAllControllers(allControls : Bool) : Void;
	
	@:overload @:public public function allNotesOff() : Void;
	
	@:overload @:public public function allSoundOff() : Void;
	
	@:overload @:public public function localControl(on : Bool) : Bool;
	
	@:overload @:public public function setMono(on : Bool) : Void;
	
	@:overload @:public public function getMono() : Bool;
	
	@:overload @:public public function setOmni(on : Bool) : Void;
	
	@:overload @:public public function getOmni() : Bool;
	
	@:overload @:public public function setMute(mute : Bool) : Void;
	
	@:overload @:public public function getMute() : Bool;
	
	@:overload @:public public function setSolo(soloState : Bool) : Void;
	
	@:overload @:public public function getSolo() : Bool;
	
	
}
@:native('com$sun$media$sound$SoftChannel$MidiControlObject') @:internal extern class SoftChannel_MidiControlObject implements com.sun.media.sound.SoftControl
{
	@:overload @:public public function get(instance : Int, name : String) : java.NativeArray<Float>;
	
	
}
