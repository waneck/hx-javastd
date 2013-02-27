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
extern class SF2Region
{
	/**
	* Soundfont general region.
	*
	* @author Karl Helgason
	*/
	public static var GENERATOR_STARTADDRSOFFSET(default, null) : Int;
	
	public static var GENERATOR_ENDADDRSOFFSET(default, null) : Int;
	
	public static var GENERATOR_STARTLOOPADDRSOFFSET(default, null) : Int;
	
	public static var GENERATOR_ENDLOOPADDRSOFFSET(default, null) : Int;
	
	public static var GENERATOR_STARTADDRSCOARSEOFFSET(default, null) : Int;
	
	public static var GENERATOR_MODLFOTOPITCH(default, null) : Int;
	
	public static var GENERATOR_VIBLFOTOPITCH(default, null) : Int;
	
	public static var GENERATOR_MODENVTOPITCH(default, null) : Int;
	
	public static var GENERATOR_INITIALFILTERFC(default, null) : Int;
	
	public static var GENERATOR_INITIALFILTERQ(default, null) : Int;
	
	public static var GENERATOR_MODLFOTOFILTERFC(default, null) : Int;
	
	public static var GENERATOR_MODENVTOFILTERFC(default, null) : Int;
	
	public static var GENERATOR_ENDADDRSCOARSEOFFSET(default, null) : Int;
	
	public static var GENERATOR_MODLFOTOVOLUME(default, null) : Int;
	
	public static var GENERATOR_UNUSED1(default, null) : Int;
	
	public static var GENERATOR_CHORUSEFFECTSSEND(default, null) : Int;
	
	public static var GENERATOR_REVERBEFFECTSSEND(default, null) : Int;
	
	public static var GENERATOR_PAN(default, null) : Int;
	
	public static var GENERATOR_UNUSED2(default, null) : Int;
	
	public static var GENERATOR_UNUSED3(default, null) : Int;
	
	public static var GENERATOR_UNUSED4(default, null) : Int;
	
	public static var GENERATOR_DELAYMODLFO(default, null) : Int;
	
	public static var GENERATOR_FREQMODLFO(default, null) : Int;
	
	public static var GENERATOR_DELAYVIBLFO(default, null) : Int;
	
	public static var GENERATOR_FREQVIBLFO(default, null) : Int;
	
	public static var GENERATOR_DELAYMODENV(default, null) : Int;
	
	public static var GENERATOR_ATTACKMODENV(default, null) : Int;
	
	public static var GENERATOR_HOLDMODENV(default, null) : Int;
	
	public static var GENERATOR_DECAYMODENV(default, null) : Int;
	
	public static var GENERATOR_SUSTAINMODENV(default, null) : Int;
	
	public static var GENERATOR_RELEASEMODENV(default, null) : Int;
	
	public static var GENERATOR_KEYNUMTOMODENVHOLD(default, null) : Int;
	
	public static var GENERATOR_KEYNUMTOMODENVDECAY(default, null) : Int;
	
	public static var GENERATOR_DELAYVOLENV(default, null) : Int;
	
	public static var GENERATOR_ATTACKVOLENV(default, null) : Int;
	
	public static var GENERATOR_HOLDVOLENV(default, null) : Int;
	
	public static var GENERATOR_DECAYVOLENV(default, null) : Int;
	
	public static var GENERATOR_SUSTAINVOLENV(default, null) : Int;
	
	public static var GENERATOR_RELEASEVOLENV(default, null) : Int;
	
	public static var GENERATOR_KEYNUMTOVOLENVHOLD(default, null) : Int;
	
	public static var GENERATOR_KEYNUMTOVOLENVDECAY(default, null) : Int;
	
	public static var GENERATOR_INSTRUMENT(default, null) : Int;
	
	public static var GENERATOR_RESERVED1(default, null) : Int;
	
	public static var GENERATOR_KEYRANGE(default, null) : Int;
	
	public static var GENERATOR_VELRANGE(default, null) : Int;
	
	public static var GENERATOR_STARTLOOPADDRSCOARSEOFFSET(default, null) : Int;
	
	public static var GENERATOR_KEYNUM(default, null) : Int;
	
	public static var GENERATOR_VELOCITY(default, null) : Int;
	
	public static var GENERATOR_INITIALATTENUATION(default, null) : Int;
	
	public static var GENERATOR_RESERVED2(default, null) : Int;
	
	public static var GENERATOR_ENDLOOPADDRSCOARSEOFFSET(default, null) : Int;
	
	public static var GENERATOR_COARSETUNE(default, null) : Int;
	
	public static var GENERATOR_FINETUNE(default, null) : Int;
	
	public static var GENERATOR_SAMPLEID(default, null) : Int;
	
	public static var GENERATOR_SAMPLEMODES(default, null) : Int;
	
	public static var GENERATOR_RESERVED3(default, null) : Int;
	
	public static var GENERATOR_SCALETUNING(default, null) : Int;
	
	public static var GENERATOR_EXCLUSIVECLASS(default, null) : Int;
	
	public static var GENERATOR_OVERRIDINGROOTKEY(default, null) : Int;
	
	public static var GENERATOR_UNUSED5(default, null) : Int;
	
	public static var GENERATOR_ENDOPR(default, null) : Int;
	
	private var generators : java.util.Map<Null<Int>, Null<java.StdTypes.Int16>>;
	
	private var modulators : java.util.List<com.sun.media.sound.SF2Modulator>;
	
	@:overload public function getGenerators() : java.util.Map<Null<Int>, Null<java.StdTypes.Int16>>;
	
	@:overload public function contains(generator : Int) : Bool;
	
	@:overload public static function getDefaultValue(generator : Int) : java.StdTypes.Int16;
	
	@:overload public function getShort(generator : Int) : java.StdTypes.Int16;
	
	@:overload public function putShort(generator : Int, value : java.StdTypes.Int16) : Void;
	
	@:overload public function getBytes(generator : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function putBytes(generator : Int, bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function getInteger(generator : Int) : Int;
	
	@:overload public function putInteger(generator : Int, value : Int) : Void;
	
	@:overload public function getModulators() : java.util.List<com.sun.media.sound.SF2Modulator>;
	
	
}
