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
/**
* MidiOutDevice class representing functionality of MidiOut devices.
*
* @author David Rivas
* @author Kara Kytle
* @author Florian Bomers
*/
@:internal extern class MidiOutDevice extends com.sun.media.sound.AbstractMidiDevice
{
	@:overload @:synchronized private function implOpen() : Void;
	
	@:overload @:synchronized private function implClose() : Void;
	
	@:overload public function getMicrosecondPosition() : haxe.Int64;
	
	/** Returns if this device supports Receivers.
	This implementation always returns true.
	@return true, if the device supports Receivers, false otherwise.
	*/
	@:overload private function hasReceivers() : Bool;
	
	@:overload private function createReceiver() : javax.sound.midi.Receiver;
	
	
}
@:native('com$sun$media$sound$MidiOutDevice$MidiOutReceiver') @:internal extern class MidiOutDevice_MidiOutReceiver extends com.sun.media.sound.AbstractMidiDevice.AbstractMidiDevice_AbstractReceiver
{
	@:overload private function implSend(message : javax.sound.midi.MidiMessage, timeStamp : haxe.Int64) : Void;
	
	
}
