package javax.sound.sampled;
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
extern interface Clip extends javax.sound.sampled.DataLine
{
	/**
	* Opens the clip, meaning that it should acquire any required
	* system resources and become operational.  The clip is opened
	* with the format and audio data indicated.
	* If this operation succeeds, the line is marked as open and an
	* <code>{@link LineEvent.Type#OPEN OPEN}</code> event is dispatched
	* to the line's listeners.
	* <p>
	* Invoking this method on a line which is already open is illegal
	* and may result in an IllegalStateException.
	* <p>
	* Note that some lines, once closed, cannot be reopened.  Attempts
	* to reopen such a line will always result in a
	* <code>{@link LineUnavailableException}</code>.
	*
	* @param format the format of the supplied audio data
	* @param data a byte array containing audio data to load into the clip
	* @param offset the point at which to start copying, expressed in
	* <em>bytes</em> from the beginning of the array
	* @param bufferSize the number of <em>bytes</em>
	* of data to load into the clip from the array.
	* @throws LineUnavailableException if the line cannot be
	* opened due to resource restrictions
	* @throws IllegalArgumentException if the buffer size does not represent
	* an integral number of sample frames,
	* or if <code>format</code> is not fully specified or invalid
	* @throws IllegalStateException if the line is already open
	* @throws SecurityException if the line cannot be
	* opened due to security restrictions
	*
	* @see #close
	* @see #isOpen
	* @see LineListener
	*/
	@:overload @:public public function open(format : javax.sound.sampled.AudioFormat, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, bufferSize : Int) : Void;
	
	/**
	* Opens the clip with the format and audio data present in the provided audio
	* input stream.  Opening a clip means that it should acquire any required
	* system resources and become operational.  If this operation
	* input stream.  If this operation
	* succeeds, the line is marked open and an
	* <code>{@link LineEvent.Type#OPEN OPEN}</code> event is dispatched
	* to the line's listeners.
	* <p>
	* Invoking this method on a line which is already open is illegal
	* and may result in an IllegalStateException.
	* <p>
	* Note that some lines, once closed, cannot be reopened.  Attempts
	* to reopen such a line will always result in a
	* <code>{@link LineUnavailableException}</code>.
	*
	* @param stream an audio input stream from which audio data will be read into
	* the clip
	* @throws LineUnavailableException if the line cannot be
	* opened due to resource restrictions
	* @throws IOException if an I/O exception occurs during reading of
	* the stream
	* @throws IllegalArgumentException if the stream's audio format
	* is not fully specified or invalid
	* @throws IllegalStateException if the line is already open
	* @throws SecurityException if the line cannot be
	* opened due to security restrictions
	*
	* @see #close
	* @see #isOpen
	* @see LineListener
	*/
	@:overload @:public public function open(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	/**
	* Obtains the media length in sample frames.
	* @return the media length, expressed in sample frames,
	* or <code>AudioSystem.NOT_SPECIFIED</code> if the line is not open.
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload @:public public function getFrameLength() : Int;
	
	/**
	* Obtains the media duration in microseconds
	* @return the media duration, expressed in microseconds,
	* or <code>AudioSystem.NOT_SPECIFIED</code> if the line is not open.
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload @:public public function getMicrosecondLength() : haxe.Int64;
	
	/**
	* Sets the media position in sample frames.  The position is zero-based;
	* the first frame is frame number zero.  When the clip begins playing the
	* next time, it will start by playing the frame at this position.
	* <p>
	* To obtain the current position in sample frames, use the
	* <code>{@link DataLine#getFramePosition getFramePosition}</code>
	* method of <code>DataLine</code>.
	*
	* @param frames the desired new media position, expressed in sample frames
	*/
	@:overload @:public public function setFramePosition(frames : Int) : Void;
	
	/**
	* Sets the media position in microseconds.  When the clip begins playing the
	* next time, it will start at this position.
	* The level of precision is not guaranteed.  For example, an implementation
	* might calculate the microsecond position from the current frame position
	* and the audio sample frame rate.  The precision in microseconds would
	* then be limited to the number of microseconds per sample frame.
	* <p>
	* To obtain the current position in microseconds, use the
	* <code>{@link DataLine#getMicrosecondPosition getMicrosecondPosition}</code>
	* method of <code>DataLine</code>.
	*
	* @param microseconds the desired new media position, expressed in microseconds
	*/
	@:overload @:public public function setMicrosecondPosition(microseconds : haxe.Int64) : Void;
	
	/**
	* Sets the first and last sample frames that will be played in
	* the loop.  The ending point must be greater than
	* or equal to the starting point, and both must fall within the
	* the size of the loaded media.  A value of 0 for the starting
	* point means the beginning of the loaded media.  Similarly, a value of -1
	* for the ending point indicates the last frame of the media.
	* @param start the loop's starting position, in sample frames (zero-based)
	* @param end the loop's ending position, in sample frames (zero-based), or
	* -1 to indicate the final frame
	* @throws IllegalArgumentException if the requested
	* loop points cannot be set, usually because one or both falls outside
	* the media's duration or because the ending point is
	* before the starting point
	*/
	@:overload @:public public function setLoopPoints(start : Int, end : Int) : Void;
	
	/**
	* Starts looping playback from the current position.   Playback will
	* continue to the loop's end point, then loop back to the loop start point
	* <code>count</code> times, and finally continue playback to the end of
	* the clip.
	* <p>
	* If the current position when this method is invoked is greater than the
	* loop end point, playback simply continues to the
	* end of the clip without looping.
	* <p>
	* A <code>count</code> value of 0 indicates that any current looping should
	* cease and playback should continue to the end of the clip.  The behavior
	* is undefined when this method is invoked with any other value during a
	* loop operation.
	* <p>
	* If playback is stopped during looping, the current loop status is
	* cleared; the behavior of subsequent loop and start requests is not
	* affected by an interrupted loop operation.
	*
	* @param count the number of times playback should loop back from the
	* loop's end position to the loop's  start position, or
	* <code>{@link #LOOP_CONTINUOUSLY}</code> to indicate that looping should
	* continue until interrupted
	*/
	@:overload @:public public function loop(count : Int) : Void;
	
	
}
