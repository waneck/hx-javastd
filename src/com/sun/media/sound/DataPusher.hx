package com.sun.media.sound;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Class to write an AudioInputStream to a SourceDataLine.
* Was previously an inner class in various classes like JavaSoundAudioClip
* and sun.audio.AudioDevice.
* It auto-opens and closes the SourceDataLine.
*
* @author Kara Kytle
* @author Florian Bomers
*/
extern class DataPusher implements java.lang.Runnable
{
	@:overload public function new(sourceLine : javax.sound.sampled.SourceDataLine, format : javax.sound.sampled.AudioFormat, audioData : java.NativeArray<java.StdTypes.Int8>, byteLength : Int) : Void;
	
	@:overload public function new(sourceLine : javax.sound.sampled.SourceDataLine, ais : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload @:synchronized public function start() : Void;
	
	@:overload @:synchronized public function start(loop : Bool) : Void;
	
	@:overload @:synchronized public function stop() : Void;
	
	/**
	* Write data to the source data line.
	*/
	@:overload public function run() : Void;
	
	
}
