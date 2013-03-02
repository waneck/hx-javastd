package com.sun.media.sound;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PortMixer extends com.sun.media.sound.AbstractMixer
{
	@:overload override public function getLine(info : javax.sound.sampled.Line.Line_Info) : javax.sound.sampled.Line;
	
	@:overload override public function getMaxLines(info : javax.sound.sampled.Line.Line_Info) : Int;
	
	@:overload override private function implOpen() : Void;
	
	@:overload override private function implClose() : Void;
	
	@:overload override private function implStart() : Void;
	
	@:overload override private function implStop() : Void;
	
	
}
/**
* Private inner class representing a Port for the PortMixer.
*/
@:native('com$sun$media$sound$PortMixer$PortMixerPort') @:internal extern class PortMixer_PortMixerPort extends com.sun.media.sound.AbstractLine implements javax.sound.sampled.Port
{
	@:overload public function open() : Void;
	
	@:overload public function close() : Void;
	
	
}
/**
* Private inner class representing a BooleanControl for PortMixerPort
*/
@:native('com$sun$media$sound$PortMixer$BoolCtrl') @:internal extern class PortMixer_BoolCtrl extends javax.sound.sampled.BooleanControl
{
	@:overload public function setValue(value : Bool) : Void;
	
	@:overload public function getValue() : Bool;
	
	
}
/**
* inner class for custom types
*/
@:native('com$sun$media$sound$PortMixer$BoolCtrl$BCT') @:internal extern class PortMixer_BoolCtrl_BCT extends javax.sound.sampled.BooleanControl.BooleanControl_Type
{
	
}
/**
* Private inner class representing a CompoundControl for PortMixerPort
*/
@:native('com$sun$media$sound$PortMixer$CompCtrl') @:internal extern class PortMixer_CompCtrl extends javax.sound.sampled.CompoundControl
{
	
}
/**
* inner class for custom compound control types
*/
@:native('com$sun$media$sound$PortMixer$CompCtrl$CCT') @:internal extern class PortMixer_CompCtrl_CCT extends javax.sound.sampled.CompoundControl.CompoundControl_Type
{
	
}
/**
* Private inner class representing a BooleanControl for PortMixerPort
*/
@:native('com$sun$media$sound$PortMixer$FloatCtrl') @:internal extern class PortMixer_FloatCtrl extends javax.sound.sampled.FloatControl
{
	@:overload override public function setValue(value : Single) : Void;
	
	@:overload override public function getValue() : Single;
	
	
}
/**
* inner class for custom types
*/
@:native('com$sun$media$sound$PortMixer$FloatCtrl$FCT') @:internal extern class PortMixer_FloatCtrl_FCT extends javax.sound.sampled.FloatControl.FloatControl_Type
{
	
}
/**
* Private inner class representing a port info
*/
@:native('com$sun$media$sound$PortMixer$PortInfo') @:internal extern class PortMixer_PortInfo extends javax.sound.sampled.Port.Port_Info
{
	
}
