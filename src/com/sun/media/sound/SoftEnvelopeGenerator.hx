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
/**
* AHDSR control signal envelope generator.
*
* @author Karl Helgason
*/
extern class SoftEnvelopeGenerator implements com.sun.media.sound.SoftProcess
{
	public static var EG_OFF(default, null) : Int;
	
	public static var EG_DELAY(default, null) : Int;
	
	public static var EG_ATTACK(default, null) : Int;
	
	public static var EG_HOLD(default, null) : Int;
	
	public static var EG_DECAY(default, null) : Int;
	
	public static var EG_SUSTAIN(default, null) : Int;
	
	public static var EG_RELEASE(default, null) : Int;
	
	public static var EG_SHUTDOWN(default, null) : Int;
	
	public static var EG_END(default, null) : Int;
	
	@:overload public function reset() : Void;
	
	@:overload public function init(synth : com.sun.media.sound.SoftSynthesizer) : Void;
	
	@:overload public function get(instance : Int, name : String) : java.NativeArray<Float>;
	
	@:overload public function processControlLogic() : Void;
	
	
}
