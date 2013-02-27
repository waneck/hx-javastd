package com.sun.media.sound;
/*
* Copyright (c) 2008, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SoftMixingMixer implements javax.sound.sampled.Mixer
{
	private static var INFO_NAME(default, null) : String;
	
	private static var INFO_VENDOR(default, null) : String;
	
	private static var INFO_DESCRIPTION(default, null) : String;
	
	private static var INFO_VERSION(default, null) : String;
	
	private static var info(default, null) : javax.sound.sampled.Mixer.Mixer_Info;
	
	private var control_mutex : Dynamic;
	
	private var implicitOpen : Bool;
	
	@:overload public function new() : Void;
	
	@:overload public function getLine(info : javax.sound.sampled.Line.Line_Info) : javax.sound.sampled.Line;
	
	@:overload public function getMaxLines(info : javax.sound.sampled.Line.Line_Info) : Int;
	
	@:overload public function getMixerInfo() : javax.sound.sampled.Mixer.Mixer_Info;
	
	@:overload public function getSourceLineInfo() : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getSourceLineInfo(info : javax.sound.sampled.Line.Line_Info) : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getSourceLines() : java.NativeArray<javax.sound.sampled.Line>;
	
	@:overload public function getTargetLineInfo() : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getTargetLineInfo(info : javax.sound.sampled.Line.Line_Info) : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	@:overload public function getTargetLines() : java.NativeArray<javax.sound.sampled.Line>;
	
	@:overload public function isLineSupported(info : javax.sound.sampled.Line.Line_Info) : Bool;
	
	@:overload public function isSynchronizationSupported(lines : java.NativeArray<javax.sound.sampled.Line>, maintainSync : Bool) : Bool;
	
	@:overload public function synchronize(lines : java.NativeArray<javax.sound.sampled.Line>, maintainSync : Bool) : Void;
	
	@:overload public function unsynchronize(lines : java.NativeArray<javax.sound.sampled.Line>) : Void;
	
	@:overload public function addLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function getControl(control : javax.sound.sampled.Control.Control_Type) : javax.sound.sampled.Control;
	
	@:overload public function getControls() : java.NativeArray<javax.sound.sampled.Control>;
	
	@:overload public function getLineInfo() : javax.sound.sampled.Line.Line_Info;
	
	@:overload public function isControlSupported(control : javax.sound.sampled.Control.Control_Type) : Bool;
	
	@:overload public function isOpen() : Bool;
	
	@:overload public function open() : Void;
	
	@:overload public function open(line : javax.sound.sampled.SourceDataLine) : Void;
	
	@:overload public function openStream(targetFormat : javax.sound.sampled.AudioFormat) : javax.sound.sampled.AudioInputStream;
	
	@:overload public function removeLineListener(listener : javax.sound.sampled.LineListener) : Void;
	
	@:overload public function getLatency() : haxe.Int64;
	
	@:overload public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload private function getControlRate() : Single;
	
	@:overload private function getMainMixer() : com.sun.media.sound.SoftMixingMainMixer;
	
	
}
/**
* Software audio mixer
*
* @author Karl Helgason
*/
@:native('com$sun$media$sound$SoftMixingMixer$Info') @:internal extern class SoftMixingMixer_Info extends javax.sound.sampled.Mixer.Mixer_Info
{
	@:overload public function new() : Void;
	
	
}
