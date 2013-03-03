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
extern class DLSRegion
{
	/**
	* This class is used to store region parts for instrument.
	* A region has a velocity and key range which it response to.
	* And it has a list of modulators/articulators which
	* is used how to synthesize a single voice.
	* It is stored inside a "rgn " List Chunk inside DLS files.
	*
	* @author Karl Helgason
	*/
	@:public @:final @:static public static var OPTION_SELFNONEXCLUSIVE(default, null) : Int;
	
	@:protected private var modulators : java.util.List<com.sun.media.sound.DLSModulator>;
	
	@:protected private var keyfrom : Int;
	
	@:protected private var keyto : Int;
	
	@:protected private var velfrom : Int;
	
	@:protected private var velto : Int;
	
	@:protected private var options : Int;
	
	@:protected private var exclusiveClass : Int;
	
	@:protected private var fusoptions : Int;
	
	@:protected private var phasegroup : Int;
	
	@:protected private var channel : haxe.Int64;
	
	@:protected private var sample : com.sun.media.sound.DLSSample;
	
	@:protected private var sampleoptions : com.sun.media.sound.DLSSampleOptions;
	
	@:overload @:public public function getModulators() : java.util.List<com.sun.media.sound.DLSModulator>;
	
	@:overload @:public public function getChannel() : haxe.Int64;
	
	@:overload @:public public function setChannel(channel : haxe.Int64) : Void;
	
	@:overload @:public public function getExclusiveClass() : Int;
	
	@:overload @:public public function setExclusiveClass(exclusiveClass : Int) : Void;
	
	@:overload @:public public function getFusoptions() : Int;
	
	@:overload @:public public function setFusoptions(fusoptions : Int) : Void;
	
	@:overload @:public public function getKeyfrom() : Int;
	
	@:overload @:public public function setKeyfrom(keyfrom : Int) : Void;
	
	@:overload @:public public function getKeyto() : Int;
	
	@:overload @:public public function setKeyto(keyto : Int) : Void;
	
	@:overload @:public public function getOptions() : Int;
	
	@:overload @:public public function setOptions(options : Int) : Void;
	
	@:overload @:public public function getPhasegroup() : Int;
	
	@:overload @:public public function setPhasegroup(phasegroup : Int) : Void;
	
	@:overload @:public public function getSample() : com.sun.media.sound.DLSSample;
	
	@:overload @:public public function setSample(sample : com.sun.media.sound.DLSSample) : Void;
	
	@:overload @:public public function getVelfrom() : Int;
	
	@:overload @:public public function setVelfrom(velfrom : Int) : Void;
	
	@:overload @:public public function getVelto() : Int;
	
	@:overload @:public public function setVelto(velto : Int) : Void;
	
	@:overload @:public public function setModulators(modulators : java.util.List<com.sun.media.sound.DLSModulator>) : Void;
	
	@:overload @:public public function getSampleoptions() : com.sun.media.sound.DLSSampleOptions;
	
	@:overload @:public public function setSampleoptions(sampleOptions : com.sun.media.sound.DLSSampleOptions) : Void;
	
	
}
