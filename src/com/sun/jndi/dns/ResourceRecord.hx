package com.sun.jndi.dns;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class ResourceRecord
{
	@:overload @:public public function toString() : String;
	
	/*
	* Returns the name field of this RR, including the root label.
	*/
	@:overload @:public public function getName() : com.sun.jndi.dns.DnsName;
	
	/*
	* Returns the number of octets in the encoded RR.
	*/
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function getType() : Int;
	
	@:overload @:public public function getRrclass() : Int;
	
	@:overload @:public public function getRdata() : Dynamic;
	
	@:overload @:public @:static public static function getTypeName(rrtype : Int) : String;
	
	@:native('getType') @:overload @:public @:static public static function _getType(typeName : String) : Int;
	
	@:overload @:public @:static public static function getRrclassName(rrclass : Int) : String;
	
	@:native('getRrclass') @:overload @:public @:static public static function _getRrclass(className : String) : Int;
	
	/*
	* Compares two SOA record serial numbers using 32-bit serial number
	* arithmetic as defined in RFC 1982.  Serial numbers are unsigned
	* 32-bit quantities.  Returns a negative, zero, or positive value
	* as the first serial number is less than, equal to, or greater
	* than the second.  If the serial numbers are not comparable the
	* result is undefined.  Note that the relation is not transitive.
	*/
	@:overload @:public @:static public static function compareSerialNumbers(s1 : haxe.Int64, s2 : haxe.Int64) : Int;
	
	
}
