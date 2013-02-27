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
* This class is used to store modulator/artiuclation data.
* A modulator connects one synthesizer source to
* a destination. For example a note on velocity
* can be mapped to the gain of the synthesized voice.
* It is stored as a "art1" or "art2" chunk inside DLS files.
*
* @author Karl Helgason
*/
extern class DLSModulator
{
	public static var CONN_DST_NONE(default, null) : Int;
	
	public static var CONN_DST_GAIN(default, null) : Int;
	
	public static var CONN_DST_PITCH(default, null) : Int;
	
	public static var CONN_DST_PAN(default, null) : Int;
	
	public static var CONN_DST_LFO_FREQUENCY(default, null) : Int;
	
	public static var CONN_DST_LFO_STARTDELAY(default, null) : Int;
	
	public static var CONN_DST_EG1_ATTACKTIME(default, null) : Int;
	
	public static var CONN_DST_EG1_DECAYTIME(default, null) : Int;
	
	public static var CONN_DST_EG1_RELEASETIME(default, null) : Int;
	
	public static var CONN_DST_EG1_SUSTAINLEVEL(default, null) : Int;
	
	public static var CONN_DST_EG2_ATTACKTIME(default, null) : Int;
	
	public static var CONN_DST_EG2_DECAYTIME(default, null) : Int;
	
	public static var CONN_DST_EG2_RELEASETIME(default, null) : Int;
	
	public static var CONN_DST_EG2_SUSTAINLEVEL(default, null) : Int;
	
	public static var CONN_DST_KEYNUMBER(default, null) : Int;
	
	public static var CONN_DST_LEFT(default, null) : Int;
	
	public static var CONN_DST_RIGHT(default, null) : Int;
	
	public static var CONN_DST_CENTER(default, null) : Int;
	
	public static var CONN_DST_LEFTREAR(default, null) : Int;
	
	public static var CONN_DST_RIGHTREAR(default, null) : Int;
	
	public static var CONN_DST_LFE_CHANNEL(default, null) : Int;
	
	public static var CONN_DST_CHORUS(default, null) : Int;
	
	public static var CONN_DST_REVERB(default, null) : Int;
	
	public static var CONN_DST_VIB_FREQUENCY(default, null) : Int;
	
	public static var CONN_DST_VIB_STARTDELAY(default, null) : Int;
	
	public static var CONN_DST_EG1_DELAYTIME(default, null) : Int;
	
	public static var CONN_DST_EG1_HOLDTIME(default, null) : Int;
	
	public static var CONN_DST_EG1_SHUTDOWNTIME(default, null) : Int;
	
	public static var CONN_DST_EG2_DELAYTIME(default, null) : Int;
	
	public static var CONN_DST_EG2_HOLDTIME(default, null) : Int;
	
	public static var CONN_DST_FILTER_CUTOFF(default, null) : Int;
	
	public static var CONN_DST_FILTER_Q(default, null) : Int;
	
	public static var CONN_SRC_NONE(default, null) : Int;
	
	public static var CONN_SRC_LFO(default, null) : Int;
	
	public static var CONN_SRC_KEYONVELOCITY(default, null) : Int;
	
	public static var CONN_SRC_KEYNUMBER(default, null) : Int;
	
	public static var CONN_SRC_EG1(default, null) : Int;
	
	public static var CONN_SRC_EG2(default, null) : Int;
	
	public static var CONN_SRC_PITCHWHEEL(default, null) : Int;
	
	public static var CONN_SRC_CC1(default, null) : Int;
	
	public static var CONN_SRC_CC7(default, null) : Int;
	
	public static var CONN_SRC_CC10(default, null) : Int;
	
	public static var CONN_SRC_CC11(default, null) : Int;
	
	public static var CONN_SRC_RPN0(default, null) : Int;
	
	public static var CONN_SRC_RPN1(default, null) : Int;
	
	public static var CONN_SRC_RPN2(default, null) : Int;
	
	public static var CONN_SRC_POLYPRESSURE(default, null) : Int;
	
	public static var CONN_SRC_CHANNELPRESSURE(default, null) : Int;
	
	public static var CONN_SRC_VIBRATO(default, null) : Int;
	
	public static var CONN_SRC_MONOPRESSURE(default, null) : Int;
	
	public static var CONN_SRC_CC91(default, null) : Int;
	
	public static var CONN_SRC_CC93(default, null) : Int;
	
	public static var CONN_TRN_NONE(default, null) : Int;
	
	public static var CONN_TRN_CONCAVE(default, null) : Int;
	
	public static var CONN_TRN_CONVEX(default, null) : Int;
	
	public static var CONN_TRN_SWITCH(default, null) : Int;
	
	public static var DST_FORMAT_CB(default, null) : Int;
	
	public static var DST_FORMAT_CENT(default, null) : Int;
	
	public static var DST_FORMAT_TIMECENT(default, null) : Int;
	
	public static var DST_FORMAT_PERCENT(default, null) : Int;
	
	private var source : Int;
	
	private var control : Int;
	
	private var destination : Int;
	
	private var transform : Int;
	
	private var scale : Int;
	
	private var version : Int;
	
	@:overload public function getControl() : Int;
	
	@:overload public function setControl(control : Int) : Void;
	
	@:overload public static function getDestinationFormat(destination : Int) : Int;
	
	@:overload public static function getDestinationName(destination : Int) : String;
	
	@:overload public static function getSourceName(source : Int) : String;
	
	@:overload public function getDestination() : Int;
	
	@:overload public function setDestination(destination : Int) : Void;
	
	@:overload public function getScale() : Int;
	
	@:overload public function setScale(scale : Int) : Void;
	
	@:overload public function getSource() : Int;
	
	@:overload public function setSource(source : Int) : Void;
	
	@:overload public function getVersion() : Int;
	
	@:overload public function setVersion(version : Int) : Void;
	
	@:overload public function getTransform() : Int;
	
	@:overload public function setTransform(transform : Int) : Void;
	
	
}
