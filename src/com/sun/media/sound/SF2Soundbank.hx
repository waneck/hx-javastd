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
	private var major : Int;
	
	private var minor : Int;
	
	private var targetEngine : String;
	
	private var name : String;
	
	private var romName : String;
	
	private var romVersionMajor : Int;
	
	private var romVersionMinor : Int;
	
	private var creationDate : String;
	
	private var engineers : String;
	
	private var product : String;
	
	private var copyright : String;
	
	private var comments : String;
	
	private var tools : String;
	
	@:overload public function new() : Void;
	
	@:overload public function new(url : java.net.URL) : Void;
	
	@:overload public function new(file : java.io.File) : Void;
	
	@:overload public function new(inputstream : java.io.InputStream) : Void;
	
	@:overload public function save(name : String) : Void;
	
	@:overload public function save(file : java.io.File) : Void;
	
	@:overload public function save(out : java.io.OutputStream) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getVersion() : String;
	
	@:overload public function getVendor() : String;
	
	@:overload public function getDescription() : String;
	
	@:overload public function setName(s : String) : Void;
	
	@:overload public function setVendor(s : String) : Void;
	
	@:overload public function setDescription(s : String) : Void;
	
	@:overload public function getResources() : java.NativeArray<javax.sound.midi.SoundbankResource>;
	
	@:overload public function getInstruments() : java.NativeArray<com.sun.media.sound.SF2Instrument>;
	
	@:overload public function getLayers() : java.NativeArray<com.sun.media.sound.SF2Layer>;
	
	@:overload public function getSamples() : java.NativeArray<com.sun.media.sound.SF2Sample>;
	
	@:overload public function getInstrument(patch : javax.sound.midi.Patch) : javax.sound.midi.Instrument;
	
	@:overload public function getCreationDate() : String;
	
	@:overload public function setCreationDate(creationDate : String) : Void;
	
	@:overload public function getProduct() : String;
	
	@:overload public function setProduct(product : String) : Void;
	
	@:overload public function getRomName() : String;
	
	@:overload public function setRomName(romName : String) : Void;
	
	@:overload public function getRomVersionMajor() : Int;
	
	@:overload public function setRomVersionMajor(romVersionMajor : Int) : Void;
	
	@:overload public function getRomVersionMinor() : Int;
	
	@:overload public function setRomVersionMinor(romVersionMinor : Int) : Void;
	
	@:overload public function getTargetEngine() : String;
	
	@:overload public function setTargetEngine(targetEngine : String) : Void;
	
	@:overload public function getTools() : String;
	
	@:overload public function setTools(tools : String) : Void;
	
	@:overload public function addResource(resource : javax.sound.midi.SoundbankResource) : Void;
	
	@:overload public function removeResource(resource : javax.sound.midi.SoundbankResource) : Void;
	
	@:overload public function addInstrument(resource : com.sun.media.sound.SF2Instrument) : Void;
	
	@:overload public function removeInstrument(resource : com.sun.media.sound.SF2Instrument) : Void;
	
	
}
