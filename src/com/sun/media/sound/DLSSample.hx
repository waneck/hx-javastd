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
extern class DLSSample extends javax.sound.midi.SoundbankResource
{
	/**
	* This class is used to store the sample data itself.
	* A sample is encoded as PCM audio stream
	* and in DLS Level 1 files it is always a mono 8/16 bit stream.
	* They are stored just like RIFF WAVE files are stored.
	* It is stored inside a "wave" List Chunk inside DLS files.
	*
	* @author Karl Helgason
	*/
	@:protected private var guid : java.NativeArray<java.StdTypes.Int8>;
	
	@:protected private var info : com.sun.media.sound.DLSInfo;
	
	@:protected private var sampleoptions : com.sun.media.sound.DLSSampleOptions;
	
	@:protected private var data : com.sun.media.sound.ModelByteBuffer;
	
	@:protected private var format : javax.sound.sampled.AudioFormat;
	
	@:overload @:public public function new(soundBank : javax.sound.midi.Soundbank) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getInfo() : com.sun.media.sound.DLSInfo;
	
	@:overload @:public override public function getData() : Dynamic;
	
	@:overload @:public public function getDataBuffer() : com.sun.media.sound.ModelByteBuffer;
	
	@:overload @:public public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload @:public public function setFormat(format : javax.sound.sampled.AudioFormat) : Void;
	
	@:overload @:public public function setData(data : com.sun.media.sound.ModelByteBuffer) : Void;
	
	@:overload @:public public function setData(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function setData(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function getName() : String;
	
	@:overload @:public public function setName(name : String) : Void;
	
	@:overload @:public public function getSampleoptions() : com.sun.media.sound.DLSSampleOptions;
	
	@:overload @:public public function setSampleoptions(sampleOptions : com.sun.media.sound.DLSSampleOptions) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function getGuid() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function setGuid(guid : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
