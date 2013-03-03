package javax.sound.sampled.spi;
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
extern class AudioFileWriter
{
	/**
	* Obtains the file types for which file writing support is provided by this
	* audio file writer.
	* @return array of file types.  If no file types are supported,
	* an array of length 0 is returned.
	*/
	@:overload @:public @:abstract public function getAudioFileTypes() : java.NativeArray<javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type>;
	
	/**
	* Indicates whether file writing support for the specified file type is provided
	* by this audio file writer.
	* @param fileType the file type for which write capabilities are queried
	* @return <code>true</code> if the file type is supported,
	* otherwise <code>false</code>
	*/
	@:overload @:public public function isFileTypeSupported(fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type) : Bool;
	
	/**
	* Obtains the file types that this audio file writer can write from the
	* audio input stream specified.
	* @param stream the audio input stream for which audio file type support
	* is queried
	* @return array of file types.  If no file types are supported,
	* an array of length 0 is returned.
	*/
	@:overload @:public @:abstract public function getAudioFileTypes(stream : javax.sound.sampled.AudioInputStream) : java.NativeArray<javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type>;
	
	/**
	* Indicates whether an audio file of the type specified can be written
	* from the audio input stream indicated.
	* @param fileType file type for which write capabilities are queried
	* @param stream for which file writing support is queried
	* @return <code>true</code> if the file type is supported for this audio input stream,
	* otherwise <code>false</code>
	*/
	@:overload @:public public function isFileTypeSupported(fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, stream : javax.sound.sampled.AudioInputStream) : Bool;
	
	/**
	* Writes a stream of bytes representing an audio file of the file type
	* indicated to the output stream provided.  Some file types require that
	* the length be written into the file header, and cannot be written from
	* start to finish unless the length is known in advance.  An attempt
	* to write such a file type will fail with an IOException if the length in
	* the audio file format is
	* {@link javax.sound.sampled.AudioSystem#NOT_SPECIFIED AudioSystem.NOT_SPECIFIED}.
	* @param stream the audio input stream containing audio data to be
	* written to the output stream
	* @param fileType file type to be written to the output stream
	* @param out stream to which the file data should be written
	* @return the number of bytes written to the output stream
	* @throws IOException if an I/O exception occurs
	* @throws IllegalArgumentException if the file type is not supported by
	* the system
	* @see #isFileTypeSupported(AudioFileFormat.Type, AudioInputStream)
	* @see #getAudioFileTypes
	*/
	@:overload @:public @:abstract public function write(stream : javax.sound.sampled.AudioInputStream, fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, out : java.io.OutputStream) : Int;
	
	/**
	* Writes a stream of bytes representing an audio file of the file format
	* indicated to the external file provided.
	* @param stream the audio input stream containing audio data to be
	* written to the file
	* @param fileType file type to be written to the file
	* @param out external file to which the file data should be written
	* @return the number of bytes written to the file
	* @throws IOException if an I/O exception occurs
	* @throws IllegalArgumentException if the file format is not supported by
	* the system
	* @see #isFileTypeSupported
	* @see #getAudioFileTypes
	*/
	@:overload @:public @:abstract public function write(stream : javax.sound.sampled.AudioInputStream, fileType : javax.sound.sampled.AudioFileFormat.AudioFileFormat_Type, out : java.io.File) : Int;
	
	
}
