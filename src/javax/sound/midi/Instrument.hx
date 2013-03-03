package javax.sound.midi;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Instrument extends javax.sound.midi.SoundbankResource
{
	/**
	* Constructs a new MIDI instrument from the specified <code>Patch</code>.
	* When a subsequent request is made to load the
	* instrument, the sound bank will search its contents for this instrument's <code>Patch</code>,
	* and the instrument will be loaded into the synthesizer at the
	* bank and program location indicated by the <code>Patch</code> object.
	* @param soundbank sound bank containing the instrument
	* @param patch the patch of this instrument
	* @param name the name of this instrument
	* @param dataClass the class used to represent the sample's data.
	*
	* @see Synthesizer#loadInstrument(Instrument)
	*/
	@:overload @:protected private function new(soundbank : javax.sound.midi.Soundbank, patch : javax.sound.midi.Patch, name : String, dataClass : Class<Dynamic>) : Void;
	
	/**
	* Obtains the <code>Patch</code> object that indicates the bank and program
	* numbers where this instrument is to be stored in the synthesizer.
	* @return this instrument's patch
	*/
	@:overload @:public public function getPatch() : javax.sound.midi.Patch;
	
	
}
