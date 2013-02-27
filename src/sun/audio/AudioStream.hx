package sun.audio;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
* Convert an InputStream to an AudioStream.
*
*/
extern class AudioStream extends java.io.FilterInputStream
{
	private var ais : javax.sound.sampled.AudioInputStream;
	
	private var format : javax.sound.sampled.AudioFormat;
	
	private var midiformat : javax.sound.midi.MidiFileFormat;
	
	private var stream : java.io.InputStream;
	
	/*
	* create the AudioStream; if we survive without throwing
	* an exception, we should now have some subclass of
	* ACIS with all the header info already read
	*/
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Get the data.
	*/
	@:overload public function getData() : sun.audio.AudioData;
	
	@:overload public function getLength() : Int;
	
	
}
