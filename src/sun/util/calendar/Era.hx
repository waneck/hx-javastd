package sun.util.calendar;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class Era
{
	/**
	* Constructs an <code>Era</code> instance.
	*
	* @param name the era name (e.g., "BeforeCommonEra" for the Julian calendar system)
	* @param abbr the abbreviation of the era name (e.g., "B.C.E." for "BeforeCommonEra")
	* @param since the time (millisecond offset from January 1, 1970
	* (Gregorian) UTC or local time) when the era starts, inclusive.
	* @param localTime <code>true</code> if <code>since</code>
	* specifies a local time; <code>false</code> if
	* <code>since</code> specifies UTC
	*/
	@:overload public function new(name : String, abbr : String, since : haxe.Int64, localTime : Bool) : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getDisplayName(locale : java.util.Locale) : String;
	
	@:overload public function getAbbreviation() : String;
	
	@:overload public function getDiaplayAbbreviation(locale : java.util.Locale) : String;
	
	@:overload public function getSince(zone : java.util.TimeZone) : haxe.Int64;
	
	@:overload public function getSinceDate() : sun.util.calendar.CalendarDate;
	
	@:overload public function isLocalTime() : Bool;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
