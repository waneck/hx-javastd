package javax.sound.midi;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface Synthesizer extends javax.sound.midi.MidiDevice
{
	/**
	* Obtains the maximum number of notes that this synthesizer can sound simultaneously.
	* @return the maximum number of simultaneous notes
	* @see #getVoiceStatus
	*/
	@:overload @:public public function getMaxPolyphony() : Int;
	
	/**
	* Obtains the processing latency incurred by this synthesizer, expressed in
	* microseconds.  This latency measures the worst-case delay between the
	* time a MIDI message is delivered to the synthesizer and the time that the
	* synthesizer actually produces the corresponding result.
	* <p>
	* Although the latency is expressed in microseconds, a synthesizer's actual measured
	* delay may vary over a wider range than this resolution suggests.  For example,
	* a synthesizer might have a worst-case delay of a few milliseconds or more.
	*
	* @return the worst-case delay, in microseconds
	*/
	@:overload @:public public function getLatency() : haxe.Int64;
	
	/**
	* Obtains the set of MIDI channels controlled by this synthesizer.  Each
	* non-null element in the returned array is a <code>MidiChannel</code> that
	* receives the MIDI messages sent on that channel number.
	* <p>
	* The MIDI 1.0 specification provides for 16 channels, so this
	* method returns an array of at least 16 elements.  However, if this synthesizer
	* doesn't make use of all 16 channels, some of the elements of the array
	* might be <code>null</code>, so you should check each element
	* before using it.
	* @return an array of the <code>MidiChannel</code> objects managed by this
	* <code>Synthesizer</code>.  Some of the array elements may be <code>null</code>.
	*/
	@:overload @:public public function getChannels() : java.NativeArray<javax.sound.midi.MidiChannel>;
	
	/**
	* Obtains the current status of the voices produced by this synthesizer.
	* If this class of <code>Synthesizer</code> does not provide voice
	* information, the returned array will always be of length 0.  Otherwise,
	* its length is always equal to the total number of voices, as returned by
	* <code>getMaxPolyphony()</code>.  (See the <code>VoiceStatus</code> class
	* description for an explanation of synthesizer voices.)
	*
	* @return an array of <code>VoiceStatus</code> objects that supply
	* information about the corresponding synthesizer voices
	* @see #getMaxPolyphony
	* @see VoiceStatus
	*/
	@:overload @:public public function getVoiceStatus() : java.NativeArray<javax.sound.midi.VoiceStatus>;
	
	/**
	* Informs the caller whether this synthesizer is capable of loading
	* instruments from the specified soundbank.
	* If the soundbank is unsupported, any attempts to load instruments from
	* it will result in an <code>IllegalArgumentException</code>.
	* @param soundbank soundbank for which support is queried
	* @return <code>true</code> if the soundbank is supported, otherwise <code>false</code>
	* @see #loadInstruments
	* @see #loadAllInstruments
	* @see #unloadInstruments
	* @see #unloadAllInstruments
	* @see #getDefaultSoundbank
	*/
	@:overload @:public public function isSoundbankSupported(soundbank : javax.sound.midi.Soundbank) : Bool;
	
	/**
	* Makes a particular instrument available for synthesis.  This instrument
	* is loaded into the patch location specified by its <code>Patch</code>
	* object, so that if a program-change message is
	* received (or has been received) that causes that patch to be selected,
	* subsequent notes will be played using the sound of
	* <code>instrument</code>.  If the specified instrument is already loaded,
	* this method does nothing and returns <code>true</code>.
	* <p>
	* The instrument must be part of a soundbank
	* that this <code>Synthesizer</code> supports.  (To make sure, you can use
	* the <code>getSoundbank</code> method of <code>Instrument</code> and the
	* <code>isSoundbankSupported</code> method of <code>Synthesizer</code>.)
	* @param instrument instrument to load
	* @return <code>true</code> if the instrument is successfully loaded (or
	* already had been), <code>false</code> if the instrument could not be
	* loaded (for example, if the synthesizer has insufficient
	* memory to load it)
	* @throws <code>IllegalArgumentException</code> if this
	* <code>Synthesizer</code> doesn't support the specified instrument's
	* soundbank
	* @see #unloadInstrument
	* @see #loadInstruments
	* @see #loadAllInstruments
	* @see #remapInstrument
	* @see SoundbankResource#getSoundbank
	* @see MidiChannel#programChange(int, int)
	*/
	@:overload @:public public function loadInstrument(instrument : javax.sound.midi.Instrument) : Bool;
	
	/**
	* Unloads a particular instrument.
	* @param instrument instrument to unload
	* @throws <code>IllegalArgumentException</code> if this
	* <code>Synthesizer</code> doesn't support the specified instrument's
	* soundbank
	* @see #loadInstrument
	* @see #unloadInstruments
	* @see #unloadAllInstruments
	* @see #getLoadedInstruments
	* @see #remapInstrument
	*/
	@:overload @:public public function unloadInstrument(instrument : javax.sound.midi.Instrument) : Void;
	
	/**
	* Remaps an instrument. Instrument <code>to</code> takes the
	* place of instrument <code>from</code>.<br>
	* For example, if <code>from</code> was located at bank number 2,
	* program number 11, remapping causes that bank and program location
	* to be occupied instead by <code>to</code>.<br>
	* If the function succeeds,  instrument <code>from</code> is unloaded.
	* <p>To cancel the remapping reload instrument <code>from</code> by
	* invoking one of {@link #loadInstrument}, {@link #loadInstruments}
	* or {@link #loadAllInstruments}.
	*
	* @param from the <code>Instrument</code> object to be replaced
	* @param to the <code>Instrument</code> object to be used in place
	* of the old instrument, it should be loaded into the synthesizer
	* @return <code>true</code> if the instrument succeessfully remapped,
	* <code>false</code> if feature is not implemented by synthesizer
	* @throws <code>IllegalArgumentException</code> if instrument
	* <code>from</code> or instrument <code>to</code> aren't supported by
	* synthesizer or if instrument <code>to</code> is not loaded
	* @throws <code>NullPointerException</code> if <code>from</code> or
	* <code>to</code> parameters have null value
	* @see #loadInstrument
	* @see #loadInstruments
	* @see #loadAllInstruments
	*/
	@:overload @:public public function remapInstrument(from : javax.sound.midi.Instrument, to : javax.sound.midi.Instrument) : Bool;
	
	/**
	* Obtains the default soundbank for the synthesizer, if one exists.
	* (Some synthesizers provide a default or built-in soundbank.)
	* If a synthesizer doesn't have a default soundbank, instruments must
	* be loaded explicitly from an external soundbank.
	* @return default soundbank, or <code>null</code> if one does not exist.
	* @see #isSoundbankSupported
	*/
	@:overload @:public public function getDefaultSoundbank() : javax.sound.midi.Soundbank;
	
	/**
	* Obtains a list of instruments that come with the synthesizer.  These
	* instruments might be built into the synthesizer, or they might be
	* part of a default soundbank provided with the synthesizer, etc.
	* <p>
	* Note that you don't use this method  to find out which instruments are
	* currently loaded onto the synthesizer; for that purpose, you use
	* <code>getLoadedInstruments()</code>.
	* Nor does the method indicate all the instruments that can be loaded onto
	* the synthesizer; it only indicates the subset that come with the synthesizer.
	* To learn whether another instrument can be loaded, you can invoke
	* <code>isSoundbankSupported()</code>, and if the instrument's
	* <code>Soundbank</code> is supported, you can try loading the instrument.
	*
	* @return list of available instruments. If the synthesizer
	* has no instruments coming with it, an array of length 0 is returned.
	* @see #getLoadedInstruments
	* @see #isSoundbankSupported(Soundbank)
	* @see #loadInstrument
	*/
	@:overload @:public public function getAvailableInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	/**
	* Obtains a list of the instruments that are currently loaded onto this
	* <code>Synthesizer</code>.
	* @return a list of currently loaded instruments
	* @see #loadInstrument
	* @see #getAvailableInstruments
	* @see Soundbank#getInstruments
	*/
	@:overload @:public public function getLoadedInstruments() : java.NativeArray<javax.sound.midi.Instrument>;
	
	/**
	* Loads onto the <code>Synthesizer</code> all instruments contained
	* in the specified <code>Soundbank</code>.
	* @param soundbank the <code>Soundbank</code> whose are instruments are
	* to be loaded
	* @return <code>true</code> if the instruments are all successfully loaded (or
	* already had been), <code>false</code> if any instrument could not be
	* loaded (for example, if the <code>Synthesizer</code> had insufficient memory)
	* @throws IllegalArgumentException if the requested soundbank is
	* incompatible with this synthesizer.
	* @see #isSoundbankSupported
	* @see #loadInstrument
	* @see #loadInstruments
	*/
	@:overload @:public public function loadAllInstruments(soundbank : javax.sound.midi.Soundbank) : Bool;
	
	/**
	* Unloads all instruments contained in the specified <code>Soundbank</code>.
	* @param soundbank soundbank containing instruments to unload
	* @throws IllegalArgumentException thrown if the soundbank is not supported.
	* @see #isSoundbankSupported
	* @see #unloadInstrument
	* @see #unloadInstruments
	*/
	@:overload @:public public function unloadAllInstruments(soundbank : javax.sound.midi.Soundbank) : Void;
	
	/**
	* Loads the instruments referenced by the specified patches, from the
	* specified <code>Soundbank</code>.  Each of the <code>Patch</code> objects
	* indicates a bank and program number; the <code>Instrument</code> that
	* has the matching <code>Patch</code> is loaded into that bank and program
	* location.
	* @param soundbank the <code>Soundbank</code> containing the instruments to load
	* @param patchList list of patches for which instruments should be loaded
	* @return <code>true</code> if the instruments are all successfully loaded (or
	* already had been), <code>false</code> if any instrument could not be
	* loaded (for example, if the <code>Synthesizer</code> had insufficient memory)
	* @throws IllegalArgumentException thrown if the soundbank is not supported.
	* @see #isSoundbankSupported
	* @see Instrument#getPatch
	* @see #loadAllInstruments
	* @see #loadInstrument
	* @see Soundbank#getInstrument(Patch)
	* @see Sequence#getPatchList()
	*/
	@:overload @:public public function loadInstruments(soundbank : javax.sound.midi.Soundbank, patchList : java.NativeArray<javax.sound.midi.Patch>) : Bool;
	
	/**
	* Unloads the instruments referenced by the specified patches, from the MIDI sound bank specified.
	* @param soundbank soundbank containing instruments to unload
	* @param patchList list of patches for which instruments should be unloaded
	* @throws IllegalArgumentException thrown if the soundbank is not supported.
	*
	* @see #unloadInstrument
	* @see #unloadAllInstruments
	* @see #isSoundbankSupported
	* @see Instrument#getPatch
	* @see #loadInstruments
	*/
	@:overload @:public public function unloadInstruments(soundbank : javax.sound.midi.Soundbank, patchList : java.NativeArray<javax.sound.midi.Patch>) : Void;
	
	
}
