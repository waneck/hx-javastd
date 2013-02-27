package com.sun.media.sound;
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
extern class StandardMidiFileReader extends javax.sound.midi.spi.MidiFileReader
{
	@:overload override public function getMidiFileFormat(stream : java.io.InputStream) : javax.sound.midi.MidiFileFormat;
	
	@:overload override public function getMidiFileFormat(url : java.net.URL) : javax.sound.midi.MidiFileFormat;
	
	@:overload override public function getMidiFileFormat(file : java.io.File) : javax.sound.midi.MidiFileFormat;
	
	@:overload override public function getSequence(stream : java.io.InputStream) : javax.sound.midi.Sequence;
	
	@:overload override public function getSequence(url : java.net.URL) : javax.sound.midi.Sequence;
	
	@:overload override public function getSequence(file : java.io.File) : javax.sound.midi.Sequence;
	
	
}
@:internal extern class SMFParser
{
	@:overload public function new() : Void;
	
	
}
