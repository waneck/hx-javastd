package javax.sound.midi;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Track
{
	/**
	* Adds a new event to the track.  However, if the event is already
	* contained in the track, it is not added again.  The list of events
	* is kept in time order, meaning that this event inserted at the
	* appropriate place in the list, not necessarily at the end.
	*
	* @param event the event to add
	* @return <code>true</code> if the event did not already exist in the
	* track and was added, otherwise <code>false</code>
	*/
	@:overload @:public public function add(event : javax.sound.midi.MidiEvent) : Bool;
	
	/**
	* Removes the specified event from the track.
	* @param event the event to remove
	* @return <code>true</code> if the event existed in the track and was removed,
	* otherwise <code>false</code>
	*/
	@:overload @:public public function remove(event : javax.sound.midi.MidiEvent) : Bool;
	
	/**
	* Obtains the event at the specified index.
	* @param index the location of the desired event in the event vector
	* @throws <code>ArrayIndexOutOfBoundsException</code>  if the
	* specified index is negative or not less than the current size of
	* this track.
	* @see #size
	*/
	@:overload @:public public function get(index : Int) : javax.sound.midi.MidiEvent;
	
	/**
	* Obtains the number of events in this track.
	* @return the size of the track's event vector
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Obtains the length of the track, expressed in MIDI ticks.  (The
	* duration of a tick in seconds is determined by the timing resolution
	* of the <code>Sequence</code> containing this track, and also by
	* the tempo of the music as set by the sequencer.)
	* @return the duration, in ticks
	* @see Sequence#Sequence(float, int)
	* @see Sequencer#setTempoInBPM(float)
	* @see Sequencer#getTickPosition()
	*/
	@:overload @:public public function ticks() : haxe.Int64;
	
	
}
@:native('javax$sound$midi$Track$ImmutableEndOfTrack') @:internal extern class Track_ImmutableEndOfTrack extends javax.sound.midi.MetaMessage
{
	@:overload @:public override public function setMessage(type : Int, data : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	
}
