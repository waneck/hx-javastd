package com.sun.media.sound;
/*
* Copyright (c) 2003, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class MidiUtils
{
	/**
	* Some utilities for MIDI (some stuff is used from javax.sound.midi)
	*
	* @author Florian Bomers
	*/
	public static var DEFAULT_TEMPO_MPQ(default, null) : Int;
	
	public static var META_END_OF_TRACK_TYPE(default, null) : Int;
	
	public static var META_TEMPO_TYPE(default, null) : Int;
	
	/** return true if the passed message is Meta End Of Track */
	@:overload public static function isMetaEndOfTrack(midiMsg : javax.sound.midi.MidiMessage) : Bool;
	
	/** return if the given message is a meta tempo message */
	@:overload public static function isMetaTempo(midiMsg : javax.sound.midi.MidiMessage) : Bool;
	
	/** parses this message for a META tempo message and returns
	* the tempo in MPQ, or -1 if this isn't a tempo message
	*/
	@:overload public static function getTempoMPQ(midiMsg : javax.sound.midi.MidiMessage) : Int;
	
	/**
	* converts<br>
	* 1 - MPQ-Tempo to BPM tempo<br>
	* 2 - BPM tempo to MPQ tempo<br>
	*/
	@:overload public static function convertTempo(tempo : Float) : Float;
	
	/**
	* convert tick to microsecond with given tempo.
	* Does not take tempo changes into account.
	* Does not work for SMPTE timing!
	*/
	@:overload public static function ticks2microsec(tick : haxe.Int64, tempoMPQ : Float, resolution : Int) : haxe.Int64;
	
	/**
	* convert tempo to microsecond with given tempo
	* Does not take tempo changes into account.
	* Does not work for SMPTE timing!
	*/
	@:overload public static function microsec2ticks(us : haxe.Int64, tempoMPQ : Float, resolution : Int) : haxe.Int64;
	
	/**
	* Given a tick, convert to microsecond
	* @param cache tempo info and current tempo
	*/
	@:overload public static function tick2microsecond(seq : javax.sound.midi.Sequence, tick : haxe.Int64, cache : com.sun.media.sound.MidiUtils.MidiUtils_TempoCache) : haxe.Int64;
	
	/**
	* Given a microsecond time, convert to tick.
	* returns tempo at the given time in cache.getCurrTempoMPQ
	*/
	@:overload public static function microsecond2tick(seq : javax.sound.midi.Sequence, micros : haxe.Int64, cache : com.sun.media.sound.MidiUtils.MidiUtils_TempoCache) : haxe.Int64;
	
	/**
	* Binary search for the event indexes of the track
	*
	* @param tick - tick number of index to be found in array
	* @return index in track which is on or after "tick".
	*   if no entries are found that follow after tick, track.size() is returned
	*/
	@:overload public static function tick2index(track : javax.sound.midi.Track, tick : haxe.Int64) : Int;
	
	
}
@:native('com$sun$media$sound$MidiUtils$TempoCache') extern class MidiUtils_TempoCache
{
	@:overload public function new() : Void;
	
	@:overload public function new(seq : javax.sound.midi.Sequence) : Void;
	
	@:overload @:synchronized public function refresh(seq : javax.sound.midi.Sequence) : Void;
	
	@:overload public function getCurrTempoMPQ() : Int;
	
	
}
