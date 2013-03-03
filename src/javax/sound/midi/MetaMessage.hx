package javax.sound.midi;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class MetaMessage extends javax.sound.midi.MidiMessage
{
	/**
	* Status byte for <code>MetaMessage</code> (0xFF, or 255), which is used
	* in MIDI files.  It has the same value as SYSTEM_RESET, which
	* is used in the real-time "MIDI wire" protocol.
	* @see MidiMessage#getStatus
	*/
	@:public @:static @:final public static var META(default, null) : Int;
	
	/**
	* Constructs a new <code>MetaMessage</code>. The contents of
	* the message are not set here; use
	* {@link #setMessage(int, byte[], int) setMessage}
	* to set them subsequently.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new {@code MetaMessage} and sets the message parameters.
	* The contents of the message can be changed by using
	* the {@code setMessage} method.
	*
	* @param type   meta-message type (must be less than 128)
	* @param data   the data bytes in the MIDI message
	* @param length an amount of bytes in the {@code data} byte array;
	*     it should be non-negative and less than or equal to
	*     {@code data.length}
	* @throws InvalidMidiDataException if the parameter values do not specify
	*     a valid MIDI meta message
	* @see #setMessage(int, byte[], int)
	* @see #getType()
	* @see #getData()
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(type : Int, data : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Constructs a new <code>MetaMessage</code>.
	* @param data an array of bytes containing the complete message.
	* The message data may be changed using the <code>setMessage</code>
	* method.
	* @see #setMessage
	*/
	@:overload @:protected private function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the message parameters for a <code>MetaMessage</code>.
	* Since only one status byte value, <code>0xFF</code>, is allowed for meta-messages,
	* it does not need to be specified here.  Calls to <code>{@link MidiMessage#getStatus getStatus}</code> return
	* <code>0xFF</code> for all meta-messages.
	* <p>
	* The <code>type</code> argument should be a valid value for the byte that
	* follows the status byte in the <code>MetaMessage</code>.  The <code>data</code> argument
	* should contain all the subsequent bytes of the <code>MetaMessage</code>.  In other words,
	* the byte that specifies the type of <code>MetaMessage</code> is not considered a data byte.
	*
	* @param type              meta-message type (must be less than 128)
	* @param data              the data bytes in the MIDI message
	* @param length    the number of bytes in the <code>data</code>
	* byte array
	* @throws                  <code>InvalidMidiDataException</code>  if the
	* parameter values do not specify a valid MIDI meta message
	*/
	@:overload @:public public function setMessage(type : Int, data : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Obtains the type of the <code>MetaMessage</code>.
	* @return an integer representing the <code>MetaMessage</code> type
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Obtains a copy of the data for the meta message.  The returned
	* array of bytes does not include the status byte or the message
	* length data.  The length of the data for the meta message is
	* the length of the array.  Note that the length of the entire
	* message includes the status byte and the meta message type
	* byte, and therefore may be longer than the returned array.
	* @return array containing the meta message data.
	* @see MidiMessage#getLength
	*/
	@:overload @:public public function getData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates a new object of the same class and with the same contents
	* as this object.
	* @return a clone of this instance
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	
}
