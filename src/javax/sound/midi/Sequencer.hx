package javax.sound.midi;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface Sequencer extends javax.sound.midi.MidiDevice
{
	/**
	* Sets the current sequence on which the sequencer operates.
	*
	* <p>This method can be called even if the
	* <code>Sequencer</code> is closed.
	*
	* @param sequence the sequence to be loaded.
	* @throws InvalidMidiDataException if the sequence contains invalid
	* MIDI data, or is not supported.
	*/
	@:overload public function setSequence(sequence : javax.sound.midi.Sequence) : Void;
	
	/**
	* Sets the current sequence on which the sequencer operates.
	* The stream must point to MIDI file data.
	*
	* <p>This method can be called even if the
	* <code>Sequencer</code> is closed.
	*
	* @param stream stream containing MIDI file data.
	* @throws IOException if an I/O exception occurs during reading of the stream.
	* @throws InvalidMidiDataException if invalid data is encountered
	* in the stream, or the stream is not supported.
	*/
	@:overload public function setSequence(stream : java.io.InputStream) : Void;
	
	/**
	* Obtains the sequence on which the Sequencer is currently operating.
	*
	* <p>This method can be called even if the
	* <code>Sequencer</code> is closed.
	*
	* @return the current sequence, or <code>null</code> if no sequence is currently set.
	*/
	@:overload public function getSequence() : javax.sound.midi.Sequence;
	
	/**
	* Starts playback of the MIDI data in the currently
	* loaded sequence.
	* Playback will begin from the current position.
	* If the playback position reaches the loop end point,
	* and the loop count is greater than 0, playback will
	* resume at the loop start point for the number of
	* repetitions set with <code>setLoopCount</code>.
	* After that, or if the loop count is 0, playback will
	* continue to play to the end of the sequence.
	*
	* <p>The implementation ensures that the synthesizer
	* is brought to a consistent state when jumping
	* to the loop start point by sending appropriate
	* controllers, pitch bend, and program change events.
	*
	* @throws IllegalStateException if the <code>Sequencer</code> is
	* closed.
	*
	* @see #setLoopStartPoint
	* @see #setLoopEndPoint
	* @see #setLoopCount
	* @see #stop
	*/
	@:overload public function start() : Void;
	
	/**
	* Stops recording, if active, and playback of the currently loaded sequence,
	* if any.
	*
	* @throws IllegalStateException if the <code>Sequencer</code> is
	* closed.
	*
	* @see #start
	* @see #isRunning
	*/
	@:overload public function stop() : Void;
	
	/**
	* Indicates whether the Sequencer is currently running.  The default is <code>false</code>.
	* The Sequencer starts running when either <code>{@link #start}</code> or <code>{@link #startRecording}</code>
	* is called.  <code>isRunning</code> then returns <code>true</code> until playback of the
	* sequence completes or <code>{@link #stop}</code> is called.
	* @return <code>true</code> if the Sequencer is running, otherwise <code>false</code>
	*/
	@:overload public function isRunning() : Bool;
	
	/**
	* Starts recording and playback of MIDI data.  Data is recorded to all enabled tracks,
	* on the channel(s) for which they were enabled.  Recording begins at the current position
	* of the sequencer.   Any events already in the track are overwritten for the duration
	* of the recording session.  Events from the currently loaded sequence,
	* if any, are delivered to the sequencer's transmitter(s) along with messages
	* received during recording.
	* <p>
	* Note that tracks are not by default enabled for recording.  In order to record MIDI data,
	* at least one track must be specifically enabled for recording.
	*
	* @throws IllegalStateException if the <code>Sequencer</code> is
	* closed.
	*
	* @see #startRecording
	* @see #recordEnable
	* @see #recordDisable
	*/
	@:overload public function startRecording() : Void;
	
	/**
	* Stops recording, if active.  Playback of the current sequence continues.
	*
	* @throws IllegalStateException if the <code>Sequencer</code> is
	* closed.
	*
	* @see #startRecording
	* @see #isRecording
	*/
	@:overload public function stopRecording() : Void;
	
	/**
	* Indicates whether the Sequencer is currently recording.  The default is <code>false</code>.
	* The Sequencer begins recording when <code>{@link #startRecording}</code> is called,
	* and then returns <code>true</code> until <code>{@link #stop}</code> or <code>{@link #stopRecording}</code>
	* is called.
	* @return <code>true</code> if the Sequencer is recording, otherwise <code>false</code>
	*/
	@:overload public function isRecording() : Bool;
	
	/**
	* Prepares the specified track for recording events received on a particular channel.
	* Once enabled, a track will receive events when recording is active.
	* @param track the track to which events will be recorded
	* @param channel the channel on which events will be received.  If -1 is specified
	* for the channel value, the track will receive data from all channels.
	* @throws IllegalArgumentException thrown if the track is not part of the current
	* sequence.
	*/
	@:overload public function recordEnable(track : javax.sound.midi.Track, channel : Int) : Void;
	
	/**
	* Disables recording to the specified track.  Events will no longer be recorded
	* into this track.
	* @param track the track to disable for recording, or <code>null</code> to disable
	* recording for all tracks.
	*/
	@:overload public function recordDisable(track : javax.sound.midi.Track) : Void;
	
	/**
	* Obtains the current tempo, expressed in beats per minute.  The
	* actual tempo of playback is the product of the returned value
	* and the tempo factor.
	*
	* @return the current tempo in beats per minute
	*
	* @see #getTempoFactor
	* @see #setTempoInBPM(float)
	* @see #getTempoInMPQ
	*/
	@:overload public function getTempoInBPM() : Single;
	
	/**
	* Sets the tempo in beats per minute.   The actual tempo of playback
	* is the product of the specified value and the tempo factor.
	*
	* @param bpm desired new tempo in beats per minute
	* @see #getTempoFactor
	* @see #setTempoInMPQ(float)
	* @see #getTempoInBPM
	*/
	@:overload public function setTempoInBPM(bpm : Single) : Void;
	
	/**
	* Obtains the current tempo, expressed in microseconds per quarter
	* note.  The actual tempo of playback is the product of the returned
	* value and the tempo factor.
	*
	* @return the current tempo in microseconds per quarter note
	* @see #getTempoFactor
	* @see #setTempoInMPQ(float)
	* @see #getTempoInBPM
	*/
	@:overload public function getTempoInMPQ() : Single;
	
	/**
	* Sets the tempo in microseconds per quarter note.  The actual tempo
	* of playback is the product of the specified value and the tempo
	* factor.
	*
	* @param mpq desired new tempo in microseconds per quarter note.
	* @see #getTempoFactor
	* @see #setTempoInBPM(float)
	* @see #getTempoInMPQ
	*/
	@:overload public function setTempoInMPQ(mpq : Single) : Void;
	
	/**
	* Scales the sequencer's actual playback tempo by the factor provided.
	* The default is 1.0.  A value of 1.0 represents the natural rate (the
	* tempo specified in the sequence), 2.0 means twice as fast, etc.
	* The tempo factor does not affect the values returned by
	* <code>{@link #getTempoInMPQ}</code> and <code>{@link #getTempoInBPM}</code>.
	* Those values indicate the tempo prior to scaling.
	* <p>
	* Note that the tempo factor cannot be adjusted when external
	* synchronization is used.  In that situation,
	* <code>setTempoFactor</code> always sets the tempo factor to 1.0.
	*
	* @param factor the requested tempo scalar
	* @see #getTempoFactor
	*/
	@:overload public function setTempoFactor(factor : Single) : Void;
	
	/**
	* Returns the current tempo factor for the sequencer.  The default is
	* 1.0.
	*
	* @return tempo factor.
	* @see #setTempoFactor(float)
	*/
	@:overload public function getTempoFactor() : Single;
	
	/**
	* Obtains the length of the current sequence, expressed in MIDI ticks,
	* or 0 if no sequence is set.
	* @return length of the sequence in ticks
	*/
	@:overload public function getTickLength() : haxe.Int64;
	
	/**
	* Obtains the current position in the sequence, expressed in MIDI
	* ticks.  (The duration of a tick in seconds is determined both by
	* the tempo and by the timing resolution stored in the
	* <code>{@link Sequence}</code>.)
	*
	* @return current tick
	* @see #setTickPosition
	*/
	@:overload public function getTickPosition() : haxe.Int64;
	
	/**
	* Sets the current sequencer position in MIDI ticks
	* @param tick the desired tick position
	* @see #getTickPosition
	*/
	@:overload public function setTickPosition(tick : haxe.Int64) : Void;
	
	/**
	* Obtains the length of the current sequence, expressed in microseconds,
	* or 0 if no sequence is set.
	* @return length of the sequence in microseconds.
	*/
	@:overload public function getMicrosecondLength() : haxe.Int64;
	
	/**
	* Obtains the current position in the sequence, expressed in
	* microseconds.
	* @return the current position in microseconds
	* @see #setMicrosecondPosition
	*/
	@:overload public function getMicrosecondPosition() : haxe.Int64;
	
	/**
	* Sets the current position in the sequence, expressed in microseconds
	* @param microseconds desired position in microseconds
	* @see #getMicrosecondPosition
	*/
	@:overload public function setMicrosecondPosition(microseconds : haxe.Int64) : Void;
	
	/**
	* Sets the source of timing information used by this sequencer.
	* The sequencer synchronizes to the master, which is the internal clock,
	* MIDI clock, or MIDI time code, depending on the value of
	* <code>sync</code>.  The <code>sync</code> argument must be one
	* of the supported modes, as returned by
	* <code>{@link #getMasterSyncModes}</code>.
	*
	* @param sync the desired master synchronization mode
	*
	* @see SyncMode#INTERNAL_CLOCK
	* @see SyncMode#MIDI_SYNC
	* @see SyncMode#MIDI_TIME_CODE
	* @see #getMasterSyncMode
	*/
	@:overload public function setMasterSyncMode(sync : Sequencer_SyncMode) : Void;
	
	/**
	* Obtains the current master synchronization mode for this sequencer.
	*
	* @return the current master synchronization mode
	*
	* @see #setMasterSyncMode(Sequencer.SyncMode)
	* @see #getMasterSyncModes
	*/
	@:overload public function getMasterSyncMode() : Sequencer_SyncMode;
	
	/**
	* Obtains the set of master synchronization modes supported by this
	* sequencer.
	*
	* @return the available master synchronization modes
	*
	* @see SyncMode#INTERNAL_CLOCK
	* @see SyncMode#MIDI_SYNC
	* @see SyncMode#MIDI_TIME_CODE
	* @see #getMasterSyncMode
	* @see #setMasterSyncMode(Sequencer.SyncMode)
	*/
	@:overload public function getMasterSyncModes() : java.NativeArray<Sequencer_SyncMode>;
	
	/**
	* Sets the slave synchronization mode for the sequencer.
	* This indicates the type of timing information sent by the sequencer
	* to its receiver.  The <code>sync</code> argument must be one
	* of the supported modes, as returned by
	* <code>{@link #getSlaveSyncModes}</code>.
	*
	* @param sync the desired slave synchronization mode
	*
	* @see SyncMode#MIDI_SYNC
	* @see SyncMode#MIDI_TIME_CODE
	* @see SyncMode#NO_SYNC
	* @see #getSlaveSyncModes
	*/
	@:overload public function setSlaveSyncMode(sync : Sequencer_SyncMode) : Void;
	
	/**
	* Obtains the current slave synchronization mode for this sequencer.
	*
	* @return the current slave synchronization mode
	*
	* @see #setSlaveSyncMode(Sequencer.SyncMode)
	* @see #getSlaveSyncModes
	*/
	@:overload public function getSlaveSyncMode() : Sequencer_SyncMode;
	
	/**
	* Obtains the set of slave synchronization modes supported by the sequencer.
	*
	* @return the available slave synchronization modes
	*
	* @see SyncMode#MIDI_SYNC
	* @see SyncMode#MIDI_TIME_CODE
	* @see SyncMode#NO_SYNC
	*/
	@:overload public function getSlaveSyncModes() : java.NativeArray<Sequencer_SyncMode>;
	
	/**
	* Sets the mute state for a track.  This method may fail for a number
	* of reasons.  For example, the track number specified may not be valid
	* for the current sequence, or the sequencer may not support this functionality.
	* An application which needs to verify whether this operation succeeded should
	* follow this call with a call to <code>{@link #getTrackMute}</code>.
	*
	* @param track the track number.  Tracks in the current sequence are numbered
	* from 0 to the number of tracks in the sequence minus 1.
	* @param mute the new mute state for the track.  <code>true</code> implies the
	* track should be muted, <code>false</code> implies the track should be unmuted.
	* @see #getSequence
	*/
	@:overload public function setTrackMute(track : Int, mute : Bool) : Void;
	
	/**
	* Obtains the current mute state for a track.  The default mute
	* state for all tracks which have not been muted is false.  In any
	* case where the specified track has not been muted, this method should
	* return false.  This applies if the sequencer does not support muting
	* of tracks, and if the specified track index is not valid.
	*
	* @param track the track number.  Tracks in the current sequence are numbered
	* from 0 to the number of tracks in the sequence minus 1.
	* @return <code>true</code> if muted, <code>false</code> if not.
	*/
	@:overload public function getTrackMute(track : Int) : Bool;
	
	/**
	* Sets the solo state for a track.  If <code>solo</code> is <code>true</code>
	* only this track and other solo'd tracks will sound. If <code>solo</code>
	* is <code>false</code> then only other solo'd tracks will sound, unless no
	* tracks are solo'd in which case all un-muted tracks will sound.
	* <p>
	* This method may fail for a number
	* of reasons.  For example, the track number specified may not be valid
	* for the current sequence, or the sequencer may not support this functionality.
	* An application which needs to verify whether this operation succeeded should
	* follow this call with a call to <code>{@link #getTrackSolo}</code>.
	*
	* @param track the track number.  Tracks in the current sequence are numbered
	* from 0 to the number of tracks in the sequence minus 1.
	* @param solo the new solo state for the track.  <code>true</code> implies the
	* track should be solo'd, <code>false</code> implies the track should not be solo'd.
	* @see #getSequence
	*/
	@:overload public function setTrackSolo(track : Int, solo : Bool) : Void;
	
	/**
	* Obtains the current solo state for a track.  The default mute
	* state for all tracks which have not been solo'd is false.  In any
	* case where the specified track has not been solo'd, this method should
	* return false.  This applies if the sequencer does not support soloing
	* of tracks, and if the specified track index is not valid.
	*
	* @param track the track number.  Tracks in the current sequence are numbered
	* from 0 to the number of tracks in the sequence minus 1.
	* @return <code>true</code> if solo'd, <code>false</code> if not.
	*/
	@:overload public function getTrackSolo(track : Int) : Bool;
	
	/**
	* Registers a meta-event listener to receive
	* notification whenever a meta-event is encountered in the sequence
	* and processed by the sequencer. This method can fail if, for
	* instance,this class of sequencer does not support meta-event
	* notification.
	*
	* @param listener listener to add
	* @return <code>true</code> if the listener was successfully added,
	* otherwise <code>false</code>
	*
	* @see #removeMetaEventListener
	* @see MetaEventListener
	* @see MetaMessage
	*/
	@:overload public function addMetaEventListener(listener : javax.sound.midi.MetaEventListener) : Bool;
	
	/**
	* Removes the specified meta-event listener from this sequencer's
	* list of registered listeners, if in fact the listener is registered.
	*
	* @param listener the meta-event listener to remove
	* @see #addMetaEventListener
	*/
	@:overload public function removeMetaEventListener(listener : javax.sound.midi.MetaEventListener) : Void;
	
	/**
	* Registers a controller event listener to receive notification
	* whenever the sequencer processes a control-change event of the
	* requested type or types.  The types are specified by the
	* <code>controllers</code> argument, which should contain an array of
	* MIDI controller numbers.  (Each number should be between 0 and 127,
	* inclusive.  See the MIDI 1.0 Specification for the numbers that
	* correspond to various types of controllers.)
	* <p>
	* The returned array contains the MIDI controller
	* numbers for which the listener will now receive events.
	* Some sequencers might not support controller event notification, in
	* which case the array has a length of 0.  Other sequencers might
	* support notification for some controllers but not all.
	* This method may be invoked repeatedly.
	* Each time, the returned array indicates all the controllers
	* that the listener will be notified about, not only the controllers
	* requested in that particular invocation.
	*
	* @param listener the controller event listener to add to the list of
	* registered listeners
	* @param controllers the MIDI controller numbers for which change
	* notification is requested
	* @return the numbers of all the MIDI controllers whose changes will
	* now be reported to the specified listener
	*
	* @see #removeControllerEventListener
	* @see ControllerEventListener
	*/
	@:overload public function addControllerEventListener(listener : javax.sound.midi.ControllerEventListener, controllers : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Removes a controller event listener's interest in one or more
	* types of controller event. The <code>controllers</code> argument
	* is an array of MIDI numbers corresponding to the  controllers for
	* which the listener should no longer receive change notifications.
	* To completely remove this listener from the list of registered
	* listeners, pass in <code>null</code> for <code>controllers</code>.
	* The returned array contains the MIDI controller
	* numbers for which the listener will now receive events.  The
	* array has a length of 0 if the listener will not receive
	* change notifications for any controllers.
	*
	* @param listener old listener
	* @param controllers the MIDI controller numbers for which change
	* notification should be cancelled, or <code>null</code> to cancel
	* for all controllers
	* @return the numbers of all the MIDI controllers whose changes will
	* now be reported to the specified listener
	*
	* @see #addControllerEventListener
	*/
	@:overload public function removeControllerEventListener(listener : javax.sound.midi.ControllerEventListener, controllers : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Sets the first MIDI tick that will be
	* played in the loop. If the loop count is
	* greater than 0, playback will jump to this
	* point when reaching the loop end point.
	*
	* <p>A value of 0 for the starting point means the
	* beginning of the loaded sequence. The starting
	* point must be lower than or equal to the ending
	* point, and it must fall within the size of the
	* loaded sequence.
	*
	* <p>A sequencer's loop start point defaults to
	* start of the sequence.
	*
	* @param tick the loop's starting position,
	*        in MIDI ticks (zero-based)
	* @throws IllegalArgumentException if the requested
	*         loop start point cannot be set, usually because
	*         it falls outside the sequence's
	*         duration or because the start point is
	*         after the end point
	*
	* @see #setLoopEndPoint
	* @see #setLoopCount
	* @see #getLoopStartPoint
	* @see #start
	* @since 1.5
	*/
	@:require(java5) @:overload public function setLoopStartPoint(tick : haxe.Int64) : Void;
	
	/**
	* Obtains the start position of the loop,
	* in MIDI ticks.
	*
	* @return the start position of the loop,
	in MIDI ticks (zero-based)
	* @see #setLoopStartPoint
	* @since 1.5
	*/
	@:require(java5) @:overload public function getLoopStartPoint() : haxe.Int64;
	
	/**
	* Sets the last MIDI tick that will be played in
	* the loop. If the loop count is 0, the loop end
	* point has no effect and playback continues to
	* play when reaching the loop end point.
	*
	* <p>A value of -1 for the ending point
	* indicates the last tick of the sequence.
	* Otherwise, the ending point must be greater
	* than or equal to the starting point, and it must
	* fall within the size of the loaded sequence.
	*
	* <p>A sequencer's loop end point defaults to -1,
	* meaning the end of the sequence.
	*
	* @param tick the loop's ending position,
	*        in MIDI ticks (zero-based), or
	*        -1 to indicate the final tick
	* @throws IllegalArgumentException if the requested
	*         loop point cannot be set, usually because
	*         it falls outside the sequence's
	*         duration or because the ending point is
	*         before the starting point
	*
	* @see #setLoopStartPoint
	* @see #setLoopCount
	* @see #getLoopEndPoint
	* @see #start
	* @since 1.5
	*/
	@:require(java5) @:overload public function setLoopEndPoint(tick : haxe.Int64) : Void;
	
	/**
	* Obtains the end position of the loop,
	* in MIDI ticks.
	*
	* @return the end position of the loop, in MIDI
	*         ticks (zero-based), or -1 to indicate
	*         the end of the sequence
	* @see #setLoopEndPoint
	* @since 1.5
	*/
	@:require(java5) @:overload public function getLoopEndPoint() : haxe.Int64;
	
	/**
	* Sets the number of repetitions of the loop for
	* playback.
	* When the playback position reaches the loop end point,
	* it will loop back to the loop start point
	* <code>count</code> times, after which playback will
	* continue to play to the end of the sequence.
	* <p>
	* If the current position when this method is invoked
	* is greater than the loop end point, playback
	* continues to the end of the sequence without looping,
	* unless the loop end point is changed subsequently.
	* <p>
	* A <code>count</code> value of 0 disables looping:
	* playback will continue at the loop end point, and it
	* will not loop back to the loop start point.
	* This is a sequencer's default.
	*
	* <p>If playback is stopped during looping, the
	* current loop status is cleared; subsequent start
	* requests are not affected by an interrupted loop
	* operation.
	*
	* @param count the number of times playback should
	*        loop back from the loop's end position
	*        to the loop's start position, or
	*        <code>{@link #LOOP_CONTINUOUSLY}</code>
	*        to indicate that looping should
	*        continue until interrupted
	*
	* @throws IllegalArgumentException if <code>count</code> is
	* negative and not equal to {@link #LOOP_CONTINUOUSLY}
	*
	* @see #setLoopStartPoint
	* @see #setLoopEndPoint
	* @see #getLoopCount
	* @see #start
	* @since 1.5
	*/
	@:require(java5) @:overload public function setLoopCount(count : Int) : Void;
	
	/**
	* Obtains the number of repetitions for
	* playback.
	*
	* @return the number of loops after which
	*         playback plays to the end of the
	*         sequence
	* @see #setLoopCount
	* @see #start
	* @since 1.5
	*/
	@:require(java5) @:overload public function getLoopCount() : Int;
	
	
}
/**
* A <code>SyncMode</code> object represents one of the ways in which
* a MIDI sequencer's notion of time can be synchronized with a master
* or slave device.
* If the sequencer is being synchronized to a master, the
* sequencer revises its current time in response to messages from
* the master.  If the sequencer has a slave, the sequencer
* similarly sends messages to control the slave's timing.
* <p>
* There are three predefined modes that specify possible masters
* for a sequencer: <code>INTERNAL_CLOCK</code>,
* <code>MIDI_SYNC</code>, and <code>MIDI_TIME_CODE</code>.  The
* latter two work if the sequencer receives MIDI messages from
* another device.  In these two modes, the sequencer's time gets reset
* based on system real-time timing clock messages or MIDI time code
* (MTC) messages, respectively.  These two modes can also be used
* as slave modes, in which case the sequencer sends the corresponding
* types of MIDI messages to its receiver (whether or not the sequencer
* is also receiving them from a master).  A fourth mode,
* <code>NO_SYNC</code>, is used to indicate that the sequencer should
* not control its receiver's timing.
*
* @see Sequencer#setMasterSyncMode(Sequencer.SyncMode)
* @see Sequencer#setSlaveSyncMode(Sequencer.SyncMode)
*/
@:native('javax$sound$midi$Sequencer$SyncMode') extern class Sequencer_SyncMode
{
	/**
	* Constructs a synchronization mode.
	* @param name name of the synchronization mode
	*/
	@:overload private function new(name : String) : Void;
	
	/**
	* Determines whether two objects are equal.
	* Returns <code>true</code> if the objects are identical
	* @param obj the reference object with which to compare
	* @return <code>true</code> if this object is the same as the
	* <code>obj</code> argument, <code>false</code> otherwise
	*/
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Finalizes the hashcode method.
	*/
	@:overload @:final public function hashCode() : Int;
	
	/**
	* Provides this synchronization mode's name as the string
	* representation of the mode.
	* @return the name of this synchronization mode
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* A master synchronization mode that makes the sequencer get
	* its timing information from its internal clock.  This is not
	* a legal slave sync mode.
	*/
	public static var INTERNAL_CLOCK(default, null) : Sequencer_SyncMode;
	
	/**
	* A master or slave synchronization mode that specifies the
	* use of MIDI clock
	* messages.  If this mode is used as the master sync mode,
	* the sequencer gets its timing information from system real-time
	* MIDI clock messages.  This mode only applies as the master sync
	* mode for sequencers that are also MIDI receivers.  If this is the
	* slave sync mode, the sequencer sends system real-time MIDI clock
	* messages to its receiver.  MIDI clock messages are sent at a rate
	* of 24 per quarter note.
	*/
	public static var MIDI_SYNC(default, null) : Sequencer_SyncMode;
	
	/**
	* A master or slave synchronization mode that specifies the
	* use of MIDI Time Code.
	* If this mode is used as the master sync mode,
	* the sequencer gets its timing information from MIDI Time Code
	* messages.  This mode only applies as the master sync
	* mode to sequencers that are also MIDI receivers.  If this
	* mode is used as the
	* slave sync mode, the sequencer sends MIDI Time Code
	* messages to its receiver.  (See the MIDI 1.0 Detailed
	* Specification for a description of MIDI Time Code.)
	*/
	public static var MIDI_TIME_CODE(default, null) : Sequencer_SyncMode;
	
	/**
	* A slave synchronization mode indicating that no timing information
	* should be sent to the receiver.  This is not a legal master sync
	* mode.
	*/
	public static var NO_SYNC(default, null) : Sequencer_SyncMode;
	
	
}
