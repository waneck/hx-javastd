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
extern class SoftAudioBuffer
{
	@:overload @:public public function new(size : Int, format : javax.sound.sampled.AudioFormat) : Void;
	
	@:overload @:public public function swap(swap : com.sun.media.sound.SoftAudioBuffer) : Void;
	
	@:overload @:public public function getFormat() : javax.sound.sampled.AudioFormat;
	
	@:overload @:public public function getSize() : Int;
	
	@:overload @:public public function clear() : Void;
	
	@:overload @:public public function isSilent() : Bool;
	
	@:overload @:public public function array() : java.NativeArray<Single>;
	
	@:overload @:public public function get(buffer : java.NativeArray<java.StdTypes.Int8>, channel : Int) : Void;
	
	
}
