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
extern class SF2Sample extends javax.sound.midi.SoundbankResource
{
	/**
	* Soundfont sample storage.
	*
	* @author Karl Helgason
	*/
	@:protected private var name : String;
	
	@:protected private var startLoop : haxe.Int64;
	
	@:protected private var endLoop : haxe.Int64;
	
	@:protected private var sampleRate : haxe.Int64;
	
	@:protected private var originalPitch : Int;
	
	@:protected private var pitchCorrection : java.StdTypes.Int8;
	
	@:protected private var sampleLink : Int;
	
	@:protected private var sampleType : Int;
	
	@:protected private var data : com.sun.media.sound.ModelByteBuffer;
	
	@:protected private var data24 : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function new(soundBank : javax.sound.midi.Soundbank) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getData() : Dynamic;
	
	@:overload @:public public function getDataBuffer() : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function getData24Buffer() : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload @:public public function setData(data : com.sun.media.sound.ModelByteBuffer) : Void;
	
	@:overload @:public public function setData(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function setData(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:public public function setData24(data24 : com.sun.media.sound.ModelByteBuffer) : Void;
	
	@:overload @:public public function setData24(data24 : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function setData24(data24 : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	/*
	public void setData(File file, int offset, int length) {
	this.data = null;
	this.sampleFile = file;
	this.sampleOffset = offset;
	this.sampleLen = length;
	}
	*/
	@:overload @:public override public function getName() : String;
	
	@:overload @:public public function setName(name : String) : Void;
	
	@:overload @:public public function getEndLoop() : haxe.Int64;
	
	@:overload @:public public function setEndLoop(endLoop : haxe.Int64) : Void;
	
	@:overload @:public public function getOriginalPitch() : Int;
	
	@:overload @:public public function setOriginalPitch(originalPitch : Int) : Void;
	
	@:overload @:public public function getPitchCorrection() : java.StdTypes.Int8;
	
	@:overload @:public public function setPitchCorrection(pitchCorrection : java.StdTypes.Int8) : Void;
	
	@:overload @:public public function getSampleLink() : Int;
	
	@:overload @:public public function setSampleLink(sampleLink : Int) : Void;
	
	@:overload @:public public function getSampleRate() : haxe.Int64;
	
	@:overload @:public public function setSampleRate(sampleRate : haxe.Int64) : Void;
	
	@:overload @:public public function getSampleType() : Int;
	
	@:overload @:public public function setSampleType(sampleType : Int) : Void;
	
	@:overload @:public public function getStartLoop() : haxe.Int64;
	
	@:overload @:public public function setStartLoop(startLoop : haxe.Int64) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
