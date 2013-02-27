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
extern class SoftTuning
{
	@:overload public function new() : Void;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function new(patch : javax.sound.midi.Patch) : Void;
	
	@:overload public function new(patch : javax.sound.midi.Patch, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/*
	private boolean checksumOK2(byte[] data) {
	int x = data[1] & 0xFF; // 7E
	x = x ^ (data[2] & 0xFF); // <device ID>
	x = x ^ (data[4] & 0xFF); // nn
	x = x ^ (data[5] & 0xFF); // tt
	for (int i = 22; i < data.length - 2; i++)
	x = x ^ (data[i] & 0xFF);
	return (data[data.length - 2] & 0xFF) == (x & 127);
	}
	*/
	@:overload public function load(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function getTuning() : java.NativeArray<Float>;
	
	@:overload public function getTuning(noteNumber : Int) : Float;
	
	@:overload public function getPatch() : javax.sound.midi.Patch;
	
	@:overload public function getName() : String;
	
	@:overload public function setName(name : String) : Void;
	
	
}
