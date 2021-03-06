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
	@:public @:static @:final public static var RAW(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a percent scaling
	*/
	@:public @:static @:final public static var PERCENT(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a kilo scaling
	*/
	@:public @:static @:final public static var KILO(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a mega scaling
	*/
	@:public @:static @:final public static var MEGA(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a giga scaling
	*/
	@:public @:static @:final public static var GIGA(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a tera scaling
	*/
	@:public @:static @:final public static var TERA(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a tera scaling
	*/
	@:public @:static @:final public static var PETA(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a pico scaling
	*/
	@:public @:static @:final public static var PICO(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a nano scaling
	*/
	@:public @:static @:final public static var NANO(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a micro scaling
	*/
	@:public @:static @:final public static var MICRO(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a milli scaling
	*/
	@:public @:static @:final public static var MILLI(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a picosecond scaling
	*/
	@:public @:static @:final public static var PSEC(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a nanosecond scaling
	*/
	@:public @:static @:final public static var NSEC(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a microsecond scaling
	*/
	@:public @:static @:final public static var USEC(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a millisecond scaling
	*/
	@:public @:static @:final public static var MSEC(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a second scaling
	*/
	@:public @:static @:final public static var SEC(default, null) : sun.tools.jstat.Scale;
	
	@:public @:static @:final public static var SEC2(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a minutes scaling
	*/
	@:public @:static @:final public static var MINUTES(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Scale representing a hours scaling
	*/
	@:public @:static @:final public static var HOUR(default, null) : sun.tools.jstat.Scale;
	
	@:public @:static @:final public static var HOUR2(default, null) : sun.tools.jstat.Scale;
	
	/**
	* Returns the scaling factor of this Scale object
	*
	* @return  the scaling factor of this Scale object
	*/
	@:overload @:public public function getFactor() : Float;
	
	/**
	* Returns the string representation of this Scale object.
	* The string representation is the name of the Scale object.
	*
	* @return  the string representation of this Scale object
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Maps a string to its corresponding Scale object.
	*
	* @param   s  a string to match against Scale objects.
	* @return     The Scale object matching the given string.
	*/
	@:overload @:public @:static public static function toScale(s : String) : sun.tools.jstat.Scale;
	
	/**
	* Returns an enumeration of the keys for this enumerated type
	*
	* @param   s  an string to match against Scale objects.
	* @return     The Scale object matching the given string.
	*/
	@:overload @:protected @:static private static function keySet() : java.util.Set<Dynamic>;
	
	@:overload @:protected private function scale(value : Float) : Float;
	
	
}
