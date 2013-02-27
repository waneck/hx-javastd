package org.classpath.icedtea.pulseaudio;
/* PulseAudioClip.java
Copyright (C) 2008 Red Hat, Inc.

This file is part of IcedTea.

IcedTea is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as published by
the Free Software Foundation, version 2.

IcedTea is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with IcedTea; see the file COPYING.  If not, write to
the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
02110-1301 USA.

Linking this library statically or dynamically with other modules is
making a combined work based on this library.  Thus, the terms and
conditions of the GNU General Public License cover the whole
combination.

As a special exception, the copyright holders of this library give you
permission to link this library with independent modules to produce an
executable, regardless of the license terms of these independent
modules, and to copy and distribute the resulting executable under
terms of your choice, provided that you also meet, for each linked
independent module, the terms and conditions of the license of that
module.  An independent module is a module which is not derived from
or based on this library.  If you modify this library, you may extend
this exception to your version of the library, but you are not
obligated to do so.  If you do not wish to do so, delete this
exception statement from your version.
*/
@:internal extern class PulseAudioDataLine extends org.classpath.icedtea.pulseaudio.PulseAudioLine implements javax.sound.sampled.DataLine
{
	/**
	* 
	* This class contains code that is used by Clip, SourceDataLine and
	* TargetDataLine
	* 
	*/
	private static var DEFAULT_BUFFER_SIZE(default, null) : Int;
	
	private var streamName : String;
	
	private var isStarted : Bool;
	
	private var dataWritten : Bool;
	
	private var supportedFormats : java.NativeArray<javax.sound.sampled.AudioFormat>;
	
	private var currentFormat : javax.sound.sampled.AudioFormat;
	
	private var defaultFormat : javax.sound.sampled.AudioFormat;
	
	private var sendEvents : Bool;
	
	private var framesSinceOpen : haxe.Int64;
	
	private var eventLoop : org.classpath.icedtea.pulseaudio.EventLoop;
	
	private var semaphore : java.util.concurrent.Semaphore;
	
	private var stream : org.classpath.icedtea.pulseaudio.Stream;
	
	@:overload private function open(format : javax.sound.sampled.AudioFormat, bufferSize : Int) : Void;
	
	@:overload private function open(format : javax.sound.sampled.AudioFormat) : Void;
	
	@:overload override public function open() : Void;
	
	@:overload override public function close() : Void;
	
	@:overload public function start() : Void;
	
	@:overload @:synchronized public function stop() : Void;
	
	/*
	* TODO
	* 
	* http://bugs.sun.com/bugdatabase/view_bug.do?bug_id=4791152 :
	* 
	* a line is active in between calls to start() and stop(). In that sense,
	* active means that the line is ready to take or give data. Running is
	* tightly bound to data flow in the line. I.e. when you start a
	* SourceDataLine but never write data to it, the line should not be
	* running. This also means that a line should become not running on buffer
	* underrun/overflow.
	* 
	* 
	* HOWEVER, the javadocs say the opposite thing! (need help from the jck =
	* official spec)
	*/
	@:overload public function isActive() : Bool;
	
	@:overload public function isRunning() : Bool;
	
	@:overload @:abstract private function connectLine(bufferSize : Int, masterStream : org.classpath.icedtea.pulseaudio.Stream) : Void;
	
	@:overload public function getStream() : org.classpath.icedtea.pulseaudio.Stream;
	
	@:overload public function getBufferSize() : Int;
	
	@:overload public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload public function getLevel() : Single;
	
	/**
	* 
	* @param streamName
	*            the name of this audio stream
	*/
	@:overload public function setName(streamName : String) : Void;
	
	/**
	* 
	* @return the name of this audio stream/clip
	*/
	@:overload public function getName() : String;
	
	@:overload public function getBytesInBuffer() : Int;
	
	/**
	* Obtains the <code>Line.Info</code> object describing this
	* line.
	* @return description of the line
	*/
	@:overload @:public override public function getLineInfo() : Line_Info;
	
	/**
	* Obtains a control of the specified type,
	* if there is any.
	* Some controls may only be available when the line is open.
	* @param control the type of the requested control
	* @return a control of the specified type
	* @throws IllegalArgumentException if a control of the specified type
	* is not supported
	* @see #getControls
	* @see #isControlSupported(Control.Type control)
	*/
	@:overload override public function getControl(control : javax.sound.sampled.Control.Control_Type) : javax.sound.sampled.Control;
	
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
	@:overload @:public public function getMicrosecondPosition() : haxe.Int64;
	
	/**
	* Obtains the current position in the audio data, in sample frames.
	* The frame position measures the number of sample
	* frames captured by, or rendered from, the line since it was opened.
	*
	* @return the number of frames already processed since the line was opened
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getLongFramePosition() : haxe.Int64;
	
	/**
	* Adds a listener to this line.  Whenever the line's status changes, the
	* listener's <code>update()</code> method is called with a <code>LineEvent</code> object
	* that describes the change.
	* @param listener the object to add as a listener to this line
	* @see #removeLineListener
	* @see LineListener#update
	* @see LineEvent
	*/
	@:overload override public function addLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
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
	@:overload @:public public function getFramePosition() : Int;
	
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
	@:overload @:public public function flush() : Void;
	
	/**
	* Indicates whether the line supports a control of the specified type.
	* Some controls may only be available when the line is open.
	* @param control the type of the control for which support is queried
	* @return <code>true</code> if at least one control of the specified type is
	* supported, otherwise <code>false</code>.
	*/
	@:overload override public function isControlSupported(control : javax.sound.sampled.Control.Control_Type) : Bool;
	
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
	@:overload @:public public function available() : Int;
	
	/**
	* Obtains the set of controls associated with this line.
	* Some controls may only be available when the line is open.
	* If there are no controls, this method returns an array of length 0.
	* @return the array of controls
	* @see #getControl
	*/
	@:overload override public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
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
	@:overload @:public public function drain() : Void;
	
	/**
	* Indicates whether the line is open, meaning that it has reserved
	* system resources and is operational, although it might not currently be
	* playing or capturing sound.
	* @return <code>true</code> if the line is open, otherwise <code>false</code>
	*
	* @see #open()
	* @see #close()
	*/
	@:overload override public function isOpen() : Bool;
	
	/**
	* Removes the specified listener from this line's list of listeners.
	* @param listener listener to remove
	* @see #addLineListener
	*/
	@:overload override public function removeLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	
}
