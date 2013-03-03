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
extern class EmergencySoundbank
{
	@:overload @:public @:static public static function createSoundbank() : com.sun.media.sound.SF2Soundbank;
	
	@:overload @:public @:static public static function new_bell(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_guitar1(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_guitar_dist(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_guitar_pick(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_gpiano(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_gpiano2(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_piano_hammer(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_piano1(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_epiano1(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_epiano2(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_bass1(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_synthbass(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_bass2(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_solostring(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_orchhit(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_string2(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_choir(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_organ(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_ch_organ(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_flute(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_horn(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_trumpet(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_brass_section(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_trombone(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_sax(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_oboe(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_bassoon(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_clarinet(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_timpani(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_melodic_toms(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_reverse_cymbal(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_snare_drum(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_bass_drum(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_tom(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_closed_hihat(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_open_hihat(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_crash_cymbal(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function new_side_stick(sf2 : com.sun.media.sound.SF2Soundbank) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function newSimpleFFTSample(sf2 : com.sun.media.sound.SF2Soundbank, name : String, data : java.NativeArray<Float>, base : Float) : com.sun.media.sound.SF2Sample;
	
	@:overload @:public @:static public static function newSimpleFFTSample(sf2 : com.sun.media.sound.SF2Soundbank, name : String, data : java.NativeArray<Float>, base : Float, fadeuptime : Int) : com.sun.media.sound.SF2Sample;
	
	@:overload @:public @:static public static function newSimpleFFTSample_dist(sf2 : com.sun.media.sound.SF2Soundbank, name : String, data : java.NativeArray<Float>, base : Float, preamp : Float) : com.sun.media.sound.SF2Sample;
	
	@:overload @:public @:static public static function newSimpleDrumSample(sf2 : com.sun.media.sound.SF2Soundbank, name : String, data : java.NativeArray<Float>) : com.sun.media.sound.SF2Sample;
	
	@:overload @:public @:static public static function newLayer(sf2 : com.sun.media.sound.SF2Soundbank, name : String, sample : com.sun.media.sound.SF2Sample) : com.sun.media.sound.SF2Layer;
	
	@:overload @:public @:static public static function newInstrument(sf2 : com.sun.media.sound.SF2Soundbank, name : String, patch : javax.sound.midi.Patch, layers : java.NativeArray<com.sun.media.sound.SF2Layer>) : com.sun.media.sound.SF2Instrument;
	
	@:overload @:static @:public public static function ifft(data : java.NativeArray<Float>) : Void;
	
	@:overload @:static @:public public static function fft(data : java.NativeArray<Float>) : Void;
	
	@:overload @:public @:static public static function complexGaussianDist(cdata : java.NativeArray<Float>, m : Float, s : Float, v : Float) : Void;
	
	@:overload @:static @:public public static function randomPhase(data : java.NativeArray<Float>) : Void;
	
	@:overload @:static @:public public static function randomPhase(data : java.NativeArray<Float>, random : java.util.Random) : Void;
	
	@:overload @:static @:public public static function normalize(data : java.NativeArray<Float>, target : Float) : Void;
	
	@:overload @:static @:public public static function normalize(data : java.NativeArray<Single>, target : Float) : Void;
	
	@:overload @:static @:public public static function realPart(_in : java.NativeArray<Float>) : java.NativeArray<Float>;
	
	@:overload @:static @:public public static function imgPart(_in : java.NativeArray<Float>) : java.NativeArray<Float>;
	
	@:overload @:static @:public public static function toFloat(_in : java.NativeArray<Float>) : java.NativeArray<Single>;
	
	@:overload @:static @:public public static function toBytes(_in : java.NativeArray<Single>, format : javax.sound.sampled.AudioFormat) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:static @:public public static function fadeUp(data : java.NativeArray<Float>, samples : Int) : Void;
	
	@:overload @:static @:public public static function fadeUp(data : java.NativeArray<Single>, samples : Int) : Void;
	
	@:overload @:static @:public public static function loopExtend(data : java.NativeArray<Float>, newsize : Int) : java.NativeArray<Float>;
	
	@:overload @:static @:public public static function loopExtend(data : java.NativeArray<Single>, newsize : Int) : java.NativeArray<Single>;
	
	
}
