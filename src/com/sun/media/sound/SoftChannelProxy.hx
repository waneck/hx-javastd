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
extern class SoftChannelProxy implements javax.sound.midi.MidiChannel
{
	@:overload @:public public function getChannel() : javax.sound.midi.MidiChannel;
	
	@:overload @:public public function setChannel(channel : javax.sound.midi.MidiChannel) : Void;
	
	@:overload @:public public function allNotesOff() : Void;
	
	@:overload @:public public function allSoundOff() : Void;
	
	@:overload @:public public function controlChange(controller : Int, value : Int) : Void;
	
	@:overload @:public public function getChannelPressure() : Int;
	
	@:overload @:public public function getController(controller : Int) : Int;
	
	@:overload @:public public function getMono() : Bool;
	
	@:overload @:public public function getMute() : Bool;
	
	@:overload @:public public function getOmni() : Bool;
	
	@:overload @:public public function getPitchBend() : Int;
	
	@:overload @:public public function getPolyPressure(noteNumber : Int) : Int;
	
	@:overload @:public public function getProgram() : Int;
	
	@:overload @:public public function getSolo() : Bool;
	
	@:overload @:public public function localControl(on : Bool) : Bool;
	
	@:overload @:public public function noteOff(noteNumber : Int) : Void;
	
	@:overload @:public public function noteOff(noteNumber : Int, velocity : Int) : Void;
	
	@:overload @:public public function noteOn(noteNumber : Int, velocity : Int) : Void;
	
	@:overload @:public public function programChange(program : Int) : Void;
	
	@:overload @:public public function programChange(bank : Int, program : Int) : Void;
	
	@:overload @:public public function resetAllControllers() : Void;
	
	@:overload @:public public function setChannelPressure(pressure : Int) : Void;
	
	@:overload @:public public function setMono(on : Bool) : Void;
	
	@:overload @:public public function setMute(mute : Bool) : Void;
	
	@:overload @:public public function setOmni(on : Bool) : Void;
	
	@:overload @:public public function setPitchBend(bend : Int) : Void;
	
	@:overload @:public public function setPolyPressure(noteNumber : Int, pressure : Int) : Void;
	
	@:overload @:public public function setSolo(soloState : Bool) : Void;
	
	
}
