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
@:internal extern class AbstractLine implements javax.sound.sampled.Line
{
	/**
	* AbstractLine
	*
	* @author Kara Kytle
	*/
	private var info : javax.sound.sampled.Line.Line_Info;
	
	private var controls : java.NativeArray<javax.sound.sampled.Control>;
	
	private var mixer : com.sun.media.sound.AbstractMixer;
	
	/**
	* Constructs a new AbstractLine.
	* @param mixer the mixer with which this line is associated
	* @param controls set of supported controls
	*/
	@:overload private function new(info : javax.sound.sampled.Line.Line_Info, mixer : com.sun.media.sound.AbstractMixer, controls : java.NativeArray<javax.sound.sampled.Control>) : Void;
	
	@:overload public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
	@:overload public function isOpen() : Bool;
	
	@:overload public function addLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	/**
	* Removes an audio listener.
	* @param listener listener to remove
	*/
	@:overload public function removeLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	/**
	* Obtains the set of controls supported by the
	* line.  If no controls are supported, returns an
	* array of length 0.
	* @return control set
	*/
	@:overload public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
	@:overload public function isControlSupported(controlType : javax.sound.sampled.Control.Control_Type) : Bool;
	
	@:overload public function getControl(controlType : javax.sound.sampled.Control.Control_Type) : javax.sound.sampled.Control;
	
	/**
	* This method sets the open state and generates
	* events if it changes.
	*/
	@:overload private function setOpen(open : Bool) : Void;
	
	/**
	* Send line events.
	*/
	@:overload private function sendEvents(event : javax.sound.sampled.LineEvent) : Void;
	
	/**
	* This is an error in the API: getFramePosition
	* should return a long value. At CD quality,
	* the int value wraps around after 13 hours.
	*/
	@:overload @:final public function getFramePosition() : Int;
	
	/**
	* Return the frame position in a long value
	* This implementation returns AudioSystem.NOT_SPECIFIED.
	*/
	@:overload public function getLongFramePosition() : haxe.Int64;
	
	@:overload private function getMixer() : com.sun.media.sound.AbstractMixer;
	
	@:overload private function getEventDispatcher() : com.sun.media.sound.EventDispatcher;
	
	@:overload @:abstract public function open() : Void;
	
	@:overload @:abstract public function close() : Void;
	
	
}
