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
extern class DLSSoundbank implements javax.sound.midi.Soundbank
{
	@:overload public function new() : Void;
	
	@:overload public function new(url : java.net.URL) : Void;
	
	@:overload public function new(file : java.io.File) : Void;
	
	@:overload public function new(inputstream : java.io.InputStream) : Void;
	
	@:overload public function save(name : String) : Void;
	
	@:overload public function save(file : java.io.File) : Void;
	
	@:overload public function save(out : java.io.OutputStream) : Void;
	
	@:overload public function getInfo() : com.sun.media.sound.DLSInfo;
	
	@:overload public function getName() : String;
	
	@:overload public function getVersion() : String;
	
	@:overload public function getVendor() : String;
	
	@:overload public function getDescription() : String;
	
	@:overload public function setName(s : String) : Void;
	
	@:overload public function setVendor(s : String) : Void;
	
	@:overload public function setDescription(s : String) : Void;
	
	@:overload public function getResources() : java.NativeArray<javax.sound.midi.SoundbankResource>;
	
	@:overload public function getInstruments() : java.NativeArray<com.sun.media.sound.DLSInstrument>;
	
	@:overload public function getSamples() : java.NativeArray<com.sun.media.sound.DLSSample>;
	
	@:overload public function getInstrument(patch : javax.sound.midi.Patch) : javax.sound.midi.Instrument;
	
	@:overload public function addResource(resource : javax.sound.midi.SoundbankResource) : Void;
	
	@:overload public function removeResource(resource : javax.sound.midi.SoundbankResource) : Void;
	
	@:overload public function addInstrument(resource : com.sun.media.sound.DLSInstrument) : Void;
	
	@:overload public function removeInstrument(resource : com.sun.media.sound.DLSInstrument) : Void;
	
	@:overload public function getMajor() : haxe.Int64;
	
	@:overload public function setMajor(major : haxe.Int64) : Void;
	
	@:overload public function getMinor() : haxe.Int64;
	
	@:overload public function setMinor(minor : haxe.Int64) : Void;
	
	
}
/**
* A DLS Level 1 and Level 2 soundbank reader (from files/url/streams).
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$DLSSoundbank$DLSID') @:internal extern class DLSSoundbank_DLSID
{
	@:overload public function new(i1 : haxe.Int64, s1 : Int, s2 : Int, x1 : Int, x2 : Int, x3 : Int, x4 : Int, x5 : Int, x6 : Int, x7 : Int, x8 : Int) : Void;
	
	@:overload public static function read(riff : com.sun.media.sound.RIFFReader) : DLSSoundbank_DLSID;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
