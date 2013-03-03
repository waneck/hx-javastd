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
extern class SoftInstrument extends javax.sound.midi.Instrument
{
	@:overload @:public public function new(ins : com.sun.media.sound.ModelInstrument) : Void;
	
	@:overload @:public public function new(ins : com.sun.media.sound.ModelInstrument, overrideperformers : java.NativeArray<com.sun.media.sound.ModelPerformer>) : Void;
	
	@:overload @:public public function getDirector(channel : javax.sound.midi.MidiChannel, player : com.sun.media.sound.ModelDirectedPlayer) : com.sun.media.sound.ModelDirector;
	
	@:overload @:public public function getSourceInstrument() : com.sun.media.sound.ModelInstrument;
	
	@:overload @:public override public function getData() : Dynamic;
	
	/* am: currently getPerformers() is not used (replaced with getPerformer(int))
	public SoftPerformer[] getPerformers() {
	return performers;
	}
	*/
	@:overload @:public public function getPerformer(index : Int) : com.sun.media.sound.SoftPerformer;
	
	
}
