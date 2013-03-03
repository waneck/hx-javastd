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
extern class SoftVoice extends javax.sound.midi.VoiceStatus
{
	/**
	* Software synthesizer voice class.
	*
	* @author Karl Helgason
	*/
	@:public public var exclusiveClass : Int;
	
	@:public public var releaseTriggered : Bool;
	
	@:protected private var channelmixer : com.sun.media.sound.ModelChannelMixer;
	
	@:protected private var tunedKey : Float;
	
	@:protected private var tuning : com.sun.media.sound.SoftTuning;
	
	@:protected private var stealer_channel : com.sun.media.sound.SoftChannel;
	
	@:protected private var stealer_extendedConnectionBlocks : java.NativeArray<com.sun.media.sound.ModelConnectionBlock>;
	
	@:protected private var stealer_performer : com.sun.media.sound.SoftPerformer;
	
	@:protected private var stealer_channelmixer : com.sun.media.sound.ModelChannelMixer;
	
	@:protected private var stealer_voiceID : Int;
	
	@:protected private var stealer_noteNumber : Int;
	
	@:protected private var stealer_velocity : Int;
	
	@:protected private var stealer_releaseTriggered : Bool;
	
	@:protected private var voiceID : Int;
	
	@:protected private var sustain : Bool;
	
	@:protected private var sostenuto : Bool;
	
	@:protected private var portamento : Bool;
	
	@:protected private var objects : java.util.Map<String, com.sun.media.sound.SoftControl>;
	
	@:protected private var synthesizer : com.sun.media.sound.SoftSynthesizer;
	
	@:protected private var instrument : com.sun.media.sound.SoftInstrument;
	
	@:protected private var performer : com.sun.media.sound.SoftPerformer;
	
	@:protected private var softchannel : com.sun.media.sound.SoftChannel;
	
	@:protected private var on : Bool;
	
	@:protected private var extendedConnectionBlocks : java.NativeArray<com.sun.media.sound.ModelConnectionBlock>;
	
	@:protected private var co_noteon_keynumber : java.NativeArray<Float>;
	
	@:protected private var co_noteon_velocity : java.NativeArray<Float>;
	
	@:protected private var co_noteon_on : java.NativeArray<Float>;
	
	@:protected private var resampler : com.sun.media.sound.SoftResamplerStreamer;
	
	@:overload @:public public function new(synth : com.sun.media.sound.SoftSynthesizer) : Void;
	
	@:overload @:protected private function updateTuning(newtuning : com.sun.media.sound.SoftTuning) : Void;
	
	@:overload @:protected private function setNote(noteNumber : Int) : Void;
	
	@:overload @:protected private function noteOn(noteNumber : Int, velocity : Int, delay : Int) : Void;
	
	@:overload @:protected private function setPolyPressure(pressure : Int) : Void;
	
	@:overload @:protected private function setChannelPressure(pressure : Int) : Void;
	
	@:overload @:protected private function controlChange(controller : Int, value : Int) : Void;
	
	@:overload @:protected private function nrpnChange(controller : Int, value : Int) : Void;
	
	@:overload @:protected private function rpnChange(controller : Int, value : Int) : Void;
	
	@:overload @:protected private function setPitchBend(bend : Int) : Void;
	
	@:overload @:protected private function setMute(mute : Bool) : Void;
	
	@:overload @:protected private function setSoloMute(mute : Bool) : Void;
	
	@:overload @:protected private function shutdown() : Void;
	
	@:overload @:protected private function soundOff() : Void;
	
	@:overload @:protected private function noteOff(velocity : Int) : Void;
	
	@:overload @:protected private function redamp() : Void;
	
	@:overload @:protected private function processControlLogic() : Void;
	
	@:overload @:protected private function mixAudioStream(_in : com.sun.media.sound.SoftAudioBuffer, out : com.sun.media.sound.SoftAudioBuffer, dout : com.sun.media.sound.SoftAudioBuffer, amp_from : Single, amp_to : Single) : Void;
	
	@:overload @:protected private function processAudioLogic(buffer : java.NativeArray<com.sun.media.sound.SoftAudioBuffer>) : Void;
	
	
}
