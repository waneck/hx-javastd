package com.sun.jndi.toolkit.url;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class UrlUtil
{
	/**
	* Decode a URI string (according to RFC 2396).
	*/
	@:overload @:public @:static @:final public static function decode(s : String) : String;
	
	/**
	* Decode a URI string (according to RFC 2396).
	*
	* Three-character sequences '%xy', where 'xy' is the two-digit
	* hexadecimal representation of the lower 8-bits of a character,
	* are decoded into the character itself.
	*
	* The string is subsequently converted using the specified encoding
	*/
	@:overload @:public @:static @:final public static function decode(s : String, enc : String) : String;
	
	/**
	* Encode a string for inclusion in a URI (according to RFC 2396).
	*
	* Unsafe characters are escaped by encoding them in three-character
	* sequences '%xy', where 'xy' is the two-digit hexadecimal representation
	* of the lower 8-bits of the character.
	*
	* The question mark '?' character is also escaped, as required by RFC 2255.
	*
	* The string is first converted to the specified encoding.
	* For LDAP (2255), the encoding must be UTF-8.
	*/
	@:overload @:public @:static @:final public static function encode(s : String, enc : String) : String;
	
	
}
