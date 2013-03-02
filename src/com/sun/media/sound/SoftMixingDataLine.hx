package com.sun.media.sound;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SoftMixingDataLine implements javax.sound.sampled.DataLine
{
	/**
	* General software mixing line.
	*
	* @author Karl Helgason
	*/
	public static var CHORUS_SEND(default, null) : javax.sound.sampled.FloatControl.FloatControl_Type;
	
	private var leftgain : Single;
	
	private var rightgain : Single;
	
	private var eff1gain : Single;
	
	private var eff2gain : Single;
	
	private var listeners : java.util.List<javax.sound.sampled.LineListener>;
	
	private var control_mutex : Dynamic;
	
	private var mixer : com.sun.media.sound.SoftMixingMixer;
	
	private var info : javax.sound.sampled.DataLine.DataLine_Info;
	
	@:overload @:abstract private function processControlLogic() : Void;
	
	@:overload @:abstract private function processAudioLogic(buffers : java.NativeArray<com.sun.media.sound.SoftAudioBuffer>) : Void;
	
	@:overload private function new(mixer : com.sun.media.sound.SoftMixingMixer, info : javax.sound.sampled.DataLine.DataLine_Info) : Void;
	
	@:overload private function calcVolume() : Void;
	
	@:overload private function sendEvent(event : javax.sound.sampled.LineEvent) : Void;
	
	@:overload public function addLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	@:overload public function removeLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	@:overload public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
	@:overload public function getControl(control : javax.sound.sampled.Control.Control_Type) : javax.sound.sampled.Control;
	
	@:overload public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
	@:overload public function isControlSupported(control : javax.sound.sampled.Control.Control_Type) : Bool;
	
	/**
	* Opens the line, indicating that it should acquire any required
	* system resources and become operational.
	* If this operation
	* succeeds, the line is marked as open, and an <code>OPEN</code> event is dispatched
	* to the line's listeners.
	* <p>
	* Note that some lines, once closed, cannot be reopened.  Attempts
	* to reopen such a line will always result in an <code>LineUnavailableException</code>.
	* <p>
	* Some types of lines have configurable properties that may affect
	* resource allocation.   For example, a <code>DataLine</code> must
	* be opened with a particular format and buffer size.  Such lines
	* should provide a mechanism for configuring these properties, such
	* as an additional <code>open</code> method or methods which allow
	* an application to specify the desired settings.
	* <p>
	* This method takes no arguments, and opens the line with the current
	* settings.  For <code>{@link SourceDataLine}</code> and
	* <code>{@link TargetDataLine}</code> objects, this means that the line is
	* opened with default settings.  For a <code>{@link Clip}</code>, however,
	* the buffer size is determined when data is loaded.  Since this method does not
	* allow the application to specify any data to load, an IllegalArgumentException
	* is thrown. Therefore, you should instead use one of the <code>open</code> methods
	* provided in the <code>Clip</code> interface to load data into the <code>Clip</code>.
	* <p>
	* For <code>DataLine</code>'s, if the <code>DataLine.Info</code>
	* object which was used to retrieve the line, specifies at least
	* one fully qualified audio format, the last one will be used
	* as the default format.
	*
	* @throws IllegalArgumentException if this method is called on a Clip instance.
	* @throws LineUnavailableException if the line cannot be
	* opened due to resource restrictions.
	* @throws SecurityException if the line cannot be
	* opened due to security restrictions.
	*
	* @see #close
	* @see #isOpen
	* @see LineEvent
	* @see DataLine
	* @see Clip#open(AudioFormat, byte[], int, int)
	* @see Clip#open(AudioInputStream)
	*/
	@:overload public function open() : Void;
	
	/**
	* Obtains the maximum number of bytes of data that will fit in the data line's
	* internal buffer.  For a source data line, this is the size of the buffer to
	* which data can be written.  For a target data line, it is the size of
	* the buffer from which data can be read.  Note that
	* the units used are bytes, but will always correspond to an integral
	* number of sample frames of audio data.
	*
	* @return the size of the buffer in bytes
	*/
	@:overload public function getBufferSize() : Int;
	
	/**
	* Obtains the current position in the audio data, in microseconds.
	* The microsecond position measures the time corresponding to the number
	* of sample frames captured by, or rendered from, the line since it was opened.
	* The level of precision is not guaranteed.  For example, an implementation
	* might calculate the microsecond position from the current frame position
	* and the audio sample frame rate.  The precision in microseconds would
	* then be limited to the number of microseconds per sample frame.
	*
	* @return the number of microseconds of data processed since the line was opened
	*/
	@:overload public function getMicrosecondPosition() : haxe.Int64;
	
	/**
	* Obtains the current position in the audio data, in sample frames.
	* The frame position measures the number of sample
	* frames captured by, or rendered from, the line since it was opened.
	*
	* @return the number of frames already processed since the line was opened
	* @since 1.5
	*/
	@:require(java5) @:overload public function getLongFramePosition() : haxe.Int64;
	
	/**
	* Obtains the current volume level for the line.  This level is a measure
	* of the signal's current amplitude, and should not be confused with the
	* current setting of a gain control. The range is from 0.0 (silence) to
	* 1.0 (maximum possible amplitude for the sound waveform).  The units
	* measure linear amplitude, not decibels.
	*
	* @return the current amplitude of the signal in this line, or
	* <code>{@link AudioSystem#NOT_SPECIFIED}</code>
	*/
	@:overload public function getLevel() : Single;
	
	/**
	* Closes the line, indicating that any system resources
	* in use by the line can be released.  If this operation
	* succeeds, the line is marked closed and a <code>CLOSE</code> event is dispatched
	* to the line's listeners.
	* @throws SecurityException if the line cannot be
	* closed due to security restrictions.
	*
	* @see #open
	* @see #isOpen
	* @see LineEvent
	*/
	@:overload public function close() : Void;
	
	/**
	* Indicates whether the line is engaging in active I/O (such as playback
	* or capture).  When an inactive line becomes active, it sends a
	* <code>{@link LineEvent.Type#START START}</code> event to its listeners.  Similarly, when
	* an active line becomes inactive, it sends a
	* <code>{@link LineEvent.Type#STOP STOP}</code> event.
	* @return <code>true</code> if the line is actively capturing or rendering
	* sound, otherwise <code>false</code>
	* @see #isOpen
	* @see #addLineListener
	* @see #removeLineListener
	* @see LineEvent
	* @see LineListener
	*/
	@:overload public function isActive() : Bool;
	
	/**
	* Obtains the current position in the audio data, in sample frames.
	* The frame position measures the number of sample
	* frames captured by, or rendered from, the line since it was opened.
	* This return value will wrap around after 2^31 frames. It is recommended
	* to use <code>getLongFramePosition</code> instead.
	*
	* @return the number of frames already processed since the line was opened
	* @see #getLongFramePosition()
	*/
	@:overload public function getFramePosition() : Int;
	
	/**
	* Flushes queued data from the line.  The flushed data is discarded.
	* In some cases, not all queued data can be discarded.  For example, a
	* mixer can flush data from the buffer for a specific input line, but any
	* unplayed data already in the output buffer (the result of the mix) will
	* still be played.  You can invoke this method after pausing a line (the
	* normal case) if you want to skip the "stale" data when you restart
	* playback or capture. (It is legal to flush a line that is not stopped,
	* but doing so on an active line is likely to cause a discontinuity in the
	* data, resulting in a perceptible click.)
	*
	* @see #stop()
	* @see #drain()
	*/
	@:overload public function flush() : Void;
	
	/**
	* Stops the line.  A stopped line should cease I/O activity.
	* If the line is open and running, however, it should retain the resources required
	* to resume activity.  A stopped line should retain any audio data in its buffer
	* instead of discarding it, so that upon resumption the I/O can continue where it left off,
	* if possible.  (This doesn't guarantee that there will never be discontinuities beyond the
	* current buffer, of course; if the stopped condition continues
	* for too long, input or output samples might be dropped.)  If desired, the retained data can be
	* discarded by invoking the <code>flush</code> method.
	* When audio capture or playback stops, a <code>{@link LineEvent.Type#STOP STOP}</code> event is generated.
	*
	* @see #start()
	* @see #isRunning()
	* @see #flush()
	* @see LineEvent
	*/
	@:overload public function stop() : Void;
	
	/**
	* Obtains the number of bytes of data currently available to the
	* application for processing in the data line's internal buffer.  For a
	* source data line, this is the amount of data that can be written to the
	* buffer without blocking.  For a target data line, this is the amount of data
	* available to be read by the application.  For a clip, this value is always
	* 0 because the audio data is loaded into the buffer when the clip is opened,
	* and persists without modification until the clip is closed.
	* <p>
	* Note that the units used are bytes, but will always
	* correspond to an integral number of sample frames of audio data.
	* <p>
	* An application is guaranteed that a read or
	* write operation of up to the number of bytes returned from
	* <code>available()</code> will not block; however, there is no guarantee
	* that attempts to read or write more data will block.
	*
	* @return the amount of data available, in bytes
	*/
	@:overload public function available() : Int;
	
	/**
	* Drains queued data from the line by continuing data I/O until the
	* data line's internal buffer has been emptied.
	* This method blocks until the draining is complete.  Because this is a
	* blocking method, it should be used with care.  If <code>drain()</code>
	* is invoked on a stopped line that has data in its queue, the method will
	* block until the line is running and the data queue becomes empty.  If
	* <code>drain()</code> is invoked by one thread, and another continues to
	* fill the data queue, the operation will not complete.
	* This method always returns when the data line is closed.
	*
	* @see #flush()
	*/
	@:overload public function drain() : Void;
	
	/**
	* Allows a line to engage in data I/O.  If invoked on a line
	* that is already running, this method does nothing.  Unless the data in
	* the buffer has been flushed, the line resumes I/O starting
	* with the first frame that was unprocessed at the time the line was
	* stopped. When audio capture or playback starts, a
	* <code>{@link LineEvent.Type#START START}</code> event is generated.
	*
	* @see #stop()
	* @see #isRunning()
	* @see LineEvent
	*/
	@:overload public function start() : Void;
	
	/**
	* Indicates whether the line is running.  The default is <code>false</code>.
	* An open line begins running when the first data is presented in response to an
	* invocation of the <code>start</code> method, and continues
	* until presentation ceases in response to a call to <code>stop</code> or
	* because playback completes.
	* @return <code>true</code> if the line is running, otherwise <code>false</code>
	* @see #start()
	* @see #stop()
	*/
	@:overload public function isRunning() : Bool;
	
	/**
	* Indicates whether the line is open, meaning that it has reserved
	* system resources and is operational, although it might not currently be
	* playing or capturing sound.
	* @return <code>true</code> if the line is open, otherwise <code>false</code>
	*
	* @see #open()
	* @see #close()
	*/
	@:overload @:public public function isOpen() : Bool;
	
	/**
	* Obtains the current format (encoding, sample rate, number of channels,
	* etc.) of the data line's audio data.
	*
	* <p>If the line is not open and has never been opened, it returns
	* the default format. The default format is an implementation
	* specific audio format, or, if the <code>DataLine.Info</code>
	* object, which was used to retrieve this <code>DataLine</code>,
	* specifies at least one fully qualified audio format, the
	* last one will be used as the default format. Opening the
	* line with a specific audio format (e.g.
	* {@link SourceDataLine#open(AudioFormat)}) will override the
	* default format.
	*
	* @return current audio data format
	* @see AudioFormat
	*/
	@:overload public function getFormat() : javax.sound.sampled.AudioFormat;
	
	
}
@:native('com$sun$media$sound$SoftMixingDataLine$AudioFloatInputStreamResampler') extern class SoftMixingDataLine_AudioFloatInputStreamResampler extends com.sun.media.sound.AudioFloatInputStream
{
	@:overload public function new(ais : com.sun.media.sound.AudioFloatInputStream, format : javax.sound.sampled.AudioFormat) : Void;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	@:overload override public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload override public function getFrameLength() : haxe.Int64;
	
	@:overload override public function mark(readlimit : Int) : Void;
	
	@:overload override public function markSupported() : Bool;
	
	@:overload override public function read(b : java.NativeArray<Single>, off : Int, len : Int) : Int;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function skip(len : haxe.Int64) : haxe.Int64;
	
	
}
@:native('com$sun$media$sound$SoftMixingDataLine$Gain') @:internal extern class SoftMixingDataLine_Gain extends javax.sound.sampled.FloatControl
{
	@:overload override public function setValue(newValue : Single) : Void;
	
	
}
@:native('com$sun$media$sound$SoftMixingDataLine$Mute') @:internal extern class SoftMixingDataLine_Mute extends javax.sound.sampled.BooleanControl
{
	@:overload public function setValue(newValue : Bool) : Void;
	
	
}
@:native('com$sun$media$sound$SoftMixingDataLine$ApplyReverb') @:internal extern class SoftMixingDataLine_ApplyReverb extends javax.sound.sampled.BooleanControl
{
	@:overload public function setValue(newValue : Bool) : Void;
	
	
}
@:native('com$sun$media$sound$SoftMixingDataLine$Balance') @:internal extern class SoftMixingDataLine_Balance extends javax.sound.sampled.FloatControl
{
	@:overload override public function setValue(newValue : Single) : Void;
	
	
}
@:native('com$sun$media$sound$SoftMixingDataLine$Pan') @:internal extern class SoftMixingDataLine_Pan extends javax.sound.sampled.FloatControl
{
	@:overload override public function setValue(newValue : Single) : Void;
	
	@:overload override public function getValue() : Single;
	
	
}
@:native('com$sun$media$sound$SoftMixingDataLine$ReverbSend') @:internal extern class SoftMixingDataLine_ReverbSend extends javax.sound.sampled.FloatControl
{
	@:overload override public function setValue(newValue : Single) : Void;
	
	
}
@:native('com$sun$media$sound$SoftMixingDataLine$ChorusSend') @:internal extern class SoftMixingDataLine_ChorusSend extends javax.sound.sampled.FloatControl
{
	@:overload override public function setValue(newValue : Single) : Void;
	
	
}
