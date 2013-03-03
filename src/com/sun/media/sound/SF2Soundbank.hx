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
extern class SF2Soundbank implements javax.sound.midi.Soundbank
{
	/**
	* A SoundFont 2.04 soundbank reader.
	*
	* Based on SoundFont 2.04 specification from:
	* <p>  http://developer.creative.com <br>
	*      http://www.soundfont.com/ ;
	*
	* @author Karl Helgason
	*/
	@:protected private var major : Int;
	
	@:protected private var minor : Int;
	
	@:protected private var targetEngine : String;
	
	@:protected private var name : String;
	
	@:protected private var romName : String;
	
	@:protected private var romVersionMajor : Int;
	
	@:protected private var romVersionMinor : Int;
	
	@:protected private var creationDate : String;
	
	@:protected private var engineers : String;
	
	@:protected private var product : String;
	
	@:protected private var copyright : String;
	
	@:protected private var comments : String;
	
	@:protected private var tools : String;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(url : java.net.URL) : Void;
	
	@:overload @:public public function new(file : java.io.File) : Void;
	
	@:overload @:public public function new(inputstream : java.io.InputStream) : Void;
	
	@:overload @:public public function save(name : String) : Void;
	
	@:overload @:public public function save(file : java.io.File) : Void;
	
	@:overload @:public public function save(out : java.io.OutputStream) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getVersion() : String;
	
	@:overload @:public public function getVendor() : String;
	
	@:overload @:public public function getDescription() : String;
	
	@:overload @:public public function setName(s : String) : Void;
	
	@:overload @:public public function setVendor(s : String) : Void;
	
	@:overload @:public public function setDescription(s : String) : Void;
	
	@:overload @:public public function getResources() : java.NativeArray<javax.sound.midi.SoundbankResource>;
	
	@:overload @:public public function getInstruments() : java.NativeArray<com.sun.media.sound.SF2Instrument>;
	
	@:overload @:public public function getLayers() : java.NativeArray<com.sun.media.sound.SF2Layer>;
	
	@:overload @:public public function getSamples() : java.NativeArray<com.sun.media.sound.SF2Sample>;
	
	@:overload @:public public function getInstrument(patch : javax.sound.midi.Patch) : javax.sound.midi.Instrument;
	
	@:overload @:public public function getCreationDate() : String;
	
	@:overload @:public public function setCreationDate(creationDate : String) : Void;
	
	@:overload @:public public function getProduct() : String;
	
	@:overload @:public public function setProduct(product : String) : Void;
	
	@:overload @:public public function getRomName() : String;
	
	@:overload @:public public function setRomName(romName : String) : Void;
	
	@:overload @:public public function getRomVersionMajor() : Int;
	
	@:overload @:public public function setRomVersionMajor(romVersionMajor : Int) : Void;
	
	@:overload @:public public function getRomVersionMinor() : Int;
	
	@:overload @:public public function setRomVersionMinor(romVersionMinor : Int) : Void;
	
	@:overload @:public public function getTargetEngine() : String;
	
	@:overload @:public public function setTargetEngine(targetEngine : String) : Void;
	
	@:overload @:public public function getTools() : String;
	
	@:overload @:public public function setTools(tools : String) : Void;
	
	@:overload @:public public function addResource(resource : javax.sound.midi.SoundbankResource) : Void;
	
	@:overload @:public public function removeResource(resource : javax.sound.midi.SoundbankResource) : Void;
	
	@:overload @:public public function addInstrument(resource : com.sun.media.sound.SF2Instrument) : Void;
	
	@:overload @:public public function removeInstrument(resource : com.sun.media.sound.SF2Instrument) : Void;
	
	
}
