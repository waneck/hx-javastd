package javax.sound.midi;
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
extern class MidiFileFormat
{
	/**
	* Represents unknown length.
	* @see #getByteLength
	* @see #getMicrosecondLength
	*/
	public static var UNKNOWN_LENGTH(default, null) : Int;
	
	/**
	* The type of MIDI file.
	*/
	private var type : Int;
	
	/**
	* The division type of the MIDI file.
	*
	* @see Sequence#PPQ
	* @see Sequence#SMPTE_24
	* @see Sequence#SMPTE_25
	* @see Sequence#SMPTE_30DROP
	* @see Sequence#SMPTE_30
	*/
	private var divisionType : Single;
	
	/**
	* The timing resolution of the MIDI file.
	*/
	private var resolution : Int;
	
	/**
	* The length of the MIDI file in bytes.
	*/
	private var byteLength : Int;
	
	/**
	* The duration of the MIDI file in microseconds.
	*/
	private var microsecondLength : haxe.Int64;
	
	/**
	* Constructs a <code>MidiFileFormat</code>.
	*
	* @param type the MIDI file type (0, 1, or 2)
	* @param divisionType the timing division type (PPQ or one of the SMPTE types)
	* @param resolution the timing resolution
	* @param bytes the length of the MIDI file in bytes, or UNKNOWN_LENGTH if not known
	* @param microseconds the duration of the file in microseconds, or UNKNOWN_LENGTH if not known
	* @see #UNKNOWN_LENGTH
	* @see Sequence#PPQ
	* @see Sequence#SMPTE_24
	* @see Sequence#SMPTE_25
	* @see Sequence#SMPTE_30DROP
	* @see Sequence#SMPTE_30
	*/
	@:overload public function new(type : Int, divisionType : Single, resolution : Int, bytes : Int, microseconds : haxe.Int64) : Void;
	
	/**
	* Construct a <code>MidiFileFormat</code> with a set of properties.
	*
	* @param type         the MIDI file type (0, 1, or 2)
	* @param divisionType the timing division type
	*      (PPQ or one of the SMPTE types)
	* @param resolution   the timing resolution
	* @param bytes the length of the MIDI file in bytes,
	*      or UNKNOWN_LENGTH if not known
	* @param microseconds the duration of the file in microseconds,
	*      or UNKNOWN_LENGTH if not known
	* @param properties  a <code>Map&lt;String,Object&gt;</code> object
	*        with properties
	*
	* @see #UNKNOWN_LENGTH
	* @see Sequence#PPQ
	* @see Sequence#SMPTE_24
	* @see Sequence#SMPTE_25
	* @see Sequence#SMPTE_30DROP
	* @see Sequence#SMPTE_30
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(type : Int, divisionType : Single, resolution : Int, bytes : Int, microseconds : haxe.Int64, properties : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Obtains the MIDI file type.
	* @return the file's type (0, 1, or 2)
	*/
	@:overload public function getType() : Int;
	
	/**
	* Obtains the timing division type for the MIDI file.
	*
	* @return the division type (PPQ or one of the SMPTE types)
	*
	* @see Sequence#Sequence(float, int)
	* @see Sequence#PPQ
	* @see Sequence#SMPTE_24
	* @see Sequence#SMPTE_25
	* @see Sequence#SMPTE_30DROP
	* @see Sequence#SMPTE_30
	* @see Sequence#getDivisionType()
	*/
	@:overload public function getDivisionType() : Single;
	
	/**
	* Obtains the timing resolution for the MIDI file.
	* If the division type is PPQ, the resolution is specified in ticks per beat.
	* For SMTPE timing, the resolution is specified in ticks per frame.
	*
	* @return the number of ticks per beat (PPQ) or per frame (SMPTE)
	* @see #getDivisionType
	* @see Sequence#getResolution()
	*/
	@:overload public function getResolution() : Int;
	
	/**
	* Obtains the length of the MIDI file, expressed in 8-bit bytes.
	* @return the number of bytes in the file, or UNKNOWN_LENGTH if not known
	* @see #UNKNOWN_LENGTH
	*/
	@:overload public function getByteLength() : Int;
	
	/**
	* Obtains the length of the MIDI file, expressed in microseconds.
	* @return the file's duration in microseconds, or UNKNOWN_LENGTH if not known
	* @see Sequence#getMicrosecondLength()
	* @see #getByteLength
	* @see #UNKNOWN_LENGTH
	*/
	@:overload public function getMicrosecondLength() : haxe.Int64;
	
	/**
	* Obtain an unmodifiable map of properties.
	* The concept of properties is further explained in
	* the {@link MidiFileFormat class description}.
	*
	* @return a <code>Map&lt;String,Object&gt;</code> object containing
	*         all properties. If no properties are recognized, an empty map is
	*         returned.
	*
	* @see #getProperty(String)
	* @since 1.5
	*/
	@:require(java5) @:overload public function properties() : java.util.Map<String, Dynamic>;
	
	/**
	* Obtain the property value specified by the key.
	* The concept of properties is further explained in
	* the {@link MidiFileFormat class description}.
	*
	* <p>If the specified property is not defined for a
	* particular file format, this method returns
	* <code>null</code>.
	*
	* @param key the key of the desired property
	* @return the value of the property with the specified key,
	*         or <code>null</code> if the property does not exist.
	*
	* @see #properties()
	* @since 1.5
	*/
	@:require(java5) @:overload public function getProperty(key : String) : Dynamic;
	
	
}
