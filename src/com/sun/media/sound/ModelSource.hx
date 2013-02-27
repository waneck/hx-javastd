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
* This class is used to identify sources in connection blocks,
* see ModelConnectionBlock.
*
* @author Karl Helgason
*/
extern class ModelSource
{
	public static var SOURCE_NONE(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_NOTEON_KEYNUMBER(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_NOTEON_VELOCITY(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_EG1(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_EG2(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_LFO1(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_LFO2(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_MIDI_PITCH(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_MIDI_CHANNEL_PRESSURE(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_MIDI_POLY_PRESSURE(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_MIDI_CC_0(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var SOURCE_MIDI_RPN_0(default, null) : com.sun.media.sound.ModelIdentifier;
	
	@:overload public function new() : Void;
	
	@:overload public function new(id : com.sun.media.sound.ModelIdentifier) : Void;
	
	@:overload public function new(id : com.sun.media.sound.ModelIdentifier, direction : Bool) : Void;
	
	@:overload public function new(id : com.sun.media.sound.ModelIdentifier, direction : Bool, polarity : Bool) : Void;
	
	@:overload public function new(id : com.sun.media.sound.ModelIdentifier, direction : Bool, polarity : Bool, transform : Int) : Void;
	
	@:overload public function new(id : com.sun.media.sound.ModelIdentifier, transform : com.sun.media.sound.ModelTransform) : Void;
	
	@:overload public function getIdentifier() : com.sun.media.sound.ModelIdentifier;
	
	@:overload public function setIdentifier(source : com.sun.media.sound.ModelIdentifier) : Void;
	
	@:overload public function getTransform() : com.sun.media.sound.ModelTransform;
	
	@:overload public function setTransform(transform : com.sun.media.sound.ModelTransform) : Void;
	
	
}
