package com.sun.media.sound;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class JavaSoundAudioClip implements java.applet.AudioClip implements javax.sound.midi.MetaEventListener implements javax.sound.sampled.LineListener
{
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	@:overload @:public @:synchronized public function play() : Void;
	
	@:overload @:public @:synchronized public function loop() : Void;
	
	@:overload @:public @:synchronized public function stop() : Void;
	
	@:overload @:public @:synchronized public function update(event : javax.sound.sampled.LineEvent) : Void;
	
	@:overload @:public @:synchronized public function meta(message : javax.sound.midi.MetaMessage) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:protected private function finalize() : Void;
	
	
}
/*
* private inner class representing a ByteArrayOutputStream
* which allows retrieval of the internal array
*/
@:native('com$sun$media$sound$JavaSoundAudioClip$DirectBAOS') @:internal extern class JavaSoundAudioClip_DirectBAOS extends java.io.ByteArrayOutputStream
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getInternalBuffer() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
