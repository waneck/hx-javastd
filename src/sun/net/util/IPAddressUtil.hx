package sun.net.util;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class IPAddressUtil
{
	/*
	* Converts IPv4 address in its textual presentation form
	* into its numeric binary form.
	*
	* @param src a String representing an IPv4 address in standard format
	* @return a byte array representing the IPv4 numeric address
	*/
	@:overload public static function textToNumericFormatV4(src : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/*
	* Convert IPv6 presentation level address to network order binary form.
	* credit:
	*  Converted from C code from Solaris 8 (inet_pton)
	*
	* Any component of the string following a per-cent % is ignored.
	*
	* @param src a String representing an IPv6 address in textual format
	* @return a byte array representing the IPv6 numeric address
	*/
	@:overload public static function textToNumericFormatV6(src : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @param src a String representing an IPv4 address in textual format
	* @return a boolean indicating whether src is an IPv4 literal address
	*/
	@:overload public static function isIPv4LiteralAddress(src : String) : Bool;
	
	/**
	* @param src a String representing an IPv6 address in textual format
	* @return a boolean indicating whether src is an IPv6 literal address
	*/
	@:overload public static function isIPv6LiteralAddress(src : String) : Bool;
	
	/*
	* Convert IPv4-Mapped address to IPv4 address. Both input and
	* returned value are in network order binary form.
	*
	* @param src a String representing an IPv4-Mapped address in textual format
	* @return a byte array representing the IPv4 numeric address
	*/
	@:overload public static function convertFromIPv4MappedAddress(addr : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
