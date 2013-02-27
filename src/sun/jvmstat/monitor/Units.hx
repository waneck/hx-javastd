package sun.jvmstat.monitor;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Provides a typesafe enumeration for describing units of measurement
* attribute for instrumentation objects.
*
* @author   Brian Doherty
*/
extern class Units implements java.io.Serializable
{
	/**
	* An Invalid Units value.
	*/
	public static var INVALID(default, null) : Units;
	
	/**
	* Units attribute representing unit-less quantities.
	*/
	public static var NONE(default, null) : Units;
	
	/**
	* Units attribute representing Bytes.
	*/
	public static var BYTES(default, null) : Units;
	
	/**
	* Units attribute representing Ticks.
	*/
	public static var TICKS(default, null) : Units;
	
	/**
	* Units attribute representing a count of events.
	*/
	public static var EVENTS(default, null) : Units;
	
	/**
	* Units attribute representing String data. Although not really
	* a unit of measure, this Units value serves to distinguish String
	* instrumentation objects from instrumentation objects of other types.
	*/
	public static var STRING(default, null) : Units;
	
	/**
	* Units attribute representing Hertz (frequency).
	*/
	public static var HERTZ(default, null) : Units;
	
	/**
	* Returns a string describing this Unit of measurement attribute
	*
	* @return String - a descriptive string for this enum.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the integer representation of this Units attribute
	*
	* @return int - an integer representation of this Units attribute.
	*/
	@:overload public function intValue() : Int;
	
	/**
	* Maps an integer value to its corresponding Units attribute.
	* If the integer value does not have a corresponding Units enum
	* value, then {@link Units#INVALID} is returned.
	*
	* @param value an integer representation of counter Units
	* @return Units - the Units object for the given <code>value</code>
	*                 or {@link Units#INVALID} if out of range.
	*/
	@:overload public static function toUnits(value : Int) : Units;
	
	
}
