package com.sun.media.sound;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SoftMixingClip extends com.sun.media.sound.SoftMixingDataLine implements javax.sound.sampled.Clip
{
	@:overload private function new(mixer : com.sun.media.sound.SoftMixingMixer, info : javax.sound.sampled.DataLine.DataLine_Info) : Void;
	
	@:overload private function processControlLogic() : Void;
	
	@:overload private function processAudioLogic(buffers : java.NativeArray<com.sun.media.sound.SoftAudioBuffer>) : Void;
	
	@:overload public function getFrameLength() : Int;
	
	@:overload public function getMicrosecondLength() : haxe.Int64;
	
	@:overload public function loop(count : Int) : Void;
	
	@:overload public function open(stream : javax.sound.sampled.AudioInputStream) : Void;
	
	@:overload public function open(format : javax.sound.sampled.AudioFormat, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, bufferSize : Int) : Void;
	
	@:overload public function setFramePosition(frames : Int) : Void;
	
	@:overload public function setLoopPoints(start : Int, end : Int) : Void;
	
	@:overload public function setMicrosecondPosition(microseconds : haxe.Int64) : Void;
	
	@:overload public function available() : Int;
	
	@:overload public function drain() : Void;
	
	@:overload public function flush() : Void;
	
	@:overload public function getBufferSize() : Int;
	
	@:overload public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload public function getFramePosition() : Int;
	
	@:overload public function getLevel() : Single;
	
	@:overload public function getLongFramePosition() : haxe.Int64;
	
	@:overload public function getMicrosecondPosition() : haxe.Int64;
	
	@:overload public function isActive() : Bool;
	
	@:overload public function isRunning() : Bool;
	
	@:overload public function start() : Void;
	
	@:overload public function stop() : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function isOpen() : Bool;
	
	@:overload public function open() : Void;
	
	
}
