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
@:internal extern class SunCodec extends javax.sound.sampled.spi.FormatConversionProvider
{
	/**
	* Constructs a new codec object.
	*/
	@:overload @:protected private function new(inputEncodings : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>, outputEncodings : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>) : Void;
	
	/**
	*/
	@:overload @:public override public function getSourceEncodings() : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	/**
	*/
	@:overload @:public override public function getTargetEncodings() : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	/**
	*/
	@:overload @:public @:abstract override public function getTargetEncodings(sourceFormat : javax.sound.sampled.AudioFormat) : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	/**
	*/
	@:overload @:public @:abstract override public function getTargetFormats(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceFormat : javax.sound.sampled.AudioFormat) : java.NativeArray<javax.sound.sampled.AudioFormat>;
	
	/**
	*/
	@:overload @:public @:abstract override public function getAudioInputStream(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceStream : javax.sound.sampled.AudioInputStream) : javax.sound.sampled.AudioInputStream;
	
	/**
	*/
	@:overload @:public @:abstract override public function getAudioInputStream(targetFormat : javax.sound.sampled.AudioFormat, sourceStream : javax.sound.sampled.AudioInputStream) : javax.sound.sampled.AudioInputStream;
	
	
}
