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
extern class SoftMainMixer
{
	@:public @:final @:static public static var CHANNEL_LEFT(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_RIGHT(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_MONO(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_DELAY_LEFT(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_DELAY_RIGHT(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_DELAY_MONO(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_EFFECT1(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_EFFECT2(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_DELAY_EFFECT1(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_DELAY_EFFECT2(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_LEFT_DRY(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_RIGHT_DRY(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_SCRATCH1(default, null) : Int;
	
	@:public @:final @:static public static var CHANNEL_SCRATCH2(default, null) : Int;
	
	@:protected private var active_sensing_on : Bool;
	
	@:protected private var readfully : Bool;
	
	@:protected private var midimessages : java.util.TreeMap<Null<haxe.Int64>, Dynamic>;
	
	@:protected private var co_master : com.sun.media.sound.SoftControl;
	
	@:overload @:protected private function processAudioBuffers() : Void;
	
	@:overload @:public public function activity() : Void;
	
	@:overload @:public public function stopMixer(mixer : com.sun.media.sound.ModelChannelMixer) : Void;
	
	@:overload @:public public function registerMixer(mixer : com.sun.media.sound.ModelChannelMixer) : Void;
	
	@:overload @:public public function new(synth : com.sun.media.sound.SoftSynthesizer) : Void;
	
	@:overload @:public public function getInputStream() : javax.sound.sampled.AudioInputStream;
	
	@:overload @:public public function reset() : Void;
	
	@:overload @:public public function setVolume(value : Int) : Void;
	
	@:overload @:public public function setBalance(value : Int) : Void;
	
	@:overload @:public public function setFineTuning(value : Int) : Void;
	
	@:overload @:public public function setCoarseTuning(value : Int) : Void;
	
	@:overload @:public public function getVolume() : Int;
	
	@:overload @:public public function getBalance() : Int;
	
	@:overload @:public public function getFineTuning() : Int;
	
	@:overload @:public public function getCoarseTuning() : Int;
	
	@:overload @:public public function globalParameterControlChange(slothpath : java.NativeArray<Int>, params : java.NativeArray<haxe.Int64>, paramsvalue : java.NativeArray<haxe.Int64>) : Void;
	
	@:overload @:public public function processMessage(object : Dynamic) : Void;
	
	@:overload @:public public function processMessage(message : javax.sound.midi.MidiMessage) : Void;
	
	@:overload @:public public function processMessage(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function processMessage(ch : Int, cmd : Int, data1 : Int, data2 : Int) : Void;
	
	@:overload @:public public function getMicrosecondPosition() : haxe.Int64;
	
	@:overload @:public public function close() : Void;
	
	
}
/**
* Software synthesizer main audio mixer.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$SoftMainMixer$SoftChannelMixerContainer') @:internal extern class SoftMainMixer_SoftChannelMixerContainer
{
	
}
