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
extern class SoftReverb implements com.sun.media.sound.SoftAudioProcessor
{
	@:overload @:public public function init(samplerate : Single, controlrate : Single) : Void;
	
	@:overload @:public public function setInput(pin : Int, input : com.sun.media.sound.SoftAudioBuffer) : Void;
	
	@:overload @:public public function setOutput(pin : Int, output : com.sun.media.sound.SoftAudioBuffer) : Void;
	
	@:overload @:public public function setMixMode(mix : Bool) : Void;
	
	@:overload @:public public function processAudio() : Void;
	
	@:overload @:public public function globalParameterControlChange(slothpath : java.NativeArray<Int>, param : haxe.Int64, value : haxe.Int64) : Void;
	
	@:overload @:public public function processControlLogic() : Void;
	
	@:overload @:public public function setRoomSize(value : Single) : Void;
	
	@:overload @:public public function setPreDelay(value : Single) : Void;
	
	@:overload @:public public function setGain(gain : Single) : Void;
	
	@:overload @:public public function setDamp(value : Single) : Void;
	
	@:overload @:public public function setLightMode(light : Bool) : Void;
	
	
}
/**
* Reverb effect based on allpass/comb filters. First audio is send to 8
* parelled comb filters and then mixed together and then finally send thru 3
* different allpass filters.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$SoftReverb$Delay') @:internal extern class SoftReverb_Delay
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function setDelay(delay : Int) : Void;
	
	@:overload @:public public function processReplace(inout : java.NativeArray<Single>) : Void;
	
	
}
@:native('com$sun$media$sound$SoftReverb$AllPass') @:internal extern class SoftReverb_AllPass
{
	@:overload @:public public function new(size : Int) : Void;
	
	@:overload @:public public function setFeedBack(feedback : Single) : Void;
	
	@:overload @:public public function processReplace(inout : java.NativeArray<Single>) : Void;
	
	@:overload @:public public function processReplace(_in : java.NativeArray<Single>, out : java.NativeArray<Single>) : Void;
	
	
}
@:native('com$sun$media$sound$SoftReverb$Comb') @:internal extern class SoftReverb_Comb
{
	@:overload @:public public function new(size : Int) : Void;
	
	@:overload @:public public function setFeedBack(feedback : Single) : Void;
	
	@:overload @:public public function processMix(_in : java.NativeArray<Single>, out : java.NativeArray<Single>) : Void;
	
	@:overload @:public public function processReplace(_in : java.NativeArray<Single>, out : java.NativeArray<Single>) : Void;
	
	@:overload @:public public function setDamp(val : Single) : Void;
	
	
}
