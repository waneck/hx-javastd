package java.sql;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Timestamp extends java.util.Date
{
	/**
	* Constructs a <code>Timestamp</code> object initialized
	* with the given values.
	*
	* @param year the year minus 1900
	* @param month 0 to 11
	* @param date 1 to 31
	* @param hour 0 to 23
	* @param minute 0 to 59
	* @param second 0 to 59
	* @param nano 0 to 999,999,999
	* @deprecated instead use the constructor <code>Timestamp(long millis)</code>
	* @exception IllegalArgumentException if the nano argument is out of bounds
	*/
	@:overload public function new(year : Int, month : Int, date : Int, hour : Int, minute : Int, second : Int, nano : Int) : Void;
	
	/**
	* Constructs a <code>Timestamp</code> object
	* using a milliseconds time value. The
	* integral seconds are stored in the underlying date value; the
	* fractional seconds are stored in the <code>nanos</code> field of
	* the <code>Timestamp</code> object.
	*
	* @param time milliseconds since January 1, 1970, 00:00:00 GMT.
	*        A negative number is the number of milliseconds before
	*         January 1, 1970, 00:00:00 GMT.
	* @see java.util.Calendar
	*/
	@:overload public function new(time : haxe.Int64) : Void;
	
	/**
	* Sets this <code>Timestamp</code> object to represent a point in time that is
	* <tt>time</tt> milliseconds after January 1, 1970 00:00:00 GMT.
	*
	* @param time   the number of milliseconds.
	* @see #getTime
	* @see #Timestamp(long time)
	* @see java.util.Calendar
	*/
	@:overload override public function setTime(time : haxe.Int64) : Void;
	
	/**
	* Returns the number of milliseconds since January 1, 1970, 00:00:00 GMT
	* represented by this <code>Timestamp</code> object.
	*
	* @return  the number of milliseconds since January 1, 1970, 00:00:00 GMT
	*          represented by this date.
	* @see #setTime
	*/
	@:overload override public function getTime() : haxe.Int64;
	
	/**
	* Converts a <code>String</code> object in JDBC timestamp escape format to a
	* <code>Timestamp</code> value.
	*
	* @param s timestamp in format <code>yyyy-[m]m-[d]d hh:mm:ss[.f...]</code>.  The
	* fractional seconds may be omitted. The leading zero for <code>mm</code>
	* and <code>dd</code> may also be omitted.
	*
	* @return corresponding <code>Timestamp</code> value
	* @exception java.lang.IllegalArgumentException if the given argument
	* does not have the format <code>yyyy-[m]m-[d]d hh:mm:ss[.f...]</code>
	*/
	@:overload public static function valueOf(s : String) : Timestamp;
	
	/**
	* Formats a timestamp in JDBC timestamp escape format.
	*         <code>yyyy-mm-dd hh:mm:ss.fffffffff</code>,
	* where <code>ffffffffff</code> indicates nanoseconds.
	* <P>
	* @return a <code>String</code> object in
	*           <code>yyyy-mm-dd hh:mm:ss.fffffffff</code> format
	*/
	@:overload override public function toString() : String;
	
	/**
	* Gets this <code>Timestamp</code> object's <code>nanos</code> value.
	*
	* @return this <code>Timestamp</code> object's fractional seconds component
	* @see #setNanos
	*/
	@:overload public function getNanos() : Int;
	
	/**
	* Sets this <code>Timestamp</code> object's <code>nanos</code> field
	* to the given value.
	*
	* @param n the new fractional seconds component
	* @exception java.lang.IllegalArgumentException if the given argument
	*            is greater than 999999999 or less than 0
	* @see #getNanos
	*/
	@:overload public function setNanos(n : Int) : Void;
	
	/**
	* Tests to see if this <code>Timestamp</code> object is
	* equal to the given <code>Timestamp</code> object.
	*
	* @param ts the <code>Timestamp</code> value to compare with
	* @return <code>true</code> if the given <code>Timestamp</code>
	*         object is equal to this <code>Timestamp</code> object;
	*         <code>false</code> otherwise
	*/
	@:overload public function equals(ts : Timestamp) : Bool;
	
	/**
	* Tests to see if this <code>Timestamp</code> object is
	* equal to the given object.
	*
	* This version of the method <code>equals</code> has been added
	* to fix the incorrect
	* signature of <code>Timestamp.equals(Timestamp)</code> and to preserve backward
	* compatibility with existing class files.
	*
	* Note: This method is not symmetric with respect to the
	* <code>equals(Object)</code> method in the base class.
	*
	* @param ts the <code>Object</code> value to compare with
	* @return <code>true</code> if the given <code>Object</code> is an instance
	*         of a <code>Timestamp</code> that
	*         is equal to this <code>Timestamp</code> object;
	*         <code>false</code> otherwise
	*/
	@:overload override public function equals(ts : Dynamic) : Bool;
	
	/**
	* Indicates whether this <code>Timestamp</code> object is
	* earlier than the given <code>Timestamp</code> object.
	*
	* @param ts the <code>Timestamp</code> value to compare with
	* @return <code>true</code> if this <code>Timestamp</code> object is earlier;
	*        <code>false</code> otherwise
	*/
	@:overload public function before(ts : Timestamp) : Bool;
	
	/**
	* Indicates whether this <code>Timestamp</code> object is
	* later than the given <code>Timestamp</code> object.
	*
	* @param ts the <code>Timestamp</code> value to compare with
	* @return <code>true</code> if this <code>Timestamp</code> object is later;
	*        <code>false</code> otherwise
	*/
	@:overload public function after(ts : Timestamp) : Bool;
	
	/**
	* Compares this <code>Timestamp</code> object to the given
	* <code>Timestamp</code> object.
	*
	* @param   ts   the <code>Timestamp</code> object to be compared to
	*                this <code>Timestamp</code> object
	* @return  the value <code>0</code> if the two <code>Timestamp</code>
	*          objects are equal; a value less than <code>0</code> if this
	*          <code>Timestamp</code> object is before the given argument;
	*          and a value greater than <code>0</code> if this
	*          <code>Timestamp</code> object is after the given argument.
	* @since   1.4
	*/
	@:require(java4) @:overload public function compareTo(ts : Timestamp) : Int;
	
	/**
	* Compares this <code>Timestamp</code> object to the given
	* <code>Date</code> object.
	*
	* @param o the <code>Date</code> to be compared to
	*          this <code>Timestamp</code> object
	* @return  the value <code>0</code> if this <code>Timestamp</code> object
	*          and the given object are equal; a value less than <code>0</code>
	*          if this  <code>Timestamp</code> object is before the given argument;
	*          and a value greater than <code>0</code> if this
	*          <code>Timestamp</code> object is after the given argument.
	*
	* @since   1.5
	*/
	@:require(java5) @:overload public function compareTo(o : java.util.Date) : Int;
	
	/**
	* {@inheritDoc}
	*
	* The {@code hashCode} method uses the underlying {@code java.util.Date}
	* implementation and therefore does not include nanos in its computation.
	*
	*/
	@:overload override public function hashCode() : Int;
	
	
}
