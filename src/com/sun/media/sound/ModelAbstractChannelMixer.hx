package com.sun.media.sound;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
/**
* ModelAbstractChannelMixer is ready for use class to implement
* ModelChannelMixer interface.
*
* @author Karl Helgason
*/
extern class ModelAbstractChannelMixer implements com.sun.media.sound.ModelChannelMixer
{
	@:overload @:abstract public function process(buffer : java.NativeArray<java.NativeArray<Single>>, offset : Int, len : Int) : Bool;
	
	@:overload @:abstract public function stop() : Void;
	
	@:overload public function allNotesOff() : Void;
	
	@:overload public function allSoundOff() : Void;
	
	@:overload public function controlChange(controller : Int, value : Int) : Void;
	
	@:overload public function getChannelPressure() : Int;
	
	@:overload public function getController(controller : Int) : Int;
	
	@:overload public function getMono() : Bool;
	
	@:overload public function getMute() : Bool;
	
	@:overload public function getOmni() : Bool;
	
	@:overload public function getPitchBend() : Int;
	
	@:overload public function getPolyPressure(noteNumber : Int) : Int;
	
	@:overload public function getProgram() : Int;
	
	@:overload public function getSolo() : Bool;
	
	@:overload public function localControl(on : Bool) : Bool;
	
	@:overload public function noteOff(noteNumber : Int) : Void;
	
	@:overload public function noteOff(noteNumber : Int, velocity : Int) : Void;
	
	@:overload public function noteOn(noteNumber : Int, velocity : Int) : Void;
	
	@:overload public function programChange(program : Int) : Void;
	
	@:overload public function programChange(bank : Int, program : Int) : Void;
	
	@:overload public function resetAllControllers() : Void;
	
	@:overload public function setChannelPressure(pressure : Int) : Void;
	
	@:overload public function setMono(on : Bool) : Void;
	
	@:overload public function setMute(mute : Bool) : Void;
	
	@:overload public function setOmni(on : Bool) : Void;
	
	@:overload public function setPitchBend(bend : Int) : Void;
	
	@:overload public function setPolyPressure(noteNumber : Int, pressure : Int) : Void;
	
	@:overload public function setSolo(soloState : Bool) : Void;
	
	
}
