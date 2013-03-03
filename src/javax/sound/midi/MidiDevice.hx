package javax.sound.midi;
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
extern interface MidiDevice extends java.lang.AutoCloseable
{
	/**
	* Obtains information about the device, including its Java class and
	* <code>Strings</code> containing its name, vendor, and description.
	*
	* @return device info
	*/
	@:overload @:public public function getDeviceInfo() : javax.sound.midi.MidiDevice.MidiDevice_Info;
	
	/**
	* Opens the device, indicating that it should now acquire any
	* system resources it requires and become operational.
	*
	* <p>An application opening a device explicitly with this call
	* has to close the device by calling {@link #close}. This is
	* necessary to release system resources and allow applications to
	* exit cleanly.
	*
	* <p>
	* Note that some devices, once closed, cannot be reopened.  Attempts
	* to reopen such a device will always result in a MidiUnavailableException.
	*
	* @throws MidiUnavailableException thrown if the device cannot be
	* opened due to resource restrictions.
	* @throws SecurityException thrown if the device cannot be
	* opened due to security restrictions.
	*
	* @see #close
	* @see #isOpen
	*/
	@:overload @:public public function open() : Void;
	
	/**
	* Closes the device, indicating that the device should now release
	* any system resources it is using.
	*
	* <p>All <code>Receiver</code> and <code>Transmitter</code> instances
	* open from this device are closed. This includes instances retrieved
	* via <code>MidiSystem</code>.
	*
	* @see #open
	* @see #isOpen
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Reports whether the device is open.
	*
	* @return <code>true</code> if the device is open, otherwise
	* <code>false</code>
	* @see #open
	* @see #close
	*/
	@:overload @:public public function isOpen() : Bool;
	
	/**
	* Obtains the current time-stamp of the device, in microseconds.
	* If a device supports time-stamps, it should start counting at
	* 0 when the device is opened and continue incrementing its
	* time-stamp in microseconds until the device is closed.
	* If it does not support time-stamps, it should always return
	* -1.
	* @return the current time-stamp of the device in microseconds,
	* or -1 if time-stamping is not supported by the device.
	*/
	@:overload @:public public function getMicrosecondPosition() : haxe.Int64;
	
	/**
	* Obtains the maximum number of MIDI IN connections available on this
	* MIDI device for receiving MIDI data.
	* @return maximum number of MIDI IN connections,
	* or -1 if an unlimited number of connections is available.
	*/
	@:overload @:public public function getMaxReceivers() : Int;
	
	/**
	* Obtains the maximum number of MIDI OUT connections available on this
	* MIDI device for transmitting MIDI data.
	* @return maximum number of MIDI OUT connections,
	* or -1 if an unlimited number of connections is available.
	*/
	@:overload @:public public function getMaxTransmitters() : Int;
	
	/**
	* Obtains a MIDI IN receiver through which the MIDI device may receive
	* MIDI data.  The returned receiver must be closed when the application
	* has finished using it.
	*
	* <p>Usually the returned receiver implements
	* the {@code MidiDeviceReceiver} interface.
	*
	* <p>Obtaining a <code>Receiver</code> with this method does not
	* open the device. To be able to use the device, it has to be
	* opened explicitly by calling {@link #open}. Also, closing the
	* <code>Receiver</code> does not close the device. It has to be
	* closed explicitly by calling {@link #close}.
	*
	* @return a receiver for the device.
	* @throws MidiUnavailableException thrown if a receiver is not available
	* due to resource restrictions
	* @see Receiver#close()
	*/
	@:overload @:public public function getReceiver() : javax.sound.midi.Receiver;
	
	/**
	* Returns all currently active, non-closed receivers
	* connected with this MidiDevice.
	* A receiver can be removed
	* from the device by closing it.
	*
	* <p>Usually the returned receivers implement
	* the {@code MidiDeviceReceiver} interface.
	*
	* @return an unmodifiable list of the open receivers
	* @since 1.5
	*/
	@:require(java5) @:overload public function getReceivers() : java.util.List<javax.sound.midi.Receiver>;
	
	/**
	* Obtains a MIDI OUT connection from which the MIDI device will transmit
	* MIDI data  The returned transmitter must be closed when the application
	* has finished using it.
	*
	* <p>Usually the returned transmitter implements
	* the {@code MidiDeviceTransmitter} interface.
	*
	* <p>Obtaining a <code>Transmitter</code> with this method does not
	* open the device. To be able to use the device, it has to be
	* opened explicitly by calling {@link #open}. Also, closing the
	* <code>Transmitter</code> does not close the device. It has to be
	* closed explicitly by calling {@link #close}.
	*
	* @return a MIDI OUT transmitter for the device.
	* @throws MidiUnavailableException thrown if a transmitter is not available
	* due to resource restrictions
	* @see Transmitter#close()
	*/
	@:overload @:public public function getTransmitter() : javax.sound.midi.Transmitter;
	
	/**
	* Returns all currently active, non-closed transmitters
	* connected with this MidiDevice.
	* A transmitter can be removed
	* from the device by closing it.
	*
	* <p>Usually the returned transmitters implement
	* the {@code MidiDeviceTransmitter} interface.
	*
	* @return an unmodifiable list of the open transmitters
	* @since 1.5
	*/
	@:require(java5) @:overload public function getTransmitters() : java.util.List<javax.sound.midi.Transmitter>;
	
	
}
/**
* A <code>MidiDevice.Info</code> object contains assorted
* data about a <code>{@link MidiDevice}</code>, including its
* name, the company who created it, and descriptive text.
*
* @see MidiDevice#getDeviceInfo
*/
@:native('javax$sound$midi$MidiDevice$Info') extern class MidiDevice_Info
{
	/**
	* Constructs a device info object.
	*
	* @param name the name of the device
	* @param vendor the name of the company who provides the device
	* @param description a description of the device
	* @param version version information for the device
	*/
	@:overload @:protected private function new(name : String, vendor : String, description : String, version : String) : Void;
	
	/**
	* Reports whether two objects are equal.
	* Returns <code>true</code> if the objects are identical.
	* @param obj the reference object with which to compare this
	* object
	* @return <code>true</code> if this object is the same as the
	* <code>obj</code> argument; <code>false</code> otherwise
	*/
	@:overload @:public @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Finalizes the hashcode method.
	*/
	@:overload @:public @:final public function hashCode() : Int;
	
	/**
	* Obtains the name of the device.
	*
	* @return a string containing the device's name
	*/
	@:overload @:public @:final public function getName() : String;
	
	/**
	* Obtains the name of the company who supplies the device.
	* @return device the vendor's name
	*/
	@:overload @:public @:final public function getVendor() : String;
	
	/**
	* Obtains the description of the device.
	* @return a description of the device
	*/
	@:overload @:public @:final public function getDescription() : String;
	
	/**
	* Obtains the version of the device.
	* @return textual version information for the device.
	*/
	@:overload @:public @:final public function getVersion() : String;
	
	/**
	* Provides a string representation of the device information.

	* @return a description of the info object
	*/
	@:overload @:public @:final public function toString() : String;
	
	
}
