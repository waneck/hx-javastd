package com.sun.media.sound;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractDataLine extends com.sun.media.sound.AbstractLine implements javax.sound.sampled.DataLine
{
	/**
	* AbstractDataLine
	*
	* @author Kara Kytle
	*/
	/*final*/
	@:protected private var defaultFormat : javax.sound.sampled.AudioFormat;
	
	/*final*/
	@:protected private var defaultBufferSize : Int;
	
	@:protected private var lock : Dynamic;
	
	@:protected private var format : javax.sound.sampled.AudioFormat;
	
	@:protected private var bufferSize : Int;
	
	@:protected private var running : Bool;
	
	/**
	* Constructs a new AbstractLine.
	*/
	@:overload @:protected private function new(info : javax.sound.sampled.DataLine.DataLine_Info, mixer : com.sun.media.sound.AbstractMixer, controls : java.NativeArray<javax.sound.sampled.Control>) : Void;
	
	/**
	* Constructs a new AbstractLine.
	*/
	@:overload @:protected private function new(info : javax.sound.sampled.DataLine.DataLine_Info, mixer : com.sun.media.sound.AbstractMixer, controls : java.NativeArray<javax.sound.sampled.Control>, format : javax.sound.sampled.AudioFormat, bufferSize : Int) : Void;
	
	@:overload @:public public function open(format : javax.sound.sampled.AudioFormat, bufferSize : Int) : Void;
	
	@:overload @:public public function open(format : javax.sound.sampled.AudioFormat) : Void;
	
	/**
	* This implementation always returns 0.
	*/
	@:overload @:public public function available() : Int;
	
	/**
	* This implementation does nothing.
	*/
	@:overload @:public public function drain() : Void;
	
	/**
	* This implementation does nothing.
	*/
	@:overload @:public public function flush() : Void;
	
	@:overload @:public public function start() : Void;
	
	@:overload @:public public function stop() : Void;
	
	@:overload @:public public function isRunning() : Bool;
	
	@:overload @:public public function isActive() : Bool;
	
	@:overload @:public public function getMicrosecondPosition() : haxe.Int64;
	
	@:overload @:public public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload @:public public function getBufferSize() : Int;
	
	/**
	* This implementation does NOT change the buffer size
	*/
	@:overload @:public public function setBufferSize(newSize : Int) : Int;
	
	/**
	* This implementation returns AudioSystem.NOT_SPECIFIED.
	*/
	@:overload @:public public function getLevel() : Single;
	
	/**
	* running is true after start is called and before stop is called,
	* regardless of whether data is actually being presented.
	*/
	@:overload @:protected private function isStartedRunning() : Bool;
	
	/**
	* This method sets the active state and generates
	* events if it changes.
	*/
	@:overload @:protected private function setActive(active : Bool) : Void;
	
	/**
	* This method sets the started state and generates
	* events if it changes.
	*/
	@:overload @:protected private function setStarted(started : Bool) : Void;
	
	/**
	* This method generates a STOP event and sets the started state to false.
	* It is here for historic reasons when an EOM event existed.
	*/
	@:overload @:protected private function setEOM() : Void;
	
	/**
	* Try to open the line with the current format and buffer size values.
	* If the line is not open, these will be the defaults.  If the
	* line is open, this should return quietly because the values
	* requested will match the current ones.
	*/
	@:overload @:public override public function open() : Void;
	
	/**
	* This should also stop the line.  The closed line should not be running or active.
	* After we close the line, we reset the format and buffer size to the defaults.
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Obtains the <code>Line.Info</code> object describing this
	* line.
	* @return description of the line
	*/
	@:overload @:public override public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
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
	@:overload @:public override public function getControl(control : javax.sound.sampled.Control.Control_Type) : javax.sound.sampled.Control;
	
	/**
	* Obtains the current position in the audio data, in sample frames.
	* The frame position measures the number of sample
	* frames captured by, or rendered from, the line since it was opened.
	*
	* @return the number of frames already processed since the line was opened
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function getLongFramePosition() : haxe.Int64;
	
	/**
	* Adds a listener to this line.  Whenever the line's status changes, the
	* listener's <code>update()</code> method is called with a <code>LineEvent</code> object
	* that describes the change.
	* @param listener the object to add as a listener to this line
	* @see #removeLineListener
	* @see LineListener#update
	* @see LineEvent
	*/
	@:overload @:public override public function addLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
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
	@:overload @:public override public function getFramePosition() : Int;
	
	/**
	* Indicates whether the line supports a control of the specified type.
	* Some controls may only be available when the line is open.
	* @param control the type of the control for which support is queried
	* @return <code>true</code> if at least one control of the specified type is
	* supported, otherwise <code>false</code>.
	*/
	@:overload @:public override public function isControlSupported(control : javax.sound.sampled.Control.Control_Type) : Bool;
	
	/**
	* Obtains the set of controls associated with this line.
	* Some controls may only be available when the line is open.
	* If there are no controls, this method returns an array of length 0.
	* @return the array of controls
	* @see #getControl
	*/
	@:overload @:public override public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
	/**
	* Indicates whether the line is open, meaning that it has reserved
	* system resources and is operational, although it might not currently be
	* playing or capturing sound.
	* @return <code>true</code> if the line is open, otherwise <code>false</code>
	*
	* @see #open()
	* @see #close()
	*/
	@:overload @:public override public function isOpen() : Bool;
	
	/**
	* Removes the specified listener from this line's list of listeners.
	* @param listener listener to remove
	* @see #addLineListener
	*/
	@:overload @:public override public function removeLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	
}
