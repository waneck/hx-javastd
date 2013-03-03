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
extern class SoftAbstractResampler implements com.sun.media.sound.SoftResampler
{
	@:overload @:public @:abstract public function getPadding() : Int;
	
	@:overload @:public @:abstract public function interpolate(_in : java.NativeArray<Single>, in_offset : java.NativeArray<Single>, in_end : Single, pitch : java.NativeArray<Single>, pitchstep : Single, out : java.NativeArray<Single>, out_offset : java.NativeArray<Int>, out_end : Int) : Void;
	
	@:overload @:public public function openStreamer() : com.sun.media.sound.SoftResamplerStreamer;
	
	
}
/**
* Abstract resampler class.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$SoftAbstractResampler$ModelAbstractResamplerStream') @:internal extern class SoftAbstractResampler_ModelAbstractResamplerStream implements com.sun.media.sound.SoftResamplerStreamer
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function noteOn(channel : javax.sound.midi.MidiChannel, voice : javax.sound.midi.VoiceStatus, noteNumber : Int, velocity : Int) : Void;
	
	@:overload @:public public function noteOff(velocity : Int) : Void;
	
	@:overload @:public public function open(osc : com.sun.media.sound.ModelWavetable, outputsamplerate : Single) : Void;
	
	@:overload @:public public function setPitch(pitch : Single) : Void;
	
	@:overload @:public public function nextBuffer() : Void;
	
	@:overload @:public public function reverseBuffers() : Void;
	
	@:overload @:public public function read(buffer : java.NativeArray<java.NativeArray<Single>>, offset : Int, len : Int) : Int;
	
	@:overload @:public public function close() : Void;
	
	
}
