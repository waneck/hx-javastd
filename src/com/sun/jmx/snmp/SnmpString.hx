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
* Represents an SNMP string.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpString extends com.sun.jmx.snmp.SnmpValue.SnmpValue
{
	/**
	* Constructs a new empty <CODE>SnmpString</CODE>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new <CODE>SnmpString</CODE> from the specified bytes array.
	* @param v The bytes composing the string value.
	*/
	@:overload public function new(v : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpString</CODE> from the specified <CODE>Bytes</CODE> array.
	* @param v The <CODE>Bytes</CODE> composing the string value.
	*/
	@:overload public function new(v : java.NativeArray<java.lang.Byte.Byte>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpString</CODE> from the specified <CODE>String</CODE> value.
	* @param v The initialization value.
	*/
	@:overload public function new(v : java.lang.String.String) : Void;
	
	/**
	* Constructs a new <CODE>SnmpString</CODE> from the specified <CODE> InetAddress </Code>.
	* @param address The <CODE>InetAddress </CODE>.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(address : java.net.InetAddress.InetAddress) : Void;
	
	/**
	* Converts the string value to its <CODE> InetAddress </CODE> form.
	* @return an {@link InetAddress} defined by the string value.
	* @exception UnknownHostException If string value is not a legal address format.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function inetAddressValue() : java.net.InetAddress.InetAddress;
	
	/**
	* Converts the specified binary string into a character string.
	* @param bin The binary string value to convert.
	* @return The character string representation.
	*/
	@:overload public static function BinToChar(bin : java.lang.String.String) : java.lang.String.String;
	
	/**
	* Converts the specified hexadecimal string into a character string.
	* @param hex The hexadecimal string value to convert.
	* @return The character string representation.
	*/
	@:overload public static function HexToChar(hex : java.lang.String.String) : java.lang.String.String;
	
	/**
	* Returns the bytes array of this <CODE>SnmpString</CODE>.
	* @return The value.
	*/
	@:overload public function byteValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Converts the string value to its array of <CODE>Bytes</CODE> form.
	* @return The array of <CODE>Bytes</CODE> representation of the value.
	*/
	@:overload public function toByte() : java.NativeArray<java.lang.Byte.Byte>;
	
	/**
	* Converts the string value to its <CODE>String</CODE> form.
	* @return The <CODE>String</CODE> representation of the value.
	*/
	@:overload public function toString() : java.lang.String.String;
	
	/**
	* Converts the string value to its <CODE>SnmpOid</CODE> form.
	* @return The OID representation of the value.
	*/
	@:overload override public function toOid() : SnmpOid;
	
	/**
	* Extracts the string from an index OID and returns its
	* value converted as an <CODE>SnmpOid</CODE>.
	* @param index The index array.
	* @param start The position in the index array.
	* @return The OID representing the string value.
	* @exception SnmpStatusException There is no string value
	* available at the start position.
	*/
	@:native('toOid') @:overload public static function _toOid(index : java.NativeArray<haxe.Int64>, start : Int) : SnmpOid;
	
	/**
	* Scans an index OID, skips the string value and returns the position
	* of the next value.
	* @param index The index array.
	* @param start The position in the index array.
	* @return The position of the next value.
	* @exception SnmpStatusException There is no string value
	* available at the start position.
	*/
	@:overload public static function nextOid(index : java.NativeArray<haxe.Int64>, start : Int) : Int;
	
	/**
	* Appends an <CODE>SnmpOid</CODE> representing an <CODE>SnmpString</CODE> to another OID.
	* @param source An OID representing an <CODE>SnmpString</CODE> value.
	* @param dest Where source should be appended.
	*/
	@:overload public static function appendToOid(source : SnmpOid, dest : SnmpOid) : Void;
	
	/**
	* Performs a clone action. This provides a workaround for the
	* <CODE>SnmpValue</CODE> interface.
	* @return The SnmpValue clone.
	*/
	@:overload @:final @:synchronized override public function duplicate() : com.sun.jmx.snmp.SnmpValue.SnmpValue;
	
	/**
	* Clones the <CODE>SnmpString</CODE> object, making a copy of its data.
	* @return The object clone.
	*/
	@:overload @:synchronized public function clone() : java.lang.Object.Object;
	
	/**
	* Returns a textual description of the type object.
	* @return ASN.1 textual description.
	*/
	@:overload override public function getTypeName() : java.lang.String.String;
	
	/**
	* This is the bytes array of the string value.
	* @serial
	*/
	private var value : java.NativeArray<java.StdTypes.Int8>;
	
	
}
