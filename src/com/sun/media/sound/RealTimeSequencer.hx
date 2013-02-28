package com.sun.media.sound;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* A Real Time Sequencer
*
* @author Florian Bomers
*/
/* TODO:
* - rename PlayThread to PlayEngine (because isn't a thread)
*/
@:internal extern class RealTimeSequencer extends com.sun.media.sound.AbstractMidiDevice implements javax.sound.midi.Sequencer implements com.sun.media.sound.AutoConnectSequencer
{
	/* ****************************** CONSTRUCTOR ****************************** */
	@:overload private function new() : Void;
	
	/* ****************************** SEQUENCER METHODS ******************** */
	@:overload @:synchronized public function setSequence(sequence : javax.sound.midi.Sequence) : Void;
	
	@:overload @:synchronized public function setSequence(stream : java.io.InputStream) : Void;
	
	@:overload public function getSequence() : javax.sound.midi.Sequence;
	
	@:overload @:synchronized public function start() : Void;
	
	@:overload @:synchronized public function stop() : Void;
	
	@:overload public function isRunning() : Bool;
	
	@:overload public function startRecording() : Void;
	
	@:overload public function stopRecording() : Void;
	
	@:overload public function isRecording() : Bool;
	
	@:overload public function recordEnable(track : javax.sound.midi.Track, channel : Int) : Void;
	
	@:overload public function recordDisable(track : javax.sound.midi.Track) : Void;
	
	@:overload public function getTempoInBPM() : Single;
	
	@:overload public function setTempoInBPM(bpm : Single) : Void;
	
	@:overload public function getTempoInMPQ() : Single;
	
	@:overload public function setTempoInMPQ(mpq : Single) : Void;
	
	@:overload public function setTempoFactor(factor : Single) : Void;
	
	@:overload public function getTempoFactor() : Single;
	
	@:overload public function getTickLength() : haxe.Int64;
	
	@:overload @:synchronized public function getTickPosition() : haxe.Int64;
	
	@:overload @:synchronized public function setTickPosition(tick : haxe.Int64) : Void;
	
	@:overload public function getMicrosecondLength() : haxe.Int64;
	
	@:overload override public function getMicrosecondPosition() : haxe.Int64;
	
	@:overload public function setMicrosecondPosition(microseconds : haxe.Int64) : Void;
	
	@:overload public function setMasterSyncMode(sync : javax.sound.midi.Sequencer.Sequencer_SyncMode) : Void;
	
	@:overload public function getMasterSyncMode() : javax.sound.midi.Sequencer.Sequencer_SyncMode;
	
	@:overload public function getMasterSyncModes() : java.NativeArray<javax.sound.midi.Sequencer.Sequencer_SyncMode>;
	
	@:overload public function setSlaveSyncMode(sync : javax.sound.midi.Sequencer.Sequencer_SyncMode) : Void;
	
	@:overload public function getSlaveSyncMode() : javax.sound.midi.Sequencer.Sequencer_SyncMode;
	
	@:overload public function getSlaveSyncModes() : java.NativeArray<javax.sound.midi.Sequencer.Sequencer_SyncMode>;
	
	@:overload private function getTrackCount() : Int;
	
	@:overload @:synchronized public function setTrackMute(track : Int, mute : Bool) : Void;
	
	@:overload @:synchronized public function getTrackMute(track : Int) : Bool;
	
	@:overload @:synchronized public function setTrackSolo(track : Int, solo : Bool) : Void;
	
	@:overload @:synchronized public function getTrackSolo(track : Int) : Bool;
	
	@:overload public function addMetaEventListener(listener : javax.sound.midi.MetaEventListener) : Bool;
	
	@:overload public function removeMetaEventListener(listener : javax.sound.midi.MetaEventListener) : Void;
	
	@:overload public function addControllerEventListener(listener : javax.sound.midi.ControllerEventListener, controllers : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload public function removeControllerEventListener(listener : javax.sound.midi.ControllerEventListener, controllers : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	@:overload public function setLoopStartPoint(tick : haxe.Int64) : Void;
	
	@:overload public function getLoopStartPoint() : haxe.Int64;
	
	@:overload public function setLoopEndPoint(tick : haxe.Int64) : Void;
	
	@:overload public function getLoopEndPoint() : haxe.Int64;
	
	@:overload public function setLoopCount(count : Int) : Void;
	
	@:overload public function getLoopCount() : Int;
	
	/*
	*/
	@:overload override private function implOpen() : Void;
	
	@:overload @:synchronized override private function implClose() : Void;
	
	@:overload private function implStart() : Void;
	
	@:overload private function implStop() : Void;
	
	/**
	* Send midi player events.
	* must not be synchronized on "this"
	*/
	@:overload private function sendMetaEvents(message : javax.sound.midi.MidiMessage) : Void;
	
	/**
	* Send midi player events.
	*/
	@:overload private function sendControllerEvents(message : javax.sound.midi.MidiMessage) : Void;
	
	@:overload override private function hasReceivers() : Bool;
	
	@:overload override private function createReceiver() : javax.sound.midi.Receiver;
	
	@:overload override private function hasTransmitters() : Bool;
	
	@:overload override private function createTransmitter() : javax.sound.midi.Transmitter;
	
	@:overload public function setAutoConnect(autoConnectedReceiver : javax.sound.midi.Receiver) : Void;
	
	
}
/**
* An own class to distinguish the class name from
* the transmitter of other devices
*/
@:native('com$sun$media$sound$RealTimeSequencer$SequencerTransmitter') @:internal extern class RealTimeSequencer_SequencerTransmitter extends com.sun.media.sound.AbstractMidiDevice.AbstractMidiDevice_BasicTransmitter
{
	
}
@:native('com$sun$media$sound$RealTimeSequencer$SequencerReceiver') @:internal extern class RealTimeSequencer_SequencerReceiver extends com.sun.media.sound.AbstractMidiDevice.AbstractMidiDevice_AbstractReceiver
{
	@:overload override private function implSend(message : javax.sound.midi.MidiMessage, timeStamp : haxe.Int64) : Void;
	
	
}
@:native('com$sun$media$sound$RealTimeSequencer$RealTimeSequencerInfo') @:internal extern class RealTimeSequencer_RealTimeSequencerInfo extends javax.sound.midi.MidiDevice.MidiDevice_Info
{
	
}
@:native('com$sun$media$sound$RealTimeSequencer$ControllerListElement') @:internal extern class RealTimeSequencer_ControllerListElement
{
	
}
@:native('com$sun$media$sound$RealTimeSequencer$RecordingTrack') @:internal extern class RealTimeSequencer_RecordingTrack
{
	
}
@:native('com$sun$media$sound$RealTimeSequencer$PlayThread') @:internal extern class RealTimeSequencer_PlayThread implements java.lang.Runnable
{
	/**
	* Main process loop driving the media flow.
	*
	* Make sure to NOT synchronize on RealTimeSequencer
	* anywhere here (even implicit). That is a sure deadlock!
	*/
	@:overload public function run() : Void;
	
	
}
/**
* class that does the actual dispatching of events,
* used to be in native in MMAPI
*/
@:native('com$sun$media$sound$RealTimeSequencer$DataPump') @:internal extern class RealTimeSequencer_DataPump
{
	
}
