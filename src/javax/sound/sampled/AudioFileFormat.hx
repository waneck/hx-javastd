package javax.sound.sampled;
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
extern class AudioFileFormat
{
	/**
	* Constructs an audio file format object.
	* This protected constructor is intended for use by providers of file-reading
	* services when returning information about an audio file or about supported audio file
	* formats.
	* @param type the type of the audio file
	* @param byteLength the length of the file in bytes, or <code>AudioSystem.NOT_SPECIFIED</code>
	* @param format the format of the audio data contained in the file
	* @param frameLength the audio data length in sample frames, or <code>AudioSystem.NOT_SPECIFIED</code>
	*
	* @see #getType
	*/
	@:overload private function new(type : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, byteLength : Int, format : javax.sound.sampled.AudioFormat, frameLength : Int) : Void;
	
	/**
	* Constructs an audio file format object.
	* This public constructor may be used by applications to describe the
	* properties of a requested audio file.
	* @param type the type of the audio file
	* @param format the format of the audio data contained in the file
	* @param frameLength the audio data length in sample frames, or <code>AudioSystem.NOT_SPECIFIED</code>
	*/
	@:overload public function new(type : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, format : javax.sound.sampled.AudioFormat, frameLength : Int) : Void;
	
	/**
	* Construct an audio file format object with a set of
	* defined properties.
	* This public constructor may be used by applications to describe the
	* properties of a requested audio file. The properties map
	* will be copied to prevent any changes to it.
	*
	* @param type        the type of the audio file
	* @param format      the format of the audio data contained in the file
	* @param frameLength the audio data length in sample frames, or
	*                    <code>AudioSystem.NOT_SPECIFIED</code>
	* @param properties  a <code>Map&lt;String,Object&gt;</code> object
	*        with properties
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(type : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, format : javax.sound.sampled.AudioFormat, frameLength : Int, properties : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Obtains the audio file type, such as <code>WAVE</code> or <code>AU</code>.
	* @return the audio file type
	*
	* @see Type#WAVE
	* @see Type#AU
	* @see Type#AIFF
	* @see Type#AIFC
	* @see Type#SND
	*/
	@:overload public function getType() : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type;
	
	/**
	* Obtains the size in bytes of the entire audio file (not just its audio data).
	* @return the audio file length in bytes
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload public function getByteLength() : Int;
	
	/**
	* Obtains the format of the audio data contained in the audio file.
	* @return the audio data format
	*/
	@:overload public function getFormat() : javax.sound.sampled.AudioFormat;
	
	/**
	* Obtains the length of the audio data contained in the file, expressed in sample frames.
	* @return the number of sample frames of audio data in the file
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload public function getFrameLength() : Int;
	
	/**
	* Obtain an unmodifiable map of properties.
	* The concept of properties is further explained in
	* the {@link AudioFileFormat class description}.
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
	* the {@link AudioFileFormat class description}.
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
	
	/**
	* Provides a string representation of the file format.
	* @return the file format as a string
	*/
	@:overload public function toString() : String;
	
	
}
/**
* An instance of the <code>Type</code> class represents one of the
* standard types of audio file.  Static instances are provided for the
* common types.
*/
@:native('javax$sound$sampled$AudioFileFormat$Type') extern class AudioFileFormat_Type
{
	/**
	* Specifies a WAVE file.
	*/
	public static var WAVE(default, null) : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type;
	
	/**
	* Specifies an AU file.
	*/
	public static var AU(default, null) : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type;
	
	/**
	* Specifies an AIFF file.
	*/
	public static var AIFF(default, null) : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type;
	
	/**
	* Specifies an AIFF-C file.
	*/
	public static var AIFC(default, null) : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type;
	
	/**
	* Specifies a SND file.
	*/
	public static var SND(default, null) : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type;
	
	/**
	* Constructs a file type.
	* @param name the string that names the file type
	* @param extension the string that commonly marks the file type
	* without leading dot.
	*/
	@:overload public function new(name : String, extension : String) : Void;
	
	/**
	* Finalizes the equals method
	*/
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Finalizes the hashCode method
	*/
	@:overload @:final public function hashCode() : Int;
	
	/**
	* Provides the file type's name as the <code>String</code> representation
	* of the file type.
	* @return the file type's name
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* Obtains the common file name extension for this file type.
	* @return file type extension
	*/
	@:overload public function getExtension() : String;
	
	
}
