package sun.jvmstat.perfdata.monitor.v1_0;
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
* A typesafe enumeration for describing Java basic types.
*
* <p> The enumeration values for this typesafe enumeration must be
* kept in synchronization with the BasicType enum in the
* globalsDefinitions.hpp file in the HotSpot source base.</p>
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class BasicType
{
	public static var BOOLEAN(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var CHAR(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var FLOAT(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var DOUBLE(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var BYTE(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var SHORT(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var INT(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var LONG(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var OBJECT(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var ARRAY(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var VOID(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var ADDRESS(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	public static var ILLEGAL(default, null) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	/**
	* Convert enumeration value to a String.
	*
	* @return String - the string representation for the enumeration.
	*/
	@:overload public function toString() : String;
	
	/**
	* Convert enumeration to an integer value.
	*
	* @return int - the integer representation for the enumeration.
	*/
	@:overload public function intValue() : Int;
	
	/**
	* Map an integer value to its corresponding BasicType object.
	*
	* @param i an integer representation of a BasicType
	* @return BasicType - The BasicType enumeration object matching
	*                     the value of <code>i</code>
	*/
	@:overload public static function toBasicType(i : Int) : sun.jvmstat.perfdata.monitor.v1_0.BasicType;
	
	
}
