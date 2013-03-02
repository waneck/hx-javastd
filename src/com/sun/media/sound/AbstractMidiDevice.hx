package com.sun.media.sound;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Abstract AbstractMidiDevice class representing functionality shared by
* MidiInDevice and MidiOutDevice objects.
*
* @author David Rivas
* @author Kara Kytle
* @author Matthias Pfisterer
* @author Florian Bomers
*/
@:internal extern class AbstractMidiDevice implements javax.sound.midi.MidiDevice implements com.sun.media.sound.ReferenceCountingDevice
{
	/**
	* This is the device handle returned from native code
	*/
	private var id : haxe.Int64;
	
	/*
	* The initial mode and and only supported mode default to OMNI_ON_POLY.
	*/
	@:overload private function new(info : javax.sound.midi.MidiDevice.MidiDevice_Info) : Void;
	
	@:overload public function getDeviceInfo() : javax.sound.midi.MidiDevice.MidiDevice_Info;
	
	/** Open the device from an aplication program.
	* Setting the open reference count to -1 here prevents Transmitters and Receivers that
	* opened the the device implicitly from closing it. The only way to close the device after
	* this call is a call to close().
	*/
	@:overload public function open() : Void;
	
	@:overload public function close() : Void;
	
	/** Close the device for an object that implicitely opened it.
	* This method is intended to be used by Transmitter.close() and Receiver.close().
	* Those methods should pass this for the object parameter. Since Transmitters or Receivers
	* do not know if their device has been opened implicitely because of them, they call this
	* method in any case. This method now is able to seperate Receivers/Transmitters that opened
	* the device implicitely from those that didn't by looking up the R/T in the
	* openKeepingObjects list. Only if the R/T is contained there, the reference count is
	* reduced.
	*
	* @param object The object that might have been opening the device implicitely (for now,
	* this may be a Transmitter or receiver).
	*/
	@:overload public function closeInternal(object : Dynamic) : Void;
	
	@:overload public function doClose() : Void;
	
	@:overload public function isOpen() : Bool;
	
	@:overload private function implClose() : Void;
	
	/**
	* This implementation always returns -1.
	* Devices that actually provide this should over-ride
	* this method.
	*/
	@:overload public function getMicrosecondPosition() : haxe.Int64;
	
	/** Return the maximum number of Receivers supported by this device.
	Depending on the return value of hasReceivers(), this method returns either 0 or -1.
	Subclasses should rather override hasReceivers() than override this method.
	*/
	@:overload @:final public function getMaxReceivers() : Int;
	
	/** Return the maximum number of Transmitters supported by this device.
	Depending on the return value of hasTransmitters(), this method returns either 0 or -1.
	Subclasses should override hasTransmitters().
	*/
	@:overload @:final public function getMaxTransmitters() : Int;
	
	/** Retrieve a Receiver for this device.
	This method returns the value returned by createReceiver(), if it doesn't throw
	an exception. Subclasses should rather override createReceiver() than override
	this method.
	If createReceiver returns a Receiver, it is added to the internal list
	of Receivers (see getReceiversList)
	*/
	@:overload @:final public function getReceiver() : javax.sound.midi.Receiver;
	
	@:overload @:final public function getReceivers() : java.util.List<javax.sound.midi.Receiver>;
	
	/**
	* This implementation uses createTransmitter, which may throw an exception.
	* If a transmitter is returned in createTransmitter, it is added to the internal
	* TransmitterList
	*/
	@:overload @:final public function getTransmitter() : javax.sound.midi.Transmitter;
	
	@:overload @:final public function getTransmitters() : java.util.List<javax.sound.midi.Transmitter>;
	
	/** Retrieve a Receiver and open the device implicitly.
	This method is called by MidiSystem.getReceiver().
	*/
	@:overload public function getReceiverReferenceCounting() : javax.sound.midi.Receiver;
	
	/** Retrieve a Transmitter and open the device implicitly.
	This method is called by MidiSystem.getTransmitter().
	*/
	@:overload public function getTransmitterReferenceCounting() : javax.sound.midi.Transmitter;
	
	/** Returns if this device supports Receivers.
	Subclasses that use Receivers should override this method to
	return true. They also should override createReceiver().

	@return true, if the device supports Receivers, false otherwise.
	*/
	@:overload private function hasReceivers() : Bool;
	
	/** Create a Receiver object.
	throwing an exception here means that Receivers aren't enabled.
	Subclasses that use Receivers should override this method with
	one that returns objects implementing Receiver.
	Classes overriding this method should also override hasReceivers()
	to return true.
	*/
	@:overload private function createReceiver() : javax.sound.midi.Receiver;
	
	/** Return the internal list of Transmitters, possibly creating it first.
	*/
	@:overload private function getTransmitterList() : com.sun.media.sound.AbstractMidiDevice.AbstractMidiDevice_TransmitterList;
	
	/** Returns if this device supports Transmitters.
	Subclasses that use Transmitters should override this method to
	return true. They also should override createTransmitter().

	@return true, if the device supports Transmitters, false otherwise.
	*/
	@:overload private function hasTransmitters() : Bool;
	
	/** Create a Transmitter object.
	throwing an exception here means that Transmitters aren't enabled.
	Subclasses that use Transmitters should override this method with
	one that returns objects implementing Transmitters.
	Classes overriding this method should also override hasTransmitters()
	to return true.
	*/
	@:overload private function createTransmitter() : javax.sound.midi.Transmitter;
	
	@:overload @:abstract private function implOpen() : Void;
	
	/**
	* close this device if discarded by the garbage collector
	*/
	@:overload private function finalize() : Void;
	
	
}
/** Base class for Receivers.
Subclasses that use Receivers must use this base class, since it
contains magic necessary to manage implicit closing the device.
This is necessary for Receivers retrieved via MidiSystem.getReceiver()
(which opens the device implicitely).
*/
@:native('com$sun$media$sound$AbstractMidiDevice$AbstractReceiver') extern class AbstractMidiDevice_AbstractReceiver implements javax.sound.midi.MidiDeviceReceiver
{
	/** Deliver a MidiMessage.
	This method contains magic related to the closed state of a
	Receiver. Therefore, subclasses should not override this method.
	Instead, they should implement implSend().
	*/
	@:overload @:synchronized public function send(message : javax.sound.midi.MidiMessage, timeStamp : haxe.Int64) : Void;
	
	@:overload @:abstract private function implSend(message : javax.sound.midi.MidiMessage, timeStamp : haxe.Int64) : Void;
	
	/** Close the Receiver.
	* Here, the call to the magic method closeInternal() takes place.
	* Therefore, subclasses that override this method must call
	* 'super.close()'.
	*/
	@:overload public function close() : Void;
	
	@:overload public function getMidiDevice() : javax.sound.midi.MidiDevice;
	
	@:overload private function isOpen() : Bool;
	
	
}
/**
* Transmitter base class.
* This class especially makes sure the device is closed if it
* has been opened implicitly by a call to MidiSystem.getTransmitter().
* The logic of doing so is actually in closeInternal().
*
* Also, it has some optimizations regarding sending to the Receivers,
* for known Receivers, and managing itself in the TransmitterList.
*/
@:native('com$sun$media$sound$AbstractMidiDevice$BasicTransmitter') extern class AbstractMidiDevice_BasicTransmitter implements javax.sound.midi.MidiDeviceTransmitter
{
	@:overload private function new() : Void;
	
	@:overload public function setReceiver(receiver : javax.sound.midi.Receiver) : Void;
	
	@:overload public function getReceiver() : javax.sound.midi.Receiver;
	
	/** Close the Transmitter.
	* Here, the call to the magic method closeInternal() takes place.
	* Therefore, subclasses that override this method must call
	* 'super.close()'.
	*/
	@:overload public function close() : Void;
	
	@:overload public function getMidiDevice() : javax.sound.midi.MidiDevice;
	
	
}
/**
* a class to manage a list of transmitters
*/
@:native('com$sun$media$sound$AbstractMidiDevice$TransmitterList') @:internal extern class AbstractMidiDevice_TransmitterList
{
	
}
