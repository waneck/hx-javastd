package com.sun.jmx.snmp.internal;
/*
* Copyright (c) 2001, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Utility class used to deal with various data representations.
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class SnmpTools implements SnmpDefinitions
{
	/**
	* Translates a binary representation in an ASCII one. The returned string is an hexadecimal string starting with 0x.
	* @param data Binary to translate.
	* @return Translated binary.
	*/
	@:overload public static function binary2ascii(data : java.NativeArray<java.StdTypes.Int8>, length : Int) : java.lang.String.String;
	
	/**
	* Translates a binary representation in an ASCII one. The returned string is an hexadecimal string starting with 0x.
	* @param data Binary to translate.
	* @return Translated binary.
	*/
	@:overload public static function binary2ascii(data : java.NativeArray<java.StdTypes.Int8>) : java.lang.String.String;
	
	/**
	* Translates a stringified representation in a binary one. The passed string is an hexadecimal one starting with 0x.
	* @param str String to translate.
	* @return Translated string.
	*/
	@:overload public static function ascii2binary(str : java.lang.String.String) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
