package sun.util;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class BuddhistCalendar extends java.util.GregorianCalendar
{
	/**
	* Constructs a default BuddhistCalendar using the current time
	* in the default time zone with the default locale.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a BuddhistCalendar based on the current time
	* in the given time zone with the default locale.
	* @param zone the given time zone.
	*/
	@:overload public function new(zone : java.util.TimeZone) : Void;
	
	/**
	* Constructs a BuddhistCalendar based on the current time
	* in the default time zone with the given locale.
	* @param aLocale the given locale.
	*/
	@:overload public function new(aLocale : java.util.Locale) : Void;
	
	/**
	* Constructs a BuddhistCalendar based on the current time
	* in the given time zone with the given locale.
	* @param zone the given time zone.
	* @param aLocale the given locale.
	*/
	@:overload public function new(zone : java.util.TimeZone, aLocale : java.util.Locale) : Void;
	
	/**
	* Compares this BuddhistCalendar to an object reference.
	* @param obj the object reference with which to compare
	* @return true if this object is equal to <code>obj</code>; false otherwise
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Override hashCode.
	* Generates the hash code for the BuddhistCalendar object
	*/
	@:overload override public function hashCode() : Int;
	
	/**
	* Gets the value for a given time field.
	* @param field the given time field.
	* @return the value for the given time field.
	*/
	@:overload override public function get(field : Int) : Int;
	
	/**
	* Sets the time field with the given value.
	* @param field the given time field.
	* @param value the value to be set for the given time field.
	*/
	@:overload override public function set(field : Int, value : Int) : Void;
	
	/**
	* Adds the specified (signed) amount of time to the given time field.
	* @param field the time field.
	* @param amount the amount of date or time to be added to the field.
	*/
	@:overload override public function add(field : Int, amount : Int) : Void;
	
	/**
	* Add to field a signed amount without changing larger fields.
	* A negative roll amount means to subtract from field without changing
	* larger fields.
	* @param field the time field.
	* @param amount the signed amount to add to <code>field</code>.
	*/
	@:overload override public function roll(field : Int, amount : Int) : Void;
	
	@:overload override public function getDisplayName(field : Int, style : Int, locale : java.util.Locale) : String;
	
	@:overload override public function getDisplayNames(field : Int, style : Int, locale : java.util.Locale) : java.util.Map<String, Null<Int>>;
	
	/**
	* Returns the maximum value that this field could have, given the
	* current date.  For example, with the date "Feb 3, 2540" and the
	* <code>DAY_OF_MONTH</code> field, the actual maximum is 28; for
	* "Feb 3, 2539" it is 29.
	*
	* @param field the field to determine the maximum of
	* @return the maximum of the given field for the current date of this Calendar
	*/
	@:overload override public function getActualMaximum(field : Int) : Int;
	
	@:overload override public function toString() : String;
	
	
}
