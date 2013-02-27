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
* Soundfont modulator container.
*
* @author Karl Helgason
*/
extern class SF2Modulator
{
	public static var SOURCE_NONE(default, null) : Int;
	
	public static var SOURCE_NOTE_ON_VELOCITY(default, null) : Int;
	
	public static var SOURCE_NOTE_ON_KEYNUMBER(default, null) : Int;
	
	public static var SOURCE_POLY_PRESSURE(default, null) : Int;
	
	public static var SOURCE_CHANNEL_PRESSURE(default, null) : Int;
	
	public static var SOURCE_PITCH_WHEEL(default, null) : Int;
	
	public static var SOURCE_PITCH_SENSITIVITY(default, null) : Int;
	
	public static var SOURCE_MIDI_CONTROL(default, null) : Int;
	
	public static var SOURCE_DIRECTION_MIN_MAX(default, null) : Int;
	
	public static var SOURCE_DIRECTION_MAX_MIN(default, null) : Int;
	
	public static var SOURCE_POLARITY_UNIPOLAR(default, null) : Int;
	
	public static var SOURCE_POLARITY_BIPOLAR(default, null) : Int;
	
	public static var SOURCE_TYPE_LINEAR(default, null) : Int;
	
	public static var SOURCE_TYPE_CONCAVE(default, null) : Int;
	
	public static var SOURCE_TYPE_CONVEX(default, null) : Int;
	
	public static var SOURCE_TYPE_SWITCH(default, null) : Int;
	
	public static var TRANSFORM_LINEAR(default, null) : Int;
	
	public static var TRANSFORM_ABSOLUTE(default, null) : Int;
	
	private var sourceOperator : Int;
	
	private var destinationOperator : Int;
	
	private var amount : java.StdTypes.Int16;
	
	private var amountSourceOperator : Int;
	
	private var transportOperator : Int;
	
	@:overload public function getAmount() : java.StdTypes.Int16;
	
	@:overload public function setAmount(amount : java.StdTypes.Int16) : Void;
	
	@:overload public function getAmountSourceOperator() : Int;
	
	@:overload public function setAmountSourceOperator(amountSourceOperator : Int) : Void;
	
	@:overload public function getTransportOperator() : Int;
	
	@:overload public function setTransportOperator(transportOperator : Int) : Void;
	
	@:overload public function getDestinationOperator() : Int;
	
	@:overload public function setDestinationOperator(destinationOperator : Int) : Void;
	
	@:overload public function getSourceOperator() : Int;
	
	@:overload public function setSourceOperator(sourceOperator : Int) : Void;
	
	
}
