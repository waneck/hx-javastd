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
* This class is used to identify destinations in connection blocks,
* see ModelConnectionBlock.
*
* @author Karl Helgason
*/
extern class ModelDestination
{
	public static var DESTINATION_NONE(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_KEYNUMBER(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_VELOCITY(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_PITCH(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_GAIN(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_PAN(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_REVERB(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_CHORUS(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_LFO1_DELAY(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_LFO1_FREQ(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_LFO2_DELAY(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_LFO2_FREQ(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG1_DELAY(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG1_ATTACK(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG1_HOLD(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG1_DECAY(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG1_SUSTAIN(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG1_RELEASE(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG1_SHUTDOWN(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG2_DELAY(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG2_ATTACK(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG2_HOLD(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG2_DECAY(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG2_SUSTAIN(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG2_RELEASE(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_EG2_SHUTDOWN(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_FILTER_FREQ(default, null) : com.sun.media.sound.ModelIdentifier;
	
	public static var DESTINATION_FILTER_Q(default, null) : com.sun.media.sound.ModelIdentifier;
	
	@:overload public function new() : Void;
	
	@:overload public function new(id : com.sun.media.sound.ModelIdentifier) : Void;
	
	@:overload public function getIdentifier() : com.sun.media.sound.ModelIdentifier;
	
	@:overload public function setIdentifier(destination : com.sun.media.sound.ModelIdentifier) : Void;
	
	@:overload public function getTransform() : com.sun.media.sound.ModelTransform;
	
	@:overload public function setTransform(transform : com.sun.media.sound.ModelTransform) : Void;
	
	
}
