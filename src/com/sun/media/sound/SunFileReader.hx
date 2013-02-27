package com.sun.media.sound;
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
@:internal extern class SunFileReader extends javax.sound.sampled.spi.AudioFileReader
{
	/**
	* Abstract File Reader class.
	*
	* @author Jan Borgersen
	*/
	private static var bisBufferSize(default, null) : Int;
	
	/**
	* Constructs a new SunFileReader object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Obtains the audio file format of the input stream provided.  The stream must
	* point to valid audio file data.  In general, audio file providers may
	* need to read some data from the stream before determining whether they
	* support it.  These parsers must
	* be able to mark the stream, read enough data to determine whether they
	* support the stream, and, if not, reset the stream's read pointer to its original
	* position.  If the input stream does not support this, this method may fail
	* with an IOException.
	* @param stream the input stream from which file format information should be
	* extracted
	* @return an <code>AudioFileFormat</code> object describing the audio file format
	* @throws UnsupportedAudioFileException if the stream does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	* @see InputStream#markSupported
	* @see InputStream#mark
	*/
	@:overload @:abstract override public function getAudioFileFormat(stream : java.io.InputStream) : javax.sound.sampled.AudioFileFormat;
	
	/**
	* Obtains the audio file format of the URL provided.  The URL must
	* point to valid audio file data.
	* @param url the URL from which file format information should be
	* extracted
	* @return an <code>AudioFileFormat</code> object describing the audio file format
	* @throws UnsupportedAudioFileException if the URL does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	*/
	@:overload @:abstract override public function getAudioFileFormat(url : java.net.URL) : javax.sound.sampled.AudioFileFormat;
	
	/**
	* Obtains the audio file format of the File provided.  The File must
	* point to valid audio file data.
	* @param file the File from which file format information should be
	* extracted
	* @return an <code>AudioFileFormat</code> object describing the audio file format
	* @throws UnsupportedAudioFileException if the File does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	*/
	@:overload @:abstract override public function getAudioFileFormat(file : java.io.File) : javax.sound.sampled.AudioFileFormat;
	
	/**
	* Obtains an audio stream from the input stream provided.  The stream must
	* point to valid audio file data.  In general, audio file providers may
	* need to read some data from the stream before determining whether they
	* support it.  These parsers must
	* be able to mark the stream, read enough data to determine whether they
	* support the stream, and, if not, reset the stream's read pointer to its original
	* position.  If the input stream does not support this, this method may fail
	* with an IOException.
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
	@:overload @:abstract override public function getAudioInputStream(stream : java.io.InputStream) : javax.sound.sampled.AudioInputStream;
	
	/**
	* Obtains an audio stream from the URL provided.  The URL must
	* point to valid audio file data.
	* @param url the URL for which the <code>AudioInputStream</code> should be
	* constructed
	* @return an <code>AudioInputStream</code> object based on the audio file data pointed
	* to by the URL
	* @throws UnsupportedAudioFileException if the URL does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	*/
	@:overload @:abstract override public function getAudioInputStream(url : java.net.URL) : javax.sound.sampled.AudioInputStream;
	
	/**
	* Obtains an audio stream from the File provided.  The File must
	* point to valid audio file data.
	* @param file the File for which the <code>AudioInputStream</code> should be
	* constructed
	* @return an <code>AudioInputStream</code> object based on the audio file data pointed
	* to by the File
	* @throws UnsupportedAudioFileException if the File does not point to valid audio
	* file data recognized by the system
	* @throws IOException if an I/O exception occurs
	*/
	@:overload @:abstract override public function getAudioInputStream(file : java.io.File) : javax.sound.sampled.AudioInputStream;
	
	/**
	* rllong
	* Protected helper method to read 64 bits and changing the order of
	* each bytes.
	* @param DataInputStream
	* @return 32 bits swapped value.
	* @exception IOException
	*/
	@:overload private function rllong(dis : java.io.DataInputStream) : Int;
	
	/**
	* big2little
	* Protected helper method to swap the order of bytes in a 32 bit int
	* @param int
	* @return 32 bits swapped value
	*/
	@:overload private function big2little(i : Int) : Int;
	
	/**
	* rlshort
	* Protected helper method to read 16 bits value. Swap high with low byte.
	* @param DataInputStream
	* @return the swapped value.
	* @exception IOException
	*/
	@:overload private function rlshort(dis : java.io.DataInputStream) : java.StdTypes.Int16;
	
	/**
	* big2little
	* Protected helper method to swap the order of bytes in a 16 bit short
	* @param int
	* @return 16 bits swapped value
	*/
	@:overload private function big2littleShort(i : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	/** Calculates the frame size for PCM frames.
	* Note that this method is appropriate for non-packed samples.
	* For instance, 12 bit, 2 channels will return 4 bytes, not 3.
	* @param sampleSizeInBits the size of a single sample in bits
	* @param channels the number of channels
	* @return the size of a PCM frame in bytes.
	*/
	@:overload private static function calculatePCMFrameSize(sampleSizeInBits : Int, channels : Int) : Int;
	
	
}
