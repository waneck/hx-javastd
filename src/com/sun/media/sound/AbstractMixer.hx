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
@:internal extern class AbstractMixer extends com.sun.media.sound.AbstractLine implements javax.sound.sampled.Mixer
{
	/**
	* Abstract Mixer.  Implements Mixer (with abstract methods) and specifies
	* some other common methods for use by our implementation.
	*
	* @author Kara Kytle
	*/
	private static var PCM(default, null) : Int;
	
	private static var ULAW(default, null) : Int;
	
	private static var ALAW(default, null) : Int;
	
	/**
	* source lines provided by this mixer
	*/
	private var sourceLineInfo : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	/**
	* target lines provided by this mixer
	*/
	private var targetLineInfo : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	/**
	* Source lines (ports) currently open
	*/
	private var sourceLines : java.util.Vector<Dynamic>;
	
	/**
	* Target lines currently open.
	*/
	private var targetLines : java.util.Vector<Dynamic>;
	
	/**
	* Constructs a new AbstractMixer.
	* @param mixer the mixer with which this line is associated
	* @param controls set of supported controls
	*/
	@:overload private function new(mixerInfo : javax.sound.sampled.Mixer.Mixer_Info, controls : java.NativeArray<javax.sound.sampled.Control>, sourceLineInfo : java.NativeArray<javax.sound.sampled.Line.Line_Info>, targetLineInfo : java.NativeArray<javax.sound.sampled.Line.Line_Info>) : Void;
	
	@:overload public function getMixerInfo() : javax.sound.sampled.Mixer.Mixer_Info;
	
	@:overload public function getSourceLineInfo() : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getTargetLineInfo() : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getSourceLineInfo(info : javax.sound.sampled.Line.Line_Info) : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getTargetLineInfo(info : javax.sound.sampled.Line.Line_Info) : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function isLineSupported(info : javax.sound.sampled.Line.Line_Info) : Bool;
	
	@:overload @:abstract public function getLine(info : javax.sound.sampled.Line.Line_Info) : javax.sound.sampled.Line;
	
	@:overload @:abstract public function getMaxLines(info : javax.sound.sampled.Line.Line_Info) : Int;
	
	@:overload @:abstract private function implOpen() : Void;
	
	@:overload @:abstract private function implStart() : Void;
	
	@:overload @:abstract private function implStop() : Void;
	
	@:overload @:abstract private function implClose() : Void;
	
	@:overload public function getSourceLines() : java.NativeArray<javax.sound.sampled.Line>;
	
	@:overload public function getTargetLines() : java.NativeArray<javax.sound.sampled.Line>;
	
	/**
	* Default implementation always throws an exception.
	*/
	@:overload public function synchronize(lines : java.NativeArray<javax.sound.sampled.Line>, maintainSync : Bool) : Void;
	
	/**
	* Default implementation always throws an exception.
	*/
	@:overload public function unsynchronize(lines : java.NativeArray<javax.sound.sampled.Line>) : Void;
	
	/**
	* Default implementation always returns false.
	*/
	@:overload public function isSynchronizationSupported(lines : java.NativeArray<javax.sound.sampled.Line>, maintainSync : Bool) : Bool;
	
	/**
	* This implementation tries to open the mixer with its current format and buffer size settings.
	*/
	@:overload @:synchronized override public function open() : Void;
	
	/**
	* This implementation tries to open the mixer with its current format and buffer size settings.
	*/
	@:overload @:synchronized private function open(manual : Bool) : Void;
	
	/**
	* The default implementation of this method just determines whether
	* this line is a source or target line, calls open(no-arg) on the
	* mixer, and adds the line to the appropriate vector.
	* The mixer may be opened at a format different than the line's
	* format if it is a DataLine.
	*/
	@:overload @:synchronized private function open(line : javax.sound.sampled.Line) : Void;
	
	/**
	* Removes this line from the list of open source lines and
	* open target lines, if it exists in either.
	* If the list is now empty, closes the mixer.
	*/
	@:overload @:synchronized private function close(line : javax.sound.sampled.Line) : Void;
	
	/**
	* Close all lines and then close this mixer.
	*/
	@:overload @:synchronized override public function close() : Void;
	
	/**
	* Starts the mixer.
	*/
	@:overload @:synchronized private function start(line : javax.sound.sampled.Line) : Void;
	
	/**
	* Stops the mixer if this was the last running line.
	*/
	@:overload @:synchronized private function stop(line : javax.sound.sampled.Line) : Void;
	
	/**
	* Obtains the <code>Line.Info</code> object describing this
	* line.
	* @return description of the line
	*/
	@:overload override public function getLineInfo() : Line_Info;
	
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
	* Indicates whether the line supports a control of the specified type.
	* Some controls may only be available when the line is open.
	* @param control the type of the control for which support is queried
	* @return <code>true</code> if at least one control of the specified type is
	* supported, otherwise <code>false</code>.
	*/
	@:overload override public function isControlSupported(control : javax.sound.sampled.Control.Control_Type) : Bool;
	
	/**
	* Obtains the set of controls associated with this line.
	* Some controls may only be available when the line is open.
	* If there are no controls, this method returns an array of length 0.
	* @return the array of controls
	* @see #getControl
	*/
	@:overload override public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
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
