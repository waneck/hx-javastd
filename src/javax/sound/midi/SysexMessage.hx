package javax.sound.midi;
/*
* Copyright (c) 1998, 2002, Oracle and/or its affiliates. All rights reserved.
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
* A <code>SysexMessage</code> object represents a MIDI system exclusive message.
* <p>
* When a system exclusive message is read from a MIDI file, it always has
* a defined length.  Data from a system exclusive message from a MIDI file
* should be stored in the data array of a <code>SysexMessage</code> as
* follows: the system exclusive message status byte (0xF0 or 0xF7), all
* message data bytes, and finally the end-of-exclusive flag (0xF7).
* The length reported by the <code>SysexMessage</code> object is therefore
* the length of the system exclusive data plus two: one byte for the status
* byte and one for the end-of-exclusive flag.
* <p>
* As dictated by the Standard MIDI Files specification, two status byte values are legal
* for a <code>SysexMessage</code> read from a MIDI file:
* <ul>
* <li>0xF0: System Exclusive message (same as in MIDI wire protocol)</li>
* <li>0xF7: Special System Exclusive message</li>
* </ul>
* <p>
* When Java Sound is used to handle system exclusive data that is being received
* using MIDI wire protocol, it should place the data in one or more
* <code>SysexMessages</code>.  In this case, the length of the system exclusive data
* is not known in advance; the end of the system exclusive data is marked by an
* end-of-exclusive flag (0xF7) in the MIDI wire byte stream.
* <ul>
* <li>0xF0: System Exclusive message (same as in MIDI wire protocol)</li>
* <li>0xF7: End of Exclusive (EOX)</li>
* </ul>
* The first <code>SysexMessage</code> object containing data for a particular system
* exclusive message should have the status value 0xF0.  If this message contains all
* the system exclusive data
* for the message, it should end with the status byte 0xF7 (EOX).
* Otherwise, additional system exclusive data should be sent in one or more
* <code>SysexMessages</code> with a status value of 0xF7.  The <code>SysexMessage</code>
* containing the last of the data for the system exclusive message should end with the
* value 0xF7 (EOX) to mark the end of the system exclusive message.
* <p>
* If system exclusive data from <code>SysexMessages</code> objects is being transmitted
* using MIDI wire protocol, only the initial 0xF0 status byte, the system exclusive
* data itself, and the final 0xF7 (EOX) byte should be propagated; any 0xF7 status
* bytes used to indicate that a <code>SysexMessage</code> contains continuing system
* exclusive data should not be propagated via MIDI wire protocol.
*
* @author David Rivas
* @author Kara Kytle
* @author Florian Bomers
*/
extern class SysexMessage extends javax.sound.midi.MidiMessage
{
	/**
	* Status byte for System Exclusive message (0xF0, or 240).
	* @see MidiMessage#getStatus
	*/
	public static var SYSTEM_EXCLUSIVE(default, null) : Int;
	
	/**
	* Status byte for Special System Exclusive message (0xF7, or 247), which is used
	* in MIDI files.  It has the same value as END_OF_EXCLUSIVE, which
	* is used in the real-time "MIDI wire" protocol.
	* @see MidiMessage#getStatus
	*/
	public static var SPECIAL_SYSTEM_EXCLUSIVE(default, null) : Int;
	
	/**
	* Constructs a new <code>SysexMessage</code>. The
	* contents of the new message are guaranteed to specify
	* a valid MIDI message.  Subsequently, you may set the
	* contents of the message using one of the <code>setMessage</code>
	* methods.
	* @see #setMessage
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new {@code SysexMessage} and sets the data for
	* the message. The first byte of the data array must be a valid system
	* exclusive status byte (0xF0 or 0xF7).
	* The contents of the message can be changed by using one of
	* the {@code setMessage} methods.
	*
	* @param data the system exclusive message data including the status byte
	* @param length the length of the valid message data in the array,
	*     including the status byte; it should be non-negative and less than
	*     or equal to {@code data.length}
	* @throws InvalidMidiDataException if the parameter values
	*     do not specify a valid MIDI meta message.
	* @see #setMessage(byte[], int)
	* @see #setMessage(int, byte[], int)
	* @see #getData()
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(data : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Constructs a new {@code SysexMessage} and sets the data for the message.
	* The contents of the message can be changed by using one of
	* the {@code setMessage} methods.
	*
	* @param status the status byte for the message; it must be a valid system
	*     exclusive status byte (0xF0 or 0xF7)
	* @param data the system exclusive message data (without the status byte)
	* @param length the length of the valid message data in the array;
	*     it should be non-negative and less than or equal to
	*     {@code data.length}
	* @throws InvalidMidiDataException if the parameter values
	*     do not specify a valid MIDI meta message.
	* @see #setMessage(byte[], int)
	* @see #setMessage(int, byte[], int)
	* @see #getData()
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(status : Int, data : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Constructs a new <code>SysexMessage</code>.
	* @param data an array of bytes containing the complete message.
	* The message data may be changed using the <code>setMessage</code>
	* method.
	* @see #setMessage
	*/
	@:overload private function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the data for the system exclusive message.   The
	* first byte of the data array must be a valid system
	* exclusive status byte (0xF0 or 0xF7).
	* @param data the system exclusive message data
	* @param length the length of the valid message data in
	* the array, including the status byte.
	*/
	@:overload override public function setMessage(data : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Sets the data for the system exclusive message.
	* @param status the status byte for the message (0xF0 or 0xF7)
	* @param data the system exclusive message data
	* @param length the length of the valid message data in
	* the array
	*/
	@:overload public function setMessage(status : Int, data : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Obtains a copy of the data for the system exclusive message.
	* The returned array of bytes does not include the status byte.
	* @return array containing the system exclusive message data.
	*/
	@:overload public function getData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates a new object of the same class and with the same contents
	* as this object.
	* @return a clone of this instance
	*/
	@:overload override public function clone() : Dynamic;
	
	
}
