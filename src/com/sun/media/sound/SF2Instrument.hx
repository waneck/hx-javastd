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
extern class SF2Instrument extends com.sun.media.sound.ModelInstrument
{
	/**
	* Soundfont instrument.
	*
	* @author Karl Helgason
	*/
	private var name : String;
	
	private var preset : Int;
	
	private var bank : Int;
	
	private var library : haxe.Int64;
	
	private var genre : haxe.Int64;
	
	private var morphology : haxe.Int64;
	
	private var globalregion : com.sun.media.sound.SF2GlobalRegion;
	
	private var regions : java.util.List<com.sun.media.sound.SF2InstrumentRegion>;
	
	@:overload public function new() : Void;
	
	@:overload public function new(soundbank : com.sun.media.sound.SF2Soundbank) : Void;
	
	@:overload override public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	@:overload override public function getPatch() : javax.sound.midi.Patch;
	
	@:overload public function setPatch(patch : javax.sound.midi.Patch) : Void;
	
	@:overload override public function getData() : Dynamic;
	
	@:overload public function getGenre() : haxe.Int64;
	
	@:overload public function setGenre(genre : haxe.Int64) : Void;
	
	@:overload public function getLibrary() : haxe.Int64;
	
	@:overload public function setLibrary(library : haxe.Int64) : Void;
	
	@:overload public function getMorphology() : haxe.Int64;
	
	@:overload public function setMorphology(morphology : haxe.Int64) : Void;
	
	@:overload public function getRegions() : java.util.List<com.sun.media.sound.SF2InstrumentRegion>;
	
	@:overload public function getGlobalRegion() : com.sun.media.sound.SF2GlobalRegion;
	
	@:overload public function setGlobalZone(zone : com.sun.media.sound.SF2GlobalRegion) : Void;
	
	@:overload public function toString() : String;
	
	@:overload override public function getPerformers() : java.NativeArray<com.sun.media.sound.ModelPerformer>;
	
	@:overload private static function convertDestination(dst : Int, amountcorrection : java.NativeArray<Float>, extrasrc : java.NativeArray<com.sun.media.sound.ModelSource>) : com.sun.media.sound.ModelDestination;
	
	
}
