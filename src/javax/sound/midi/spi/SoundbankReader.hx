package javax.sound.midi.spi;
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
extern class SoundbankReader
{
	/**
	* Obtains a soundbank object from the URL provided.
	* @param url URL representing the soundbank.
	* @return soundbank object
	* @throws InvalidMidiDataException if the URL does not point to
	* valid MIDI soundbank data recognized by this soundbank reader
	* @throws IOException if an I/O error occurs
	*/
	@:overload @:public @:abstract public function getSoundbank(url : java.net.URL) : javax.sound.midi.Soundbank;
	
	/**
	* Obtains a soundbank object from the <code>InputStream</code> provided.
	* @param stream <code>InputStream</code> representing the soundbank
	* @return soundbank object
	* @throws InvalidMidiDataException if the stream does not point to
	* valid MIDI soundbank data recognized by this soundbank reader
	* @throws IOException if an I/O error occurs
	*/
	@:overload @:public @:abstract public function getSoundbank(stream : java.io.InputStream) : javax.sound.midi.Soundbank;
	
	/**
	* Obtains a soundbank object from the <code>File</code> provided.
	* @param file the <code>File</code> representing the soundbank
	* @return soundbank object
	* @throws InvalidMidiDataException if the file does not point to
	* valid MIDI soundbank data recognized by this soundbank reader
	* @throws IOException if an I/O error occurs
	*/
	@:overload @:public @:abstract public function getSoundbank(file : java.io.File) : javax.sound.midi.Soundbank;
	
	
}
