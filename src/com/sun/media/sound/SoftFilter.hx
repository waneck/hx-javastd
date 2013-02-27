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
* Infinite impulse response (IIR) filter class.
*
* The filters where implemented and adapted using algorithms from musicdsp.org
* archive: 1-RC and C filter, Simple 2-pole LP LP and HP filter, biquad,
* tweaked butterworth RBJ Audio-EQ-Cookbook, EQ filter kookbook
*
* @author Karl Helgason
*/
extern class SoftFilter
{
	public static var FILTERTYPE_LP6(default, null) : Int;
	
	public static var FILTERTYPE_LP12(default, null) : Int;
	
	public static var FILTERTYPE_HP12(default, null) : Int;
	
	public static var FILTERTYPE_BP12(default, null) : Int;
	
	public static var FILTERTYPE_NP12(default, null) : Int;
	
	public static var FILTERTYPE_LP24(default, null) : Int;
	
	public static var FILTERTYPE_HP24(default, null) : Int;
	
	@:overload public function new(samplerate : Single) : Void;
	
	@:overload public function setFrequency(cent : Float) : Void;
	
	@:overload public function setResonance(db : Float) : Void;
	
	@:overload public function reset() : Void;
	
	@:overload public function setFilterType(filtertype : Int) : Void;
	
	@:overload public function processAudio(sbuffer : com.sun.media.sound.SoftAudioBuffer) : Void;
	
	@:overload public function filter4(sbuffer : com.sun.media.sound.SoftAudioBuffer) : Void;
	
	@:overload public function filter2calc() : Void;
	
	@:overload public function filter2(sbuffer : com.sun.media.sound.SoftAudioBuffer) : Void;
	
	@:overload public function filter1calc() : Void;
	
	@:overload public function filter1(sbuffer : com.sun.media.sound.SoftAudioBuffer) : Void;
	
	
}
