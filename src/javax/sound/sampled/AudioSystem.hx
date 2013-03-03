package javax.sound.sampled;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AudioSystem
{
	/**
	* An integer that stands for an unknown numeric value.
	* This value is appropriate only for signed quantities that do not
	* normally take negative values.  Examples include file sizes, frame
	* sizes, buffer sizes, and sample rates.
	* A number of Java Sound constructors accept
	* a value of <code>NOT_SPECIFIED</code> for such parameters.  Other
	* methods may also accept or return this value, as documented.
	*/
	@:public @:static @:final public static var NOT_SPECIFIED(default, null) : Int;
	
	/**
	* Obtains an array of mixer info objects that represents
	* the set of audio mixers that are currently installed on the system.
	* @return an array of info objects for the currently installed mixers.  If no mixers
	* are available on the system, an array of length 0 is returned.
	* @see #getMixer
	*/
	@:overload @:public @:static public static function getMixerInfo() : java.NativeArray<javax.sound.sampled.Mixer.Mixer_Info>;
	
	/**
	* Obtains the requested audio mixer.
	* @param info a <code>Mixer.Info</code> object representing the desired
	* mixer, or <code>null</code> for the system default mixer
	* @return the requested mixer
	* @throws SecurityException if the requested mixer
	* is unavailable because of security restrictions
	* @throws IllegalArgumentException if the info object does not represent
	* a mixer installed on the system
	* @see #getMixerInfo
	*/
	@:overload @:public @:static public static function getMixer(info : javax.sound.sampled.Mixer.Mixer_Info) : javax.sound.sampled.Mixer;
	
	/**
	* Obtains information about all source lines of a particular type that are supported
	* by the installed mixers.
	* @param info a <code>Line.Info</code> object that specifies the kind of
	* lines about which information is requested
	* @return an array of <code>Line.Info</code> objects describing source lines matching
	* the type requested.  If no matching source lines are supported, an array of length 0
	* is returned.
	*
	* @see Mixer#getSourceLineInfo(Line.Info)
	*/
	@:overload @:public @:static public static function getSourceLineInfo(info : javax.sound.sampled.Line.Line_Info) : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	/**
	* Obtains information about all target lines of a particular type that are supported
	* by the installed mixers.
	* @param info a <code>Line.Info</code> object that specifies the kind of
	* lines about which information is requested
	* @return an array of <code>Line.Info</code> objects describing target lines matching
	* the type requested.  If no matching target lines are supported, an array of length 0
	* is returned.
	*
	* @see Mixer#getTargetLineInfo(Line.Info)
	*/
	@:overload @:public @:static public static function getTargetLineInfo(info : javax.sound.sampled.Line.Line_Info) : java.NativeArray<javax.sound.sampled.Line.Line_Info>;
	
	/**
	* Indicates whether the system supports any lines that match
	* the specified <code>Line.Info</code> object.  A line is supported if
	* any installed mixer supports it.
	* @param info a <code>Line.Info</code> object describing the line for which support is queried
	* @return <code>true</code> if at least one matching line is
	* supported, otherwise <code>false</code>
	*
	* @see Mixer#isLineSupported(Line.Info)
	*/
	@:overload @:public @:static public static function isLineSupported(info : javax.sound.sampled.Line.Line_Info) : Bool;
	
	/**
	* Obtains a line that matches the description in the specified
	* <code>Line.Info</code> object.
	*
	* <p>If a <code>DataLine</code> is requested, and <code>info</code>
	* is an instance of <code>DataLine.Info</code> specifying at least
	* one fully qualified audio format, the last one
	* will be used as the default format of the returned
	* <code>DataLine</code>.
	*
	* <p>If system properties
	* <code>javax.sound.sampled.Clip</code>,
	* <code>javax.sound.sampled.Port</code>,
	* <code>javax.sound.sampled.SourceDataLine</code> and
	* <code>javax.sound.sampled.TargetDataLine</code> are defined
	* or they are defined in the file &quot;sound.properties&quot;,
	* they are used to retrieve default lines.
	* For details, refer to the {@link AudioSystem class description}.
	*
	* If the respective property is not set, or the mixer
	* requested in the property is not installed or does not provide the
	* requested line, all installed mixers are queried for the
	* requested line type. A Line will be returned from the first mixer
	* providing the requested line type.
	*
	* @param info a <code>Line.Info</code> object describing the desired kind of line
	* @return a line of the requested kind
	*
	* @throws LineUnavailableException if a matching line
	* is not available due to resource restrictions
	* @throws SecurityException if a matching line
	* is not available due to security restrictions
	* @throws IllegalArgumentException if the system does not
	* support at least one line matching the specified
	* <code>Line.Info</code> object
	* through any installed mixer
	*/
	@:overload @:public @:static public static function getLine(info : javax.sound.sampled.Line.Line_Info) : javax.sound.sampled.Line;
	
	/**
	* Obtains a clip that can be used for playing back
	* an audio file or an audio stream. The returned clip
	* will be provided by the default system mixer, or,
	* if not possible, by any other mixer installed in the
	* system that supports a <code>Clip</code>
	* object.
	*
	* <p>The returned clip must be opened with the
	* <code>open(AudioFormat)</code> or
	* <code>open(AudioInputStream)</code> method.
	*
	* <p>This is a high-level method that uses <code>getMixer</code>
	* and <code>getLine</code> internally.
	*
	* <p>If the system property
	* <code>javax.sound.sampled.Clip</code>
	* is defined or it is defined in the file &quot;sound.properties&quot;,
	* it is used to retrieve the default clip.
	* For details, refer to the {@link AudioSystem class description}.
	*
	* @return the desired clip object
	*
	* @throws LineUnavailableException if a clip object
	* is not available due to resource restrictions
	* @throws SecurityException if a clip object
	* is not available due to security restrictions
	* @throws IllegalArgumentException if the system does not
	* support at least one clip instance through any installed mixer
	*
	* @see #getClip(Mixer.Info)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getClip() : javax.sound.sampled.Clip;
	
	/**
	* Obtains a clip from the specified mixer that can be
	* used for playing back an audio file or an audio stream.
	*
	* <p>The returned clip must be opened with the
	* <code>open(AudioFormat)</code> or
	* <code>open(AudioInputStream)</code> method.
	*
	* <p>This is a high-level method that uses <code>getMixer</code>
	* and <code>getLine</code> internally.
	*
	* @param mixerInfo a <code>Mixer.Info</code> object representing the
	* desired mixer, or <code>null</code> for the system default mixer
	* @return a clip object from the specified mixer
	*
	* @throws LineUnavailableException if a clip
	* is not available from this mixer due to resource restrictions
	* @throws SecurityException if a clip
	* is not available from this mixer due to security restrictions
	* @throws IllegalArgumentException if the system does not
	* support at least one clip through the specified mixer
	*
	* @see #getClip()
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getClip(mixerInfo : javax.sound.sampled.Mixer.Mixer_Info) : javax.sound.sampled.Clip;
	
	/**
	* Obtains a source data line that can be used for playing back
	* audio data in the format specified by the
	* <code>AudioFormat</code> object. The returned line
	* will be provided by the default system mixer, or,
	* if not possible, by any other mixer installed in the
	* system that supports a matching
	* <code>SourceDataLine</code> object.
	*
	* <p>The returned line should be opened with the
	* <code>open(AudioFormat)</code> or
	* <code>open(AudioFormat, int)</code> method.
	*
	* <p>This is a high-level method that uses <code>getMixer</code>
	* and <code>getLine</code> internally.
	*
	* <p>The returned <code>SourceDataLine</code>'s default
	* audio format will be initialized with <code>format</code>.
	*
	* <p>If the system property
	* <code>javax.sound.sampled.SourceDataLine</code>
	* is defined or it is defined in the file &quot;sound.properties&quot;,
	* it is used to retrieve the default source data line.
	* For details, refer to the {@link AudioSystem class description}.
	*
	* @param format an <code>AudioFormat</code> object specifying
	*        the supported audio format of the returned line,
	*        or <code>null</code> for any audio format
	* @return the desired <code>SourceDataLine</code> object
	*
	* @throws LineUnavailableException if a matching source data line
	*         is not available due to resource restrictions
	* @throws SecurityException if a matching source data line
	*         is not available due to security restrictions
	* @throws IllegalArgumentException if the system does not
	*         support at least one source data line supporting the
	*         specified audio format through any installed mixer
	*
	* @see #getSourceDataLine(AudioFormat, Mixer.Info)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getSourceDataLine(format : javax.sound.sampled.AudioFormat) : javax.sound.sampled.SourceDataLine;
	
	/**
	* Obtains a source data line that can be used for playing back
	* audio data in the format specified by the
	* <code>AudioFormat</code> object, provided by the mixer
	* specified by the <code>Mixer.Info</code> object.
	*
	* <p>The returned line should be opened with the
	* <code>open(AudioFormat)</code> or
	* <code>open(AudioFormat, int)</code> method.
	*
	* <p>This is a high-level method that uses <code>getMixer</code>
	* and <code>getLine</code> internally.
	*
	* <p>The returned <code>SourceDataLine</code>'s default
	* audio format will be initialized with <code>format</code>.
	*
	* @param format an <code>AudioFormat</code> object specifying
	*        the supported audio format of the returned line,
	*        or <code>null</code> for any audio format
	* @param mixerinfo a <code>Mixer.Info</code> object representing
	*        the desired mixer, or <code>null</code> for the system
	*        default mixer
	* @return the desired <code>SourceDataLine</code> object
	*
	* @throws LineUnavailableException if a matching source data
	*         line is not available from the specified mixer due
	*         to resource restrictions
	* @throws SecurityException if a matching source data line
	*         is not available from the specified mixer due to
	*         security restrictions
	* @throws IllegalArgumentException if the specified mixer does
	*         not support at least one source data line supporting
	*         the specified audio format
	*
	* @see #getSourceDataLine(AudioFormat)
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getSourceDataLine(format : javax.sound.sampled.AudioFormat, mixerinfo : javax.sound.sampled.Mixer.Mixer_Info) : javax.sound.sampled.SourceDataLine;
	
	/**
	* Obtains a target data line that can be used for recording
	* audio data in the format specified by the
	* <code>AudioFormat</code> object. The returned line
	* will be provided by the default system mixer, or,
	* if not possible, by any other mixer installed in the
	* system that supports a matching
	* <code>TargetDataLine</code> object.
	*
	* <p>The returned line should be opened with the
	* <code>open(AudioFormat)</code> or
	* <code>open(AudioFormat, int)</code> method.
	*
	* <p>This is a high-level method that uses <code>getMixer</code>
	* and <code>getLine</code> internally.
	*
	* <p>The returned <code>TargetDataLine</code>'s default
	* audio format will be initialized with <code>format</code>.
	*
	* <p>If the system property
	* {@code javax.sound.sampled.TargetDataLine}
	* is defined or it is defined in the file &quot;sound.properties&quot;,
	* it is used to retrieve the default target data line.
	* For details, refer to the {@link AudioSystem class description}.
	*
	* @param format an <code>AudioFormat</code> object specifying
	*        the supported audio format of the returned line,
	*        or <code>null</code> for any audio format
	* @return the desired <code>TargetDataLine</code> object
	*
	* @throws LineUnavailableException if a matching target data line
	*         is not available due to resource restrictions
	* @throws SecurityException if a matching target data line
	*         is not available due to security restrictions
	* @throws IllegalArgumentException if the system does not
	*         support at least one target data line supporting the
	*         specified audio format through any installed mixer
	*
	* @see #getTargetDataLine(AudioFormat, Mixer.Info)
	* @see AudioPermission
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getTargetDataLine(format : javax.sound.sampled.AudioFormat) : javax.sound.sampled.TargetDataLine;
	
	/**
	* Obtains a target data line that can be used for recording
	* audio data in the format specified by the
	* <code>AudioFormat</code> object, provided by the mixer
	* specified by the <code>Mixer.Info</code> object.
	*
	* <p>The returned line should be opened with the
	* <code>open(AudioFormat)</code> or
	* <code>open(AudioFormat, int)</code> method.
	*
	* <p>This is a high-level method that uses <code>getMixer</code>
	* and <code>getLine</code> internally.
	*
	* <p>The returned <code>TargetDataLine</code>'s default
	* audio format will be initialized with <code>format</code>.
	*
	* @param format an <code>AudioFormat</code> object specifying
	*        the supported audio format of the returned line,
	*        or <code>null</code> for any audio format
	* @param mixerinfo a <code>Mixer.Info</code> object representing the
	*        desired mixer, or <code>null</code> for the system default mixer
	* @return the desired <code>TargetDataLine</code> object
	*
	* @throws LineUnavailableException if a matching target data
	*         line is not available from the specified mixer due
	*         to resource restrictions
	* @throws SecurityException if a matching target data line
	*         is not available from the specified mixer due to
	*         security restrictions
	* @throws IllegalArgumentException if the specified mixer does
	*         not support at least one target data line supporting
	*         the specified audio format
	*
	* @see #getTargetDataLine(AudioFormat)
	* @see AudioPermission
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getTargetDataLine(format : javax.sound.sampled.AudioFormat, mixerinfo : javax.sound.sampled.Mixer.Mixer_Info) : javax.sound.sampled.TargetDataLine;
	
	/**
	* Obtains the encodings that the system can obtain from an
	* audio input stream with the specified encoding using the set
	* of installed format converters.
	* @param sourceEncoding the encoding for which conversion support
	* is queried
	* @return array of encodings.  If <code>sourceEncoding</code>is not supported,
	* an array of length 0 is returned. Otherwise, the array will have a length
	* of at least 1, representing <code>sourceEncoding</code> (no conversion).
	*/
	@:overload @:public @:static public static function getTargetEncodings(sourceEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding) : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	/**
	* Obtains the encodings that the system can obtain from an
	* audio input stream with the specified format using the set
	* of installed format converters.
	* @param sourceFormat the audio format for which conversion
	* is queried
	* @return array of encodings. If <code>sourceFormat</code>is not supported,
	* an array of length 0 is returned. Otherwise, the array will have a length
	* of at least 1, representing the encoding of <code>sourceFormat</code> (no conversion).
	*/
	@:overload @:public @:static public static function getTargetEncodings(sourceFormat : javax.sound.sampled.AudioFormat) : java.NativeArray<javax.sound.sampled.AudioFormat.AudioFormat_Encoding>;
	
	/**
	* Indicates whether an audio input stream of the specified encoding
	* can be obtained from an audio input stream that has the specified
	* format.
	* @param targetEncoding the desired encoding after conversion
	* @param sourceFormat the audio format before conversion
	* @return <code>true</code> if the conversion is supported,
	* otherwise <code>false</code>
	*/
	@:overload @:public @:static public static function isConversionSupported(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceFormat : javax.sound.sampled.AudioFormat) : Bool;
	
	/**
	* Obtains an audio input stream of the indicated encoding, by converting the
	* provided audio input stream.
	* @param targetEncoding the desired encoding after conversion
	* @param sourceStream the stream to be converted
	* @return an audio input stream of the indicated encoding
	* @throws IllegalArgumentException if the conversion is not supported
	* @see #getTargetEncodings(AudioFormat.Encoding)
	* @see #getTargetEncodings(AudioFormat)
	* @see #isConversionSupported(AudioFormat.Encoding, AudioFormat)
	* @see #getAudioInputStream(AudioFormat, AudioInputStream)
	*/
	@:overload @:public @:static public static function getAudioInputStream(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceStream : javax.sound.sampled.AudioInputStream) : javax.sound.sampled.AudioInputStream;
	
	/**
	* Obtains the formats that have a particular encoding and that the system can
	* obtain from a stream of the specified format using the set of
	* installed format converters.
	* @param targetEncoding the desired encoding after conversion
	* @param sourceFormat the audio format before conversion
	* @return array of formats.  If no formats of the specified
	* encoding are supported, an array of length 0 is returned.
	*/
	@:overload @:public @:static public static function getTargetFormats(targetEncoding : javax.sound.sampled.AudioFormat.AudioFormat_Encoding, sourceFormat : javax.sound.sampled.AudioFormat) : java.NativeArray<javax.sound.sampled.AudioFormat>;
	
	/**
	* Indicates whether an audio input stream of a specified format
	* can be obtained from an audio input stream of another specified format.
	* @param targetFormat the desired audio format after conversion
	* @param sourceFormat the audio format before conversion
	* @return <code>true</code> if the conversion is supported,
	* otherwise <code>false</code>
	*/
	@:overload @:public @:static public static function isConversionSupported(targetFormat : javax.sound.sampled.AudioFormat, sourceFormat : javax.sound.sampled.AudioFormat) : Bool;
	
	/**
	* Obtains an audio input stream of the indicated format, by converting the
	* provided audio input stream.
	* @param targetFormat the desired audio format after conversion
	* @param sourceStream the stream to be converted
	* @return an audio input stream of the indicated format
	* @throws IllegalArgumentException if the conversion is not supported
	* #see #getTargetEncodings(AudioFormat)
	* @see #getTargetFormats(AudioFormat.Encoding, AudioFormat)
	* @see #isConversionSupported(AudioFormat, AudioFormat)
	* @see #getAudioInputStream(AudioFormat.Encoding, AudioInputStream)
	*/
	@:overload @:public @:static public static function getAudioInputStream(targetFormat : javax.sound.sampled.AudioFormat, sourceStream : javax.sound.sampled.AudioInputStream) : javax.sound.sampled.AudioInputStream;
	
	/**
	* Obtains the audio file format of the provided input stream.  The stream must
	* point to valid audio file data.  The implementation of this method may require
	* multiple parsers to examine the stream to determine whether they support it.
	* These parsers must be able to mark the stream, read enough data to determine whether they
	* support the stream, and, if not, reset the stream's read pointer to its original
	* position.  If the input stream does not support these operations, this method may fail
	* with an <code>IOException</code>.
	* @param stream the input stream from which file format information should be
	* extracted
	* @return an <code>AudioFileFormat</code> object describing the stream's audio file format
	* @throws UnsupportedAudioFileException if the stream does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an input/output exception occurs
	* @see InputStream#markSupported
	* @see InputStream#mark
	*/
	@:overload @:public @:static public static function getAudioFileFormat(stream : java.io.InputStream) : javax.sound.sampled.AudioFileFormat;
	
	/**
	* Obtains the audio file format of the specified URL.  The URL must
	* point to valid audio file data.
	* @param url the URL from which file format information should be
	* extracted
	* @return an <code>AudioFileFormat</code> object describing the audio file format
	* @throws UnsupportedAudioFileException if the URL does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an input/output exception occurs
	*/
	@:overload @:public @:static public static function getAudioFileFormat(url : java.net.URL) : javax.sound.sampled.AudioFileFormat;
	
	/**
	* Obtains the audio file format of the specified <code>File</code>.  The <code>File</code> must
	* point to valid audio file data.
	* @param file the <code>File</code> from which file format information should be
	* extracted
	* @return an <code>AudioFileFormat</code> object describing the audio file format
	* @throws UnsupportedAudioFileException if the <code>File</code> does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	*/
	@:overload @:public @:static public static function getAudioFileFormat(file : java.io.File) : javax.sound.sampled.AudioFileFormat;
	
	/**
	* Obtains an audio input stream from the provided input stream.  The stream must
	* point to valid audio file data.  The implementation of this method may
	* require multiple parsers to
	* examine the stream to determine whether they support it.  These parsers must
	* be able to mark the stream, read enough data to determine whether they
	* support the stream, and, if not, reset the stream's read pointer to its original
	* position.  If the input stream does not support these operation, this method may fail
	* with an <code>IOException</code>.
	* @param stream the input stream from which the <code>AudioInputStream</code> should be
	* constructed
	* @return an <code>AudioInputStream</code> object based on the audio file data contained
	* in the input stream.
	* @throws UnsupportedAudioFileException if the stream does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	* @see InputStream#markSupported
	* @see InputStream#mark
	*/
	@:overload @:public @:static public static function getAudioInputStream(stream : java.io.InputStream) : javax.sound.sampled.AudioInputStream;
	
	/**
	* Obtains an audio input stream from the URL provided.  The URL must
	* point to valid audio file data.
	* @param url the URL for which the <code>AudioInputStream</code> should be
	* constructed
	* @return an <code>AudioInputStream</code> object based on the audio file data pointed
	* to by the URL
	* @throws UnsupportedAudioFileException if the URL does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	*/
	@:overload @:public @:static public static function getAudioInputStream(url : java.net.URL) : javax.sound.sampled.AudioInputStream;
	
	/**
	* Obtains an audio input stream from the provided <code>File</code>.  The <code>File</code> must
	* point to valid audio file data.
	* @param file the <code>File</code> for which the <code>AudioInputStream</code> should be
	* constructed
	* @return an <code>AudioInputStream</code> object based on the audio file data pointed
	* to by the <code>File</code>
	* @throws UnsupportedAudioFileException if the <code>File</code> does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	*/
	@:overload @:public @:static public static function getAudioInputStream(file : java.io.File) : javax.sound.sampled.AudioInputStream;
	
	/**
	* Obtains the file types for which file writing support is provided by the system.
	* @return array of unique file types.  If no file types are supported,
	* an array of length 0 is returned.
	*/
	@:overload @:public @:static public static function getAudioFileTypes() : java.NativeArray<javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type>;
	
	/**
	* Indicates whether file writing support for the specified file type is provided
	* by the system.
	* @param fileType the file type for which write capabilities are queried
	* @return <code>true</code> if the file type is supported,
	* otherwise <code>false</code>
	*/
	@:overload @:public @:static public static function isFileTypeSupported(fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type) : Bool;
	
	/**
	* Obtains the file types that the system can write from the
	* audio input stream specified.
	* @param stream the audio input stream for which audio file type support
	* is queried
	* @return array of file types.  If no file types are supported,
	* an array of length 0 is returned.
	*/
	@:overload @:public @:static public static function getAudioFileTypes(stream : javax.sound.sampled.AudioInputStream) : java.NativeArray<javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type>;
	
	/**
	* Indicates whether an audio file of the specified file type can be written
	* from the indicated audio input stream.
	* @param fileType the file type for which write capabilities are queried
	* @param stream the stream for which file-writing support is queried
	* @return <code>true</code> if the file type is supported for this audio input stream,
	* otherwise <code>false</code>
	*/
	@:overload @:public @:static public static function isFileTypeSupported(fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, stream : javax.sound.sampled.AudioInputStream) : Bool;
	
	/**
	* Writes a stream of bytes representing an audio file of the specified file type
	* to the output stream provided.  Some file types require that
	* the length be written into the file header; such files cannot be written from
	* start to finish unless the length is known in advance.  An attempt
	* to write a file of such a type will fail with an IOException if the length in
	* the audio file type is <code>AudioSystem.NOT_SPECIFIED</code>.
	*
	* @param stream the audio input stream containing audio data to be
	* written to the file
	* @param fileType the kind of audio file to write
	* @param out the stream to which the file data should be written
	* @return the number of bytes written to the output stream
	* @throws IOException if an input/output exception occurs
	* @throws IllegalArgumentException if the file type is not supported by
	* the system
	* @see #isFileTypeSupported
	* @see     #getAudioFileTypes
	*/
	@:overload @:public @:static public static function write(stream : javax.sound.sampled.AudioInputStream, fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, out : java.io.OutputStream) : Int;
	
	/**
	* Writes a stream of bytes representing an audio file of the specified file type
	* to the external file provided.
	* @param stream the audio input stream containing audio data to be
	* written to the file
	* @param fileType the kind of audio file to write
	* @param out the external file to which the file data should be written
	* @return the number of bytes written to the file
	* @throws IOException if an I/O exception occurs
	* @throws IllegalArgumentException if the file type is not supported by
	* the system
	* @see #isFileTypeSupported
	* @see     #getAudioFileTypes
	*/
	@:overload @:public @:static public static function write(stream : javax.sound.sampled.AudioInputStream, fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, out : java.io.File) : Int;
	
	
}
