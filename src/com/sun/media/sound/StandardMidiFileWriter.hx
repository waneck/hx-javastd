package com.sun.media.sound;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class StandardMidiFileWriter extends javax.sound.midi.spi.MidiFileWriter
{
	/**
	* new
	*/
	@:overload @:public override public function getMidiFileTypes() : java.NativeArray<Int>;
	
	/**
	* Obtains the file types that this provider can write from the
	* sequence specified.
	* @param sequence the sequence for which midi file type support
	* is queried
	* @return array of file types.  If no file types are supported,
	* returns an array of length 0.
	*/
	@:overload @:public override public function getMidiFileTypes(sequence : javax.sound.midi.Sequence) : java.NativeArray<Int>;
	
	@:overload @:public override public function isFileTypeSupported(type : Int) : Bool;
	
	@:overload @:public override public function write(_in : javax.sound.midi.Sequence, type : Int, out : java.io.OutputStream) : Int;
	
	@:overload @:public override public function write(_in : javax.sound.midi.Sequence, type : Int, out : java.io.File) : Int;
	
	
}
