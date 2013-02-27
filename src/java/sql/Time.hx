package java.sql;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
* <P>A thin wrapper around the <code>java.util.Date</code> class that allows the JDBC
* API to identify this as an SQL <code>TIME</code> value. The <code>Time</code>
* class adds formatting and
* parsing operations to support the JDBC escape syntax for time
* values.
* <p>The date components should be set to the "zero epoch"
* value of January 1, 1970 and should not be accessed.
*/
extern class Time extends java.util.Date
{
	/**
	* Constructs a <code>Time</code> object initialized with the
	* given values for the hour, minute, and second.
	* The driver sets the date components to January 1, 1970.
	* Any method that attempts to access the date components of a
	* <code>Time</code> object will throw a
	* <code>java.lang.IllegalArgumentException</code>.
	* <P>
	* The result is undefined if a given argument is out of bounds.
	*
	* @param hour 0 to 23
	* @param minute 0 to 59
	* @param second 0 to 59
	*
	* @deprecated Use the constructor that takes a milliseconds value
	*             in place of this constructor
	*/
	@:overload public function new(hour : Int, minute : Int, second : Int) : Void;
	
	/**
	* Constructs a <code>Time</code> object using a milliseconds time value.
	*
	* @param time milliseconds since January 1, 1970, 00:00:00 GMT;
	*             a negative number is milliseconds before
	*               January 1, 1970, 00:00:00 GMT
	*/
	@:overload public function new(time : haxe.Int64) : Void;
	
	/**
	* Sets a <code>Time</code> object using a milliseconds time value.
	*
	* @param time milliseconds since January 1, 1970, 00:00:00 GMT;
	*             a negative number is milliseconds before
	*               January 1, 1970, 00:00:00 GMT
	*/
	@:overload override public function setTime(time : haxe.Int64) : Void;
	
	/**
	* Converts a string in JDBC time escape format to a <code>Time</code> value.
	*
	* @param s time in format "hh:mm:ss"
	* @return a corresponding <code>Time</code> object
	*/
	@:overload public static function valueOf(s : String) : Time;
	
	/**
	* Formats a time in JDBC time escape format.
	*
	* @return a <code>String</code> in hh:mm:ss format
	*/
	@:overload override public function toString() : String;
	
	/**
	* This method is deprecated and should not be used because SQL <code>TIME</code>
	* values do not have a year component.
	*
	* @deprecated
	* @exception java.lang.IllegalArgumentException if this
	*           method is invoked
	* @see #setYear
	*/
	@:overload override public function getYear() : Int;
	
	/**
	* This method is deprecated and should not be used because SQL <code>TIME</code>
	* values do not have a month component.
	*
	* @deprecated
	* @exception java.lang.IllegalArgumentException if this
	*           method is invoked
	* @see #setMonth
	*/
	@:overload override public function getMonth() : Int;
	
	/**
	* This method is deprecated and should not be used because SQL <code>TIME</code>
	* values do not have a day component.
	*
	* @deprecated
	* @exception java.lang.IllegalArgumentException if this
	*           method is invoked
	*/
	@:overload override public function getDay() : Int;
	
	/**
	* This method is deprecated and should not be used because SQL <code>TIME</code>
	* values do not have a date component.
	*
	* @deprecated
	* @exception java.lang.IllegalArgumentException if this
	*           method is invoked
	* @see #setDate
	*/
	@:overload override public function getDate() : Int;
	
	/**
	* This method is deprecated and should not be used because SQL <code>TIME</code>
	* values do not have a year component.
	*
	* @deprecated
	* @exception java.lang.IllegalArgumentException if this
	*           method is invoked
	* @see #getYear
	*/
	@:overload override public function setYear(i : Int) : Void;
	
	/**
	* This method is deprecated and should not be used because SQL <code>TIME</code>
	* values do not have a month component.
	*
	* @deprecated
	* @exception java.lang.IllegalArgumentException if this
	*           method is invoked
	* @see #getMonth
	*/
	@:overload override public function setMonth(i : Int) : Void;
	
	/**
	* This method is deprecated and should not be used because SQL <code>TIME</code>
	* values do not have a date component.
	*
	* @deprecated
	* @exception java.lang.IllegalArgumentException if this
	*           method is invoked
	* @see #getDate
	*/
	@:overload override public function setDate(i : Int) : Void;
	
	
}
