package com.sun.media.sound;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface AudioSynthesizer extends javax.sound.midi.Synthesizer
{
	/**
	* Obtains the current format (encoding, sample rate, number of channels,
	* etc.) of the synthesizer audio data.
	*
	* <p>If the synthesizer is not open and has never been opened, it returns
	* the default format.
	*
	* @return current audio data format
	* @see AudioFormat
	*/
	@:overload public function getFormat() : javax.sound.sampled.AudioFormat;
	
	/**
	* Gets information about the possible properties for the synthesizer.
	*
	* @param info a proposed list of tag/value pairs that will be sent on open.
	* @return an array of <code>AudioSynthesizerPropertyInfo</code> objects
	* describing possible properties. This array may be an empty array if
	* no properties are required.
	*/
	@:overload public function getPropertyInfo(info : java.util.Map<String, Dynamic>) : java.NativeArray<com.sun.media.sound.AudioSynthesizerPropertyInfo>;
	
	/**
	* Opens the synthesizer and starts rendering audio into
	* <code>SourceDataLine</code>.
	*
	* <p>An application opening a synthesizer explicitly with this call
	* has to close the synthesizer by calling {@link #close}. This is
	* necessary to release system resources and allow applications to
	* exit cleanly.
	*
	* <p>Note that some synthesizers, once closed, cannot be reopened.
	* Attempts to reopen such a synthesizer will always result in
	* a <code>MidiUnavailableException</code>.
	*
	* @param line which <code>AudioSynthesizer</code> writes output audio into.
	* If <code>line</code> is null, then line from system default mixer is used.
	* @param info a <code>Map<String,Object></code> object containing
	* properties for additional configuration supported by synthesizer.
	* If <code>info</code> is null then default settings are used.
	*
	* @throws MidiUnavailableException thrown if the synthesizer cannot be
	* opened due to resource restrictions.
	* @throws SecurityException thrown if the synthesizer cannot be
	* opened due to security restrictions.
	*
	* @see #close
	* @see #isOpen
	*/
	@:overload public function open(line : javax.sound.sampled.SourceDataLine, info : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Opens the synthesizer and renders audio into returned
	* <code>AudioInputStream</code>.
	*
	* <p>An application opening a synthesizer explicitly with this call
	* has to close the synthesizer by calling {@link #close}. This is
	* necessary to release system resources and allow applications to
	* exit cleanly.
	*
	* <p>Note that some synthesizers, once closed, cannot be reopened.
	* Attempts to reopen such a synthesizer will always result in
	* a <code>MidiUnavailableException<code>.
	*
	* @param targetFormat specifies the <code>AudioFormat</code>
	* used in returned <code>AudioInputStream</code>.
	* @param info a <code>Map<String,Object></code> object containing
	* properties for additional configuration supported by synthesizer.
	* If <code>info</code> is null then default settings are used.
	*
	* @throws MidiUnavailableException thrown if the synthesizer cannot be
	* opened due to resource restrictions.
	* @throws SecurityException thrown if the synthesizer cannot be
	* opened due to security restrictions.
	*
	* @see #close
	* @see #isOpen
	*/
	@:overload public function openStream(targetFormat : javax.sound.sampled.AudioFormat, info : java.util.Map<String, Dynamic>) : javax.sound.sampled.AudioInputStream;
	
	
}
