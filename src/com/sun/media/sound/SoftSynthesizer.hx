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
	private static var INFO_NAME(default, null) : String;
	
	private static var INFO_VENDOR(default, null) : String;
	
	private static var INFO_DESCRIPTION(default, null) : String;
	
	private static var INFO_VERSION(default, null) : String;
	
	private static var info(default, null) : javax.sound.midi.MidiDevice.MidiDevice_Info;
	
	private var weakstream : SoftSynthesizer_WeakAudioStream;
	
	private var control_mutex : Dynamic;
	
	private var voiceIDCounter : Int;
	
	private var voice_allocation_mode : Int;
	
	private var load_default_soundbank : Bool;
	
	private var reverb_light : Bool;
	
	private var reverb_on : Bool;
	
	private var chorus_on : Bool;
	
	private var agc_on : Bool;
	
	private var channels : java.NativeArray<com.sun.media.sound.SoftChannel>;
	
	private var external_channels : java.NativeArray<com.sun.media.sound.SoftChannelProxy>;
	
	@:overload private function removeReceiver(recv : javax.sound.midi.Receiver) : Void;
	
	@:overload private function getMainMixer() : com.sun.media.sound.SoftMainMixer;
	
	@:overload private function findInstrument(program : Int, bank : Int, channel : Int) : com.sun.media.sound.SoftInstrument;
	
	@:overload private function getVoiceAllocationMode() : Int;
	
	@:overload private function getGeneralMidiMode() : Int;
	
	@:overload private function setGeneralMidiMode(gmmode : Int) : Void;
	
	@:overload private function getDeviceID() : Int;
	
	@:overload private function getControlRate() : Single;
	
	@:overload private function getVoices() : java.NativeArray<com.sun.media.sound.SoftVoice>;
	
	@:overload private function getTuning(patch : javax.sound.midi.Patch) : com.sun.media.sound.SoftTuning;
	
	@:overload public function getLatency() : haxe.Int64;
	
	@:overload public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload public function getMaxPolyphony() : Int;
	
	@:overload public function getChannels() : java.NativeArray<javax.sound.midi.MidiChannel>;
	
	@:overload public function getVoiceStatus() : java.NativeArray<javax.sound.midi.VoiceStatus>;
	
	@:overload public function isSoundbankSupported(soundbank : javax.sound.midi.Soundbank) : Bool;
	
	@:overload public function loadInstrument(instrument : javax.sound.midi.Instrument) : Bool;
	
	@:overload public function unloadInstrument(instrument : javax.sound.midi.Instrument) : Void;
	
	@:overload public function remapInstrument(from : javax.sound.midi.Instrument, to : javax.sound.midi.Instrument) : Bool;
	
	@:overload public function getDefaultSoundbank() : javax.sound.midi.Soundbank;
	
	@:overload public function getAvailableInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	@:overload public function getLoadedInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	@:overload public function loadAllInstruments(soundbank : javax.sound.midi.Soundbank) : Bool;
	
	@:overload public function unloadAllInstruments(soundbank : javax.sound.midi.Soundbank) : Void;
	
	@:overload public function loadInstruments(soundbank : javax.sound.midi.Soundbank, patchList : java.NativeArray<javax.sound.midi.Patch>) : Bool;
	
	@:overload public function unloadInstruments(soundbank : javax.sound.midi.Soundbank, patchList : java.NativeArray<javax.sound.midi.Patch>) : Void;
	
	@:overload public function getDeviceInfo() : javax.sound.midi.MidiDevice.MidiDevice_Info;
	
	@:overload public function getPropertyInfo(info : java.util.Map<String, Dynamic>) : java.NativeArray<com.sun.media.sound.AudioSynthesizerPropertyInfo>;
	
	@:overload public function open() : Void;
	
	@:overload public function open(line : javax.sound.sampled.SourceDataLine, info : java.util.Map<String, Dynamic>) : Void;
	
	@:overload public function openStream(targetFormat : javax.sound.sampled.AudioFormat, info : java.util.Map<String, Dynamic>) : javax.sound.sampled.AudioInputStream;
	
	@:overload public function close() : Void;
	
	@:overload public function isOpen() : Bool;
	
	@:overload public function getMicrosecondPosition() : haxe.Int64;
	
	@:overload public function getMaxReceivers() : Int;
	
	@:overload public function getMaxTransmitters() : Int;
	
	@:overload public function getReceiver() : javax.sound.midi.Receiver;
	
	@:overload public function getReceivers() : java.util.List<javax.sound.midi.Receiver>;
	
	@:overload public function getTransmitter() : javax.sound.midi.Transmitter;
	
	@:overload public function getTransmitters() : java.util.List<javax.sound.midi.Transmitter>;
	
	@:overload public function getReceiverReferenceCounting() : javax.sound.midi.Receiver;
	
	@:overload public function getTransmitterReferenceCounting() : javax.sound.midi.Transmitter;
	
	
}
/**
* The software synthesizer class.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$SoftSynthesizer$WeakAudioStream') extern class SoftSynthesizer_WeakAudioStream extends java.io.InputStream
{
	public var pusher : com.sun.media.sound.SoftAudioPusher;
	
	public var jitter_stream : javax.sound.sampled.AudioInputStream;
	
	public var sourceDataLine : javax.sound.sampled.SourceDataLine;
	
	@:volatile public var silent_samples : haxe.Int64;
	
	@:overload public function setInputStream(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload override public function available() : Int;
	
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload public function new(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload public function getAudioInputStream() : javax.sound.sampled.AudioInputStream;
	
	@:overload override public function close() : Void;
	
	
}
@:native('com$sun$media$sound$SoftSynthesizer$Info') @:internal extern class SoftSynthesizer_Info extends javax.sound.midi.MidiDevice.MidiDevice_Info
{
	@:overload public function new() : Void;
	
	
}
