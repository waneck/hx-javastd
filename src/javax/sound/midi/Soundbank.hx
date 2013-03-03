package javax.sound.midi;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern interface Soundbank
{
	/**
	* Obtains the name of the sound bank.
	* @return a <code>String</code> naming the sound bank
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Obtains the version string for the sound bank.
	* @return a <code>String</code> that indicates the sound bank's version
	*/
	@:overload @:public public function getVersion() : String;
	
	/**
	* Obtains a <code>string</code> naming the company that provides the
	* sound bank
	* @return the vendor string
	*/
	@:overload @:public public function getVendor() : String;
	
	/**
	* Obtains a textual description of the sound bank, suitable for display.
	* @return a <code>String</code> that describes the sound bank
	*/
	@:overload @:public public function getDescription() : String;
	
	/**
	* Extracts a list of non-Instrument resources contained in the sound bank.
	* @return an array of resources, exclusing instruments.  If the sound bank contains
	* no resources (other than instruments), returns an array of length 0.
	*/
	@:overload @:public public function getResources() : java.NativeArray<javax.sound.midi.SoundbankResource>;
	
	/**
	* Obtains a list of instruments contained in this sound bank.
	* @return an array of the <code>Instruments</code> in this
	* <code>SoundBank</code>
	* If the sound bank contains no instruments, returns an array of length 0.
	*
	* @see Synthesizer#getLoadedInstruments
	* @see #getInstrument(Patch)
	*/
	@:overload @:public public function getInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	/**
	* Obtains an <code>Instrument</code> from the given <code>Patch</code>.
	* @param patch a <code>Patch</code> object specifying the bank index
	* and program change number
	* @return the requested instrument, or <code>null</code> if the
	* sound bank doesn't contain that instrument
	*
	* @see #getInstruments
	* @see Synthesizer#loadInstruments(Soundbank, Patch[])
	*/
	@:overload @:public public function getInstrument(patch : javax.sound.midi.Patch) : javax.sound.midi.Instrument;
	
	
}
