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
//// java imports
////
/**
* Represents an SNMP String defined with a fixed length.
* The class is mainly used when dealing with table indexes for which one of the keys
* is defined as a <CODE>String</CODE>.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpStringFixed extends com.sun.jmx.snmp.SnmpString.SnmpString
{
	/**
	* Constructs a new <CODE>SnmpStringFixed</CODE> from the specified bytes array.
	* @param v The bytes composing the fixed-string value.
	*/
	@:overload public function new(v : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpStringFixed</CODE> with the specified <CODE>Bytes</CODE> array.
	* @param v The <CODE>Bytes</CODE> composing the fixed-string value.
	*/
	@:overload public function new(v : java.NativeArray<java.lang.Byte.Byte>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpStringFixed</CODE> from the specified <CODE>String</CODE> value.
	* @param v The initialization value.
	*/
	@:overload public function new(v : java.lang.String.String) : Void;
	
	/**
	* Constructs a new <CODE>SnmpStringFixed</CODE> from the specified <CODE>bytes</CODE> array
	* with the specified length.
	* @param l The length of the fixed-string.
	* @param v The <CODE>bytes</CODE> composing the fixed-string value.
	* @exception IllegalArgumentException Either the length or the <CODE>byte</CODE> array is not valid.
	*/
	@:overload public function new(l : Int, v : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpStringFixed</CODE> from the specified <CODE>Bytes</CODE> array
	* with the specified length.
	* @param l The length of the fixed-string.
	* @param v The <CODE>Bytes</CODE> composing the fixed-string value.
	* @exception IllegalArgumentException Either the length or the <CODE>Byte</CODE> array is not valid.
	*/
	@:overload public function new(l : Int, v : java.NativeArray<java.lang.Byte.Byte>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpStringFixed</CODE> from the specified <CODE>String</CODE>
	* with the specified length.
	* @param l The length of the fixed-string.
	* @param s The <CODE>String</CODE> composing the fixed-string value.
	* @exception IllegalArgumentException Either the length or the <CODE>String</CODE> is not valid.
	*/
	@:overload public function new(l : Int, s : java.lang.String.String) : Void;
	
	/**
	* Extracts the fixed-string from an index OID and returns its
	* value converted as an <CODE>SnmpOid</CODE>.
	* @param l The number of successive array elements to be retreived
	* in order to construct the OID.
	* These elements are retreived starting at the <CODE>start</CODE> position.
	* @param index The index array.
	* @param start The position in the index array.
	* @return The OID representing the fixed-string value.
	* @exception SnmpStatusException There is no string value
	* available at the start position.
	*/
	@:native('toOid') @:overload public static function _toOid(l : Int, index : java.NativeArray<haxe.Int64>, start : Int) : SnmpOid;
	
	/**
	* Scans an index OID, skip the string value and returns the position
	* of the next value.
	* @param l The number of successive array elements to be passed
	* in order to get the position of the next value.
	* These elements are passed starting at the <CODE>start</CODE> position.
	* @param index The index array.
	* @param start The position in the index array.
	* @return The position of the next value.
	* @exception SnmpStatusException There is no string value
	* available at the start position.
	*/
	@:overload public static function nextOid(l : Int, index : java.NativeArray<haxe.Int64>, start : Int) : Int;
	
	/**
	* Appends an <CODE>SnmpOid</CODE> representing an <CODE>SnmpStringFixed</CODE> to another OID.
	* @param l Unused.
	* @param source An OID representing an <CODE>SnmpStringFixed</CODE> value.
	* @param dest Where source should be appended.
	*/
	@:overload public static function appendToOid(l : Int, source : SnmpOid, dest : SnmpOid) : Void;
	
	
}
