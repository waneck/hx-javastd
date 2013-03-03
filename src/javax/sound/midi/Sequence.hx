package javax.sound.midi;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Sequence
{
	/**
	* The tempo-based timing type, for which the resolution is expressed in pulses (ticks) per quarter note.
	* @see #Sequence(float, int)
	*/
	@:public @:static @:final public static var PPQ(default, null) : Single;
	
	/**
	* The SMPTE-based timing type with 24 frames per second (resolution is expressed in ticks per frame).
	* @see #Sequence(float, int)
	*/
	@:public @:static @:final public static var SMPTE_24(default, null) : Single;
	
	/**
	* The SMPTE-based timing type with 25 frames per second (resolution is expressed in ticks per frame).
	* @see #Sequence(float, int)
	*/
	@:public @:static @:final public static var SMPTE_25(default, null) : Single;
	
	/**
	* The SMPTE-based timing type with 29.97 frames per second (resolution is expressed in ticks per frame).
	* @see #Sequence(float, int)
	*/
	@:public @:static @:final public static var SMPTE_30DROP(default, null) : Single;
	
	/**
	* The SMPTE-based timing type with 30 frames per second (resolution is expressed in ticks per frame).
	* @see #Sequence(float, int)
	*/
	@:public @:static @:final public static var SMPTE_30(default, null) : Single;
	
	/**
	* The timing division type of the sequence.
	* @see #PPQ
	* @see #SMPTE_24
	* @see #SMPTE_25
	* @see #SMPTE_30DROP
	* @see #SMPTE_30
	* @see #getDivisionType
	*/
	@:protected private var divisionType : Single;
	
	/**
	* The timing resolution of the sequence.
	* @see #getResolution
	*/
	@:protected private var resolution : Int;
	
	/**
	* The MIDI tracks in this sequence.
	* @see #getTracks
	*/
	@:protected private var tracks : java.util.Vector<javax.sound.midi.Track>;
	
	/**
	* Constructs a new MIDI sequence with the specified timing division
	* type and timing resolution.  The division type must be one of the
	* recognized MIDI timing types.  For tempo-based timing,
	* <code>divisionType</code> is PPQ (pulses per quarter note) and
	* the resolution is specified in ticks per beat.  For SMTPE timing,
	* <code>divisionType</code> specifies the number of frames per
	* second and the resolution is specified in ticks per frame.
	* The sequence will contain no initial tracks.  Tracks may be
	* added to or removed from the sequence using <code>{@link #createTrack}</code>
	* and <code>{@link #deleteTrack}</code>.
	*
	* @param divisionType the timing division type (PPQ or one of the SMPTE types)
	* @param resolution the timing resolution
	* @throws InvalidMidiDataException if <code>divisionType</code> is not valid
	*
	* @see #PPQ
	* @see #SMPTE_24
	* @see #SMPTE_25
	* @see #SMPTE_30DROP
	* @see #SMPTE_30
	* @see #getDivisionType
	* @see #getResolution
	* @see #getTracks
	*/
	@:overload @:public public function new(divisionType : Single, resolution : Int) : Void;
	
	/**
	* Constructs a new MIDI sequence with the specified timing division
	* type, timing resolution, and number of tracks.  The division type must be one of the
	* recognized MIDI timing types.  For tempo-based timing,
	* <code>divisionType</code> is PPQ (pulses per quarter note) and
	* the resolution is specified in ticks per beat.  For SMTPE timing,
	* <code>divisionType</code> specifies the number of frames per
	* second and the resolution is specified in ticks per frame.
	* The sequence will be initialized with the number of tracks specified by
	* <code>numTracks</code>. These tracks are initially empty (i.e.
	* they contain only the meta-event End of Track).
	* The tracks may be retrieved for editing using the <code>{@link #getTracks}</code>
	* method.  Additional tracks may be added, or existing tracks removed,
	* using <code>{@link #createTrack}</code> and <code>{@link #deleteTrack}</code>.
	*
	* @param divisionType the timing division type (PPQ or one of the SMPTE types)
	* @param resolution the timing resolution
	* @param numTracks the initial number of tracks in the sequence.
	* @throws InvalidMidiDataException if <code>divisionType</code> is not valid
	*
	* @see #PPQ
	* @see #SMPTE_24
	* @see #SMPTE_25
	* @see #SMPTE_30DROP
	* @see #SMPTE_30
	* @see #getDivisionType
	* @see #getResolution
	*/
	@:overload @:public public function new(divisionType : Single, resolution : Int, numTracks : Int) : Void;
	
	/**
	* Obtains the timing division type for this sequence.
	* @return the division type (PPQ or one of the SMPTE types)
	*
	* @see #PPQ
	* @see #SMPTE_24
	* @see #SMPTE_25
	* @see #SMPTE_30DROP
	* @see #SMPTE_30
	* @see #Sequence(float, int)
	* @see MidiFileFormat#getDivisionType()
	*/
	@:overload @:public public function getDivisionType() : Single;
	
	/**
	* Obtains the timing resolution for this sequence.
	* If the sequence's division type is PPQ, the resolution is specified in ticks per beat.
	* For SMTPE timing, the resolution is specified in ticks per frame.
	*
	* @return the number of ticks per beat (PPQ) or per frame (SMPTE)
	* @see #getDivisionType
	* @see #Sequence(float, int)
	* @see MidiFileFormat#getResolution()
	*/
	@:overload @:public public function getResolution() : Int;
	
	/**
	* Creates a new, initially empty track as part of this sequence.
	* The track initially contains the meta-event End of Track.
	* The newly created track is returned.  All tracks in the sequence
	* may be retrieved using <code>{@link #getTracks}</code>.  Tracks may be
	* removed from the sequence using <code>{@link #deleteTrack}</code>.
	* @return the newly created track
	*/
	@:overload @:public public function createTrack() : javax.sound.midi.Track;
	
	/**
	* Removes the specified track from the sequence.
	* @param track the track to remove
	* @return <code>true</code> if the track existed in the track and was removed,
	* otherwise <code>false</code>.
	*
	* @see #createTrack
	* @see #getTracks
	*/
	@:overload @:public public function deleteTrack(track : javax.sound.midi.Track) : Bool;
	
	/**
	* Obtains an array containing all the tracks in this sequence.
	* If the sequence contains no tracks, an array of length 0 is returned.
	* @return the array of tracks
	*
	* @see #createTrack
	* @see #deleteTrack
	*/
	@:overload @:public public function getTracks() : java.NativeArray<javax.sound.midi.Track>;
	
	/**
	* Obtains the duration of this sequence, expressed in microseconds.
	* @return this sequence's duration in microseconds.
	*/
	@:overload @:public public function getMicrosecondLength() : haxe.Int64;
	
	/**
	* Obtains the duration of this sequence, expressed in MIDI ticks.
	*
	* @return this sequence's length in ticks
	*
	* @see #getMicrosecondLength
	*/
	@:overload @:public public function getTickLength() : haxe.Int64;
	
	/**
	* Obtains a list of patches referenced in this sequence.
	* This patch list may be used to load the required
	* <code>{@link Instrument}</code> objects
	* into a <code>{@link Synthesizer}</code>.
	*
	* @return an array of <code>{@link Patch}</code> objects used in this sequence
	*
	* @see Synthesizer#loadInstruments(Soundbank, Patch[])
	*/
	@:overload @:public public function getPatchList() : java.NativeArray<javax.sound.midi.Patch>;
	
	
}
