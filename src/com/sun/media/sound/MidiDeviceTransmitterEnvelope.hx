package com.sun.media.sound;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
* Helper class which allows to convert {@code Transmitter}
* to {@code MidiDeviceTransmitter}.
*
* @author Alex Menkov
*/
extern class MidiDeviceTransmitterEnvelope implements javax.sound.midi.MidiDeviceTransmitter
{
	/**
	* Creates a new {@code MidiDeviceTransmitterEnvelope} object which
	* envelops the specified {@code Transmitter}
	* and is owned by the specified {@code MidiDevice}.
	*
	* @param device the owner {@code MidiDevice}
	* @param transmitter the {@code Transmitter} to be enveloped
	*/
	@:overload @:public public function new(device : javax.sound.midi.MidiDevice, transmitter : javax.sound.midi.Transmitter) : Void;
	
	@:overload @:public public function setReceiver(receiver : javax.sound.midi.Receiver) : Void;
	
	@:overload @:public public function getReceiver() : javax.sound.midi.Receiver;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getMidiDevice() : javax.sound.midi.MidiDevice;
	
	/**
	* Obtains the transmitter enveloped
	* by this {@code MidiDeviceTransmitterEnvelope} object.
	*
	* @return the enveloped transmitter
	*/
	@:overload @:public public function getTransmitter() : javax.sound.midi.Transmitter;
	
	
}
