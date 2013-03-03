package sun.jvmstat.perfdata.monitor.v2_0;
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
* A typesafe enumeration for describing standard Java type codes.
*
* @author Brian Doherty
* @since 1.5
*/
@:require(java5) extern class TypeCode
{
	@:public @:static @:final public static var BOOLEAN(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var CHAR(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var FLOAT(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var DOUBLE(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var BYTE(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var SHORT(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var INT(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var LONG(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var OBJECT(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var ARRAY(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	@:public @:static @:final public static var VOID(default, null) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	/**
	* Convert enumeration value to a String.
	*
	* @return String - the string representation for the enumeration.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Convert enumeration to its character representation.
	*
	* @return int - the integer representation for the enumeration.
	*/
	@:overload @:public public function toChar() : Int;
	
	/**
	* Map a character value to its corresponding TypeCode object.
	*
	* @param c an character representing a Java TypeCode
	* @return TypeCode - The TypeCode enumeration object for the given
	*                    character.
	* @throws IllegalArgumentException Thrown if <code>c</code> is not
	*                                  a valid Java TypeCode.
	*/
	@:overload @:public @:static public static function toTypeCode(c : java.StdTypes.Char16) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	/**
	* Map a character value to its corresponding TypeCode object.
	*
	* @param b a byte representing a Java TypeCode. This value is
	*          converted into a char and used to find the corresponding
	*          TypeCode.
	* @return TypeCode - The TypeCode enumeration object for the given byte.
	* @throws IllegalArgumentException Thrown if <code>v</code> is not
	*                                  a valid Java TypeCode.
	*/
	@:overload @:public @:static public static function toTypeCode(b : java.StdTypes.Int8) : sun.jvmstat.perfdata.monitor.v2_0.TypeCode;
	
	
}
