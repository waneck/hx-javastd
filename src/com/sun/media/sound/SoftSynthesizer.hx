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
extern class SoftSynthesizer implements com.sun.media.sound.AudioSynthesizer implements com.sun.media.sound.ReferenceCountingDevice
{
	@:protected @:static @:final private static var INFO_NAME(default, null) : String;
	
	@:protected @:static @:final private static var INFO_VENDOR(default, null) : String;
	
	@:protected @:static @:final private static var INFO_DESCRIPTION(default, null) : String;
	
	@:protected @:static @:final private static var INFO_VERSION(default, null) : String;
	
	@:protected @:final @:static private static var info(default, null) : javax.sound.midi.MidiDevice.MidiDevice_Info;
	
	@:protected private var weakstream : com.sun.media.sound.SoftSynthesizer.SoftSynthesizer_WeakAudioStream;
	
	@:protected private var control_mutex : Dynamic;
	
	@:protected private var voiceIDCounter : Int;
	
	@:protected private var voice_allocation_mode : Int;
	
	@:protected private var load_default_soundbank : Bool;
	
	@:protected private var reverb_light : Bool;
	
	@:protected private var reverb_on : Bool;
	
	@:protected private var chorus_on : Bool;
	
	@:protected private var agc_on : Bool;
	
	@:protected private var channels : java.NativeArray<com.sun.media.sound.SoftChannel>;
	
	@:protected private var external_channels : java.NativeArray<com.sun.media.sound.SoftChannelProxy>;
	
	@:overload @:protected private function removeReceiver(recv : javax.sound.midi.Receiver) : Void;
	
	@:overload @:protected private function getMainMixer() : com.sun.media.sound.SoftMainMixer;
	
	@:overload @:protected private function findInstrument(program : Int, bank : Int, channel : Int) : com.sun.media.sound.SoftInstrument;
	
	@:overload @:protected private function getVoiceAllocationMode() : Int;
	
	@:overload @:protected private function getGeneralMidiMode() : Int;
	
	@:overload @:protected private function setGeneralMidiMode(gmmode : Int) : Void;
	
	@:overload @:protected private function getDeviceID() : Int;
	
	@:overload @:protected private function getControlRate() : Single;
	
	@:overload @:protected private function getVoices() : java.NativeArray<com.sun.media.sound.SoftVoice>;
	
	@:overload @:protected private function getTuning(patch : javax.sound.midi.Patch) : com.sun.media.sound.SoftTuning;
	
	@:overload @:public public function getLatency() : haxe.Int64;
	
	@:overload @:public public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload @:public public function getMaxPolyphony() : Int;
	
	@:overload @:public public function getChannels() : java.NativeArray<javax.sound.midi.MidiChannel>;
	
	@:overload @:public public function getVoiceStatus() : java.NativeArray<javax.sound.midi.VoiceStatus>;
	
	@:overload @:public public function isSoundbankSupported(soundbank : javax.sound.midi.Soundbank) : Bool;
	
	@:overload @:public public function loadInstrument(instrument : javax.sound.midi.Instrument) : Bool;
	
	@:overload @:public public function unloadInstrument(instrument : javax.sound.midi.Instrument) : Void;
	
	@:overload @:public public function remapInstrument(from : javax.sound.midi.Instrument, to : javax.sound.midi.Instrument) : Bool;
	
	@:overload @:public public function getDefaultSoundbank() : javax.sound.midi.Soundbank;
	
	@:overload @:public public function getAvailableInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	@:overload @:public public function getLoadedInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	@:overload @:public public function loadAllInstruments(soundbank : javax.sound.midi.Soundbank) : Bool;
	
	@:overload @:public public function unloadAllInstruments(soundbank : javax.sound.midi.Soundbank) : Void;
	
	@:overload @:public public function loadInstruments(soundbank : javax.sound.midi.Soundbank, patchList : java.NativeArray<javax.sound.midi.Patch>) : Bool;
	
	@:overload @:public public function unloadInstruments(soundbank : javax.sound.midi.Soundbank, patchList : java.NativeArray<javax.sound.midi.Patch>) : Void;
	
	@:overload @:public public function getDeviceInfo() : javax.sound.midi.MidiDevice.MidiDevice_Info;
	
	@:overload @:public public function getPropertyInfo(info : java.util.Map<String, Dynamic>) : java.NativeArray<com.sun.media.sound.AudioSynthesizerPropertyInfo>;
	
	@:overload @:public public function open() : Void;
	
	@:overload @:public public function open(line : javax.sound.sampled.SourceDataLine, info : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:public public function openStream(targetFormat : javax.sound.sampled.AudioFormat, info : java.util.Map<String, Dynamic>) : javax.sound.sampled.AudioInputStream;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function isOpen() : Bool;
	
	@:overload @:public public function getMicrosecondPosition() : haxe.Int64;
	
	@:overload @:public public function getMaxReceivers() : Int;
	
	@:overload @:public public function getMaxTransmitters() : Int;
	
	@:overload @:public public function getReceiver() : javax.sound.midi.Receiver;
	
	@:overload @:public public function getReceivers() : java.util.List<javax.sound.midi.Receiver>;
	
	@:overload @:public public function getTransmitter() : javax.sound.midi.Transmitter;
	
	@:overload @:public public function getTransmitters() : java.util.List<javax.sound.midi.Transmitter>;
	
	@:overload @:public public function getReceiverReferenceCounting() : javax.sound.midi.Receiver;
	
	@:overload @:public public function getTransmitterReferenceCounting() : javax.sound.midi.Transmitter;
	
	
}
/**
* The software synthesizer class.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$SoftSynthesizer$WeakAudioStream') extern class SoftSynthesizer_WeakAudioStream extends java.io.InputStream
{
	@:public public var pusher : com.sun.media.sound.SoftAudioPusher;
	
	@:public public var jitter_stream : javax.sound.sampled.AudioInputStream;
	
	@:public public var sourceDataLine : javax.sound.sampled.SourceDataLine;
	
	@:public @:volatile public var silent_samples : haxe.Int64;
	
	@:overload @:public public function setInputStream(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload @:public override public function available() : Int;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public public function new(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload @:public public function getAudioInputStream() : javax.sound.sampled.AudioInputStream;
	
	@:overload @:public override public function close() : Void;
	
	
}
@:native('com$sun$media$sound$SoftSynthesizer$Info') @:internal extern class SoftSynthesizer_Info extends javax.sound.midi.MidiDevice.MidiDevice_Info
{
	@:overload @:public public function new() : Void;
	
	
}
