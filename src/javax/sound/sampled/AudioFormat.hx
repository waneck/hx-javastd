package javax.sound.sampled;
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
extern class AudioFormat
{
	/**
	* The audio encoding technique used by this format.
	*/
	private var encoding : AudioFormat_Encoding;
	
	/**
	* The number of samples played or recorded per second, for sounds that have this format.
	*/
	private var sampleRate : Single;
	
	/**
	* The number of bits in each sample of a sound that has this format.
	*/
	private var sampleSizeInBits : Int;
	
	/**
	* The number of audio channels in this format (1 for mono, 2 for stereo).
	*/
	private var channels : Int;
	
	/**
	* The number of bytes in each frame of a sound that has this format.
	*/
	private var frameSize : Int;
	
	/**
	* The number of frames played or recorded per second, for sounds that have this format.
	*/
	private var frameRate : Single;
	
	/**
	* Indicates whether the audio data is stored in big-endian or little-endian order.
	*/
	private var bigEndian : Bool;
	
	/**
	* Constructs an <code>AudioFormat</code> with the given parameters.
	* The encoding specifies the convention used to represent the data.
	* The other parameters are further explained in the {@link AudioFormat
	* class description}.
	* @param encoding                  the audio encoding technique
	* @param sampleRate                the number of samples per second
	* @param sampleSizeInBits  the number of bits in each sample
	* @param channels                  the number of channels (1 for mono, 2 for stereo, and so on)
	* @param frameSize                 the number of bytes in each frame
	* @param frameRate                 the number of frames per second
	* @param bigEndian                 indicates whether the data for a single sample
	*                                                  is stored in big-endian byte order (<code>false</code>
	*                                                  means little-endian)
	*/
	@:overload public function new(encoding : AudioFormat_Encoding, sampleRate : Single, sampleSizeInBits : Int, channels : Int, frameSize : Int, frameRate : Single, bigEndian : Bool) : Void;
	
	/**
	* Constructs an <code>AudioFormat</code> with the given parameters.
	* The encoding specifies the convention used to represent the data.
	* The other parameters are further explained in the {@link AudioFormat
	* class description}.
	* @param encoding         the audio encoding technique
	* @param sampleRate       the number of samples per second
	* @param sampleSizeInBits the number of bits in each sample
	* @param channels         the number of channels (1 for mono, 2 for
	*                         stereo, and so on)
	* @param frameSize        the number of bytes in each frame
	* @param frameRate        the number of frames per second
	* @param bigEndian        indicates whether the data for a single sample
	*                         is stored in big-endian byte order
	*                         (<code>false</code> means little-endian)
	* @param properties       a <code>Map&lt;String,Object&gt;</code> object
	*                         containing format properties
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(encoding : AudioFormat_Encoding, sampleRate : Single, sampleSizeInBits : Int, channels : Int, frameSize : Int, frameRate : Single, bigEndian : Bool, properties : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Constructs an <code>AudioFormat</code> with a linear PCM encoding and
	* the given parameters.  The frame size is set to the number of bytes
	* required to contain one sample from each channel, and the frame rate
	* is set to the sample rate.
	*
	* @param sampleRate                the number of samples per second
	* @param sampleSizeInBits  the number of bits in each sample
	* @param channels                  the number of channels (1 for mono, 2 for stereo, and so on)
	* @param signed                    indicates whether the data is signed or unsigned
	* @param bigEndian                 indicates whether the data for a single sample
	*                                                  is stored in big-endian byte order (<code>false</code>
	*                                                  means little-endian)
	*/
	@:overload public function new(sampleRate : Single, sampleSizeInBits : Int, channels : Int, signed : Bool, bigEndian : Bool) : Void;
	
	/**
	* Obtains the type of encoding for sounds in this format.
	*
	* @return the encoding type
	* @see Encoding#PCM_SIGNED
	* @see Encoding#PCM_UNSIGNED
	* @see Encoding#ULAW
	* @see Encoding#ALAW
	*/
	@:overload public function getEncoding() : AudioFormat_Encoding;
	
	/**
	* Obtains the sample rate.
	* For compressed formats, the return value is the sample rate of the uncompressed
	* audio data.
	* When this AudioFormat is used for queries (e.g. {@link
	* AudioSystem#isConversionSupported(AudioFormat, AudioFormat)
	* AudioSystem.isConversionSupported}) or capabilities (e.g. {@link
	* DataLine.Info#getFormats() DataLine.Info.getFormats}), a sample rate of
	* <code>AudioSystem.NOT_SPECIFIED</code> means that any sample rate is
	* acceptable. <code>AudioSystem.NOT_SPECIFIED</code> is also returned when
	* the sample rate is not defined for this audio format.
	* @return the number of samples per second,
	* or <code>AudioSystem.NOT_SPECIFIED</code>
	*
	* @see #getFrameRate()
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload public function getSampleRate() : Single;
	
	/**
	* Obtains the size of a sample.
	* For compressed formats, the return value is the sample size of the
	* uncompressed audio data.
	* When this AudioFormat is used for queries (e.g. {@link
	* AudioSystem#isConversionSupported(AudioFormat, AudioFormat)
	* AudioSystem.isConversionSupported}) or capabilities (e.g. {@link
	* DataLine.Info#getFormats() DataLine.Info.getFormats}), a sample size of
	* <code>AudioSystem.NOT_SPECIFIED</code> means that any sample size is
	* acceptable. <code>AudioSystem.NOT_SPECIFIED</code> is also returned when
	* the sample size is not defined for this audio format.
	* @return the number of bits in each sample,
	* or <code>AudioSystem.NOT_SPECIFIED</code>
	*
	* @see #getFrameSize()
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload public function getSampleSizeInBits() : Int;
	
	/**
	* Obtains the number of channels.
	* When this AudioFormat is used for queries (e.g. {@link
	* AudioSystem#isConversionSupported(AudioFormat, AudioFormat)
	* AudioSystem.isConversionSupported}) or capabilities (e.g. {@link
	* DataLine.Info#getFormats() DataLine.Info.getFormats}), a return value of
	* <code>AudioSystem.NOT_SPECIFIED</code> means that any (positive) number of channels is
	* acceptable.
	* @return The number of channels (1 for mono, 2 for stereo, etc.),
	* or <code>AudioSystem.NOT_SPECIFIED</code>
	*
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload public function getChannels() : Int;
	
	/**
	* Obtains the frame size in bytes.
	* When this AudioFormat is used for queries (e.g. {@link
	* AudioSystem#isConversionSupported(AudioFormat, AudioFormat)
	* AudioSystem.isConversionSupported}) or capabilities (e.g. {@link
	* DataLine.Info#getFormats() DataLine.Info.getFormats}), a frame size of
	* <code>AudioSystem.NOT_SPECIFIED</code> means that any frame size is
	* acceptable. <code>AudioSystem.NOT_SPECIFIED</code> is also returned when
	* the frame size is not defined for this audio format.
	* @return the number of bytes per frame,
	* or <code>AudioSystem.NOT_SPECIFIED</code>
	*
	* @see #getSampleSizeInBits()
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload public function getFrameSize() : Int;
	
	/**
	* Obtains the frame rate in frames per second.
	* When this AudioFormat is used for queries (e.g. {@link
	* AudioSystem#isConversionSupported(AudioFormat, AudioFormat)
	* AudioSystem.isConversionSupported}) or capabilities (e.g. {@link
	* DataLine.Info#getFormats() DataLine.Info.getFormats}), a frame rate of
	* <code>AudioSystem.NOT_SPECIFIED</code> means that any frame rate is
	* acceptable. <code>AudioSystem.NOT_SPECIFIED</code> is also returned when
	* the frame rate is not defined for this audio format.
	* @return the number of frames per second,
	* or <code>AudioSystem.NOT_SPECIFIED</code>
	*
	* @see #getSampleRate()
	* @see AudioSystem#NOT_SPECIFIED
	*/
	@:overload public function getFrameRate() : Single;
	
	/**
	* Indicates whether the audio data is stored in big-endian or little-endian
	* byte order.  If the sample size is not more than one byte, the return value is
	* irrelevant.
	* @return <code>true</code> if the data is stored in big-endian byte order,
	* <code>false</code> if little-endian
	*/
	@:overload public function isBigEndian() : Bool;
	
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
	* Indicates whether this format matches the one specified.
	* To match, two formats must have the same encoding,
	* and consistent values of the number of channels, sample rate, sample size,
	* frame rate, and frame size.
	* The values of the property are consistent if they are equal
	* or the specified format has the property value
	* {@code AudioSystem.NOT_SPECIFIED}.
	* The byte order (big-endian or little-endian) must be the same
	* if the sample size is greater than one byte.
	*
	* @param format format to test for match
	* @return {@code true} if this format matches the one specified,
	*         {@code false} otherwise.
	*/
	@:overload public function matches(format : AudioFormat) : Bool;
	
	/**
	* Returns a string that describes the format, such as:
	* "PCM SIGNED 22050 Hz 16 bit mono big-endian".  The contents of the string
	* may vary between implementations of Java Sound.
	*
	* @return a string that describes the format parameters
	*/
	@:overload public function toString() : String;
	
	
}
/**
* The <code>Encoding</code> class  names the  specific type of data representation
* used for an audio stream.   The encoding includes aspects of the
* sound format other than the number of channels, sample rate, sample size,
* frame rate, frame size, and byte order.
* <p>
* One ubiquitous type of audio encoding is pulse-code modulation (PCM),
* which is simply a linear (proportional) representation of the sound
* waveform.  With PCM, the number stored in each sample is proportional
* to the instantaneous amplitude of the sound pressure at that point in
* time.  The numbers may be signed or unsigned integers or floats.
* Besides PCM, other encodings include mu-law and a-law, which are nonlinear
* mappings of the sound amplitude that are often used for recording speech.
* <p>
* You can use a predefined encoding by referring to one of the static
* objects created by this class, such as PCM_SIGNED or
* PCM_UNSIGNED.  Service providers can create new encodings, such as
* compressed audio formats, and make
* these available through the <code>{@link AudioSystem}</code> class.
* <p>
* The <code>Encoding</code> class is static, so that all
* <code>AudioFormat</code> objects that have the same encoding will refer
* to the same object (rather than different instances of the same class).
* This allows matches to be made by checking that two format's encodings
* are equal.
*
* @see AudioFormat
* @see javax.sound.sampled.spi.FormatConversionProvider
*
* @author Kara Kytle
* @since 1.3
*/
@:require(java3) @:native('javax$sound$sampled$AudioFormat$Encoding') extern class AudioFormat_Encoding
{
	/**
	* Specifies signed, linear PCM data.
	*/
	public static var PCM_SIGNED(default, null) : AudioFormat_Encoding;
	
	/**
	* Specifies unsigned, linear PCM data.
	*/
	public static var PCM_UNSIGNED(default, null) : AudioFormat_Encoding;
	
	/**
	* Specifies floating-point PCM data.
	*
	* @since 1.7
	*/
	@:require(java7) public static var PCM_FLOAT(default, null) : AudioFormat_Encoding;
	
	/**
	* Specifies u-law encoded data.
	*/
	public static var ULAW(default, null) : AudioFormat_Encoding;
	
	/**
	* Specifies a-law encoded data.
	*/
	public static var ALAW(default, null) : AudioFormat_Encoding;
	
	/**
	* Constructs a new encoding.
	* @param name  the name of the new type of encoding
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Finalizes the equals method
	*/
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Finalizes the hashCode method
	*/
	@:overload @:final public function hashCode() : Int;
	
	/**
	* Provides the <code>String</code> representation of the encoding.  This <code>String</code> is
	* the same name that was passed to the constructor.  For the predefined encodings, the name
	* is similar to the encoding's variable (field) name.  For example, <code>PCM_SIGNED.toString()</code> returns
	* the name "pcm_signed".
	*
	* @return the encoding name
	*/
	@:overload @:final public function toString() : String;
	
	
}
