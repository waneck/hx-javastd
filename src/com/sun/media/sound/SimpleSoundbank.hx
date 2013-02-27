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
extern class SimpleSoundbank implements javax.sound.midi.Soundbank
{
	@:overload public function getName() : String;
	
	@:overload public function getVersion() : String;
	
	@:overload public function getVendor() : String;
	
	@:overload public function getDescription() : String;
	
	@:overload public function setDescription(description : String) : Void;
	
	@:overload public function setName(name : String) : Void;
	
	@:overload public function setVendor(vendor : String) : Void;
	
	@:overload public function setVersion(version : String) : Void;
	
	@:overload public function getResources() : java.NativeArray<javax.sound.midi.SoundbankResource>;
	
	@:overload public function getInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	@:overload public function getInstrument(patch : javax.sound.midi.Patch) : javax.sound.midi.Instrument;
	
	@:overload public function addResource(resource : javax.sound.midi.SoundbankResource) : Void;
	
	@:overload public function removeResource(resource : javax.sound.midi.SoundbankResource) : Void;
	
	@:overload public function addInstrument(resource : javax.sound.midi.Instrument) : Void;
	
	@:overload public function removeInstrument(resource : javax.sound.midi.Instrument) : Void;
	
	@:overload public function addAllInstruments(soundbank : javax.sound.midi.Soundbank) : Void;
	
	@:overload public function removeAllInstruments(soundbank : javax.sound.midi.Soundbank) : Void;
	
	
}
