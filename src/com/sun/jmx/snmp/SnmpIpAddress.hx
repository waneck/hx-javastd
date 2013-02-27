package com.sun.jmx.snmp;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
* Represents an SNMP IpAddress.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpIpAddress extends SnmpOid
{
	/**
	* Constructs a new <CODE>SnmpIpAddress</CODE> from the specified bytes array.
	* @param bytes The four bytes composing the address.
	* @exception IllegalArgumentException The length of the array is not equal to four.
	*/
	@:overload public function new(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpIpAddress</CODE> from the specified long value.
	* @param addr The initialization value.
	*/
	@:overload public function new(addr : haxe.Int64) : Void;
	
	/**
	* Constructs a new <CODE>SnmpIpAddress</CODE> from a dot-formatted <CODE>String</CODE>.
	* The dot-formatted <CODE>String</CODE> is formulated x.x.x.x .
	* @param dotAddress The initialization value.
	* @exception IllegalArgumentException The string does not correspond to an ip address.
	*/
	@:overload public function new(dotAddress : java.lang.String.String) : Void;
	
	/**
	* Constructs a new <CODE>SnmpIpAddress</CODE> from four long values.
	* @param b1 Byte 1.
	* @param b2 Byte 2.
	* @param b3 Byte 3.
	* @param b4 Byte 4.
	* @exception IllegalArgumentException A value is outside of [0-255].
	*/
	@:overload public function new(b1 : haxe.Int64, b2 : haxe.Int64, b3 : haxe.Int64, b4 : haxe.Int64) : Void;
	
	/**
	* Converts the address value to its byte array form.
	* @return The byte array representation of the value.
	*/
	@:overload public function byteValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Converts the address to its <CODE>String</CODE> form.
	* Same as <CODE>toString()</CODE>. Exists only to follow a naming scheme.
	* @return The <CODE>String</CODE> representation of the value.
	*/
	@:overload public function stringValue() : java.lang.String.String;
	
	/**
	* Extracts the ip address from an index OID and returns its
	* value converted as an <CODE>SnmpOid</CODE>.
	* @param index The index array.
	* @param start The position in the index array.
	* @return The OID representing the ip address value.
	* @exception SnmpStatusException There is no ip address value
	* available at the start position.
	*/
	@:overload public static function toOid(index : java.NativeArray<haxe.Int64>, start : Int) : SnmpOid;
	
	/**
	* Scans an index OID, skips the address value and returns the position
	* of the next value.
	* @param index The index array.
	* @param start The position in the index array.
	* @return The position of the next value.
	* @exception SnmpStatusException There is no address value
	* available at the start position.
	*/
	@:overload public static function nextOid(index : java.NativeArray<haxe.Int64>, start : Int) : Int;
	
	/**
	* Appends an <CODE>SnmpOid</CODE> representing an <CODE>SnmpIpAddress</CODE> to another OID.
	* @param source An OID representing an <CODE>SnmpIpAddress</CODE> value.
	* @param dest Where source should be appended.
	*/
	@:overload public static function appendToOid(source : SnmpOid, dest : SnmpOid) : Void;
	
	/**
	* Returns a textual description of the type object.
	* @return ASN.1 textual description.
	*/
	@:overload @:final public function getTypeName() : java.lang.String.String;
	
	
}
