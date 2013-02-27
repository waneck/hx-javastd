package sun.tools.jstat;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* A typesafe enumeration for describing data scaling semantics
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class Scale
{
	/**
	* Scale representing a no scaling
	*/
	public static var RAW(default, null) : Scale;
	
	/**
	* Scale representing a percent scaling
	*/
	public static var PERCENT(default, null) : Scale;
	
	/**
	* Scale representing a kilo scaling
	*/
	public static var KILO(default, null) : Scale;
	
	/**
	* Scale representing a mega scaling
	*/
	public static var MEGA(default, null) : Scale;
	
	/**
	* Scale representing a giga scaling
	*/
	public static var GIGA(default, null) : Scale;
	
	/**
	* Scale representing a tera scaling
	*/
	public static var TERA(default, null) : Scale;
	
	/**
	* Scale representing a tera scaling
	*/
	public static var PETA(default, null) : Scale;
	
	/**
	* Scale representing a pico scaling
	*/
	public static var PICO(default, null) : Scale;
	
	/**
	* Scale representing a nano scaling
	*/
	public static var NANO(default, null) : Scale;
	
	/**
	* Scale representing a micro scaling
	*/
	public static var MICRO(default, null) : Scale;
	
	/**
	* Scale representing a milli scaling
	*/
	public static var MILLI(default, null) : Scale;
	
	/**
	* Scale representing a picosecond scaling
	*/
	public static var PSEC(default, null) : Scale;
	
	/**
	* Scale representing a nanosecond scaling
	*/
	public static var NSEC(default, null) : Scale;
	
	/**
	* Scale representing a microsecond scaling
	*/
	public static var USEC(default, null) : Scale;
	
	/**
	* Scale representing a millisecond scaling
	*/
	public static var MSEC(default, null) : Scale;
	
	/**
	* Scale representing a second scaling
	*/
	public static var SEC(default, null) : Scale;
	
	public static var SEC2(default, null) : Scale;
	
	/**
	* Scale representing a minutes scaling
	*/
	public static var MINUTES(default, null) : Scale;
	
	/**
	* Scale representing a hours scaling
	*/
	public static var HOUR(default, null) : Scale;
	
	public static var HOUR2(default, null) : Scale;
	
	/**
	* Returns the scaling factor of this Scale object
	*
	* @return  the scaling factor of this Scale object
	*/
	@:overload public function getFactor() : Float;
	
	/**
	* Returns the string representation of this Scale object.
	* The string representation is the name of the Scale object.
	*
	* @return  the string representation of this Scale object
	*/
	@:overload public function toString() : String;
	
	/**
	* Maps a string to its corresponding Scale object.
	*
	* @param   s  a string to match against Scale objects.
	* @return     The Scale object matching the given string.
	*/
	@:overload public static function toScale(s : String) : Scale;
	
	/**
	* Returns an enumeration of the keys for this enumerated type
	*
	* @param   s  an string to match against Scale objects.
	* @return     The Scale object matching the given string.
	*/
	@:overload private static function keySet() : java.util.Set<Dynamic>;
	
	@:overload private function scale(value : Float) : Float;
	
	
}
