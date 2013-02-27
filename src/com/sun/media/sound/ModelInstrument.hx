package com.sun.media.sound;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ModelInstrument extends javax.sound.midi.Instrument
{
	/**
	* The model instrument class.
	*
	* <p>The main methods to override are:<br>
	* getPerformer, getDirector, getChannelMixer.
	*
	* <p>Performers are used to define what voices which will
	* playback when using the instrument.<br>
	*
	* ChannelMixer is used to add channel-wide processing
	* on voices output or to define non-voice oriented instruments.<br>
	*
	* Director is used to change how the synthesizer
	* chooses what performers to play on midi events.
	*
	* @author Karl Helgason
	*/
	@:overload private function new(soundbank : javax.sound.midi.Soundbank, patch : javax.sound.midi.Patch, name : String, dataClass : Class<Dynamic>) : Void;
	
	@:overload public function getDirector(performers : java.NativeArray<com.sun.media.sound.ModelPerformer>, channel : javax.sound.midi.MidiChannel, player : com.sun.media.sound.ModelDirectedPlayer) : com.sun.media.sound.ModelDirector;
	
	@:overload public function getPerformers() : java.NativeArray<com.sun.media.sound.ModelPerformer>;
	
	@:overload public function getChannelMixer(channel : javax.sound.midi.MidiChannel, format : javax.sound.sampled.AudioFormat) : com.sun.media.sound.ModelChannelMixer;
	
	@:overload public function getPatchAlias() : javax.sound.midi.Patch;
	
	@:overload public function getKeys() : java.NativeArray<String>;
	
	@:overload public function getChannels() : java.NativeArray<Bool>;
	
	
}
