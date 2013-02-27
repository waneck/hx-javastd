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
extern class SoftJitterCorrector extends javax.sound.sampled.AudioInputStream
{
	@:overload public function new(stream : javax.sound.sampled.AudioInputStream, buffersize : Int, smallbuffersize : Int) : Void;
	
	
}
/**
* A jitter corrector to be used with SoftAudioPusher.
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$SoftJitterCorrector$JitterStream') @:internal extern class SoftJitterCorrector_JitterStream extends java.io.InputStream
{
	@:overload public function nextReadBuffer() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function nextWriteBuffer() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function commit() : Void;
	
	@:overload public function new(s : javax.sound.sampled.AudioInputStream, buffersize : Int, smallbuffersize : Int) : Void;
	
	@:overload override public function close() : Void;
	
	@:overload override public function read() : Int;
	
	@:overload public function fillBuffer() : Void;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function available() : Int;
	
	
}