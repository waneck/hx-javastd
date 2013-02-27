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
* Represents an SNMP integer.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpInt extends com.sun.jmx.snmp.SnmpValue.SnmpValue
{
	/**
	* Constructs a new <CODE>SnmpInt</CODE> from the specified integer value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is smaller than <CODE>Integer.MIN_VALUE</CODE>
	* or larger than <CODE>Integer.MAX_VALUE</CODE>.
	*/
	@:overload public function new(v : Int) : Void;
	
	/**
	* Constructs a new <CODE>SnmpInt</CODE> from the specified <CODE>Integer</CODE> value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is smaller than <CODE>Integer.MIN_VALUE</CODE>
	* or larger than <CODE>Integer.MAX_VALUE</CODE>.
	*/
	@:overload public function new(v : java.lang.Integer.Integer) : Void;
	
	/**
	* Constructs a new <CODE>SnmpInt</CODE> from the specified long value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is smaller than <CODE>Integer.MIN_VALUE</CODE>
	* or larger than <CODE>Integer.MAX_VALUE</CODE>.
	*/
	@:overload public function new(v : haxe.Int64) : Void;
	
	/**
	* Constructs a new <CODE>SnmpInt</CODE> from the specified <CODE>Long</CODE> value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is smaller than <CODE>Integer.MIN_VALUE</CODE>
	* or larger than <CODE>Integer.MAX_VALUE</CODE>.
	*/
	@:overload public function new(v : java.lang.Long.Long) : Void;
	
	/**
	* Constructs a new <CODE>SnmpInt</CODE> from the specified <CODE>Enumerated</CODE> value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is smaller than <CODE>Integer.MIN_VALUE</CODE>
	* or larger than <CODE>Integer.MAX_VALUE</CODE>.
	* @see Enumerated
	*/
	@:overload public function new(v : com.sun.jmx.snmp.Enumerated.Enumerated) : Void;
	
	/**
	* Constructs a new <CODE>SnmpInt</CODE> from the specified boolean value.
	* This constructor applies rfc1903 rule:
	* <p><blockquote><pre>
	* TruthValue ::= TEXTUAL-CONVENTION
	*     STATUS       current
	*     DESCRIPTION
	*             "Represents a boolean value."
	*     SYNTAX       INTEGER { true(1), false(2) }
	* </pre></blockquote>
	* @param v The initialization value.
	*/
	@:overload public function new(v : Bool) : Void;
	
	/**
	* Returns the long value of this <CODE>SnmpInt</CODE>.
	* @return The value.
	*/
	@:overload public function longValue() : haxe.Int64;
	
	/**
	* Converts the integer value to its <CODE>Long</CODE> form.
	* @return The <CODE>Long</CODE> representation of the value.
	*/
	@:overload public function toLong() : java.lang.Long.Long;
	
	/**
	* Converts the integer value to its integer form.
	* @return The integer representation of the value.
	*/
	@:overload public function intValue() : Int;
	
	/**
	* Converts the integer value to its <CODE>Integer</CODE> form.
	* @return The <CODE>Integer</CODE> representation of the value.
	*/
	@:overload public function toInteger() : java.lang.Integer.Integer;
	
	/**
	* Converts the integer value to its <CODE>String</CODE> form.
	* @return The <CODE>String</CODE> representation of the value.
	*/
	@:overload public function toString() : java.lang.String.String;
	
	/**
	* Converts the integer value to its <CODE>SnmpOid</CODE> form.
	* @return The OID representation of the value.
	*/
	@:overload override public function toOid() : SnmpOid;
	
	/**
	* Extracts the integer from an index OID and returns its
	* value converted as an <CODE>SnmpOid</CODE>.
	* @param index The index array.
	* @param start The position in the index array.
	* @return The OID representing the integer value.
	* @exception SnmpStatusException There is no integer value
	* available at the start position.
	*/
	@:native('toOid') @:overload public static function _toOid(index : java.NativeArray<haxe.Int64>, start : Int) : SnmpOid;
	
	/**
	* Scans an index OID, skips the integer value and returns the position
	* of the next value.
	* @param index The index array.
	* @param start The position in the index array.
	* @return The position of the next value.
	* @exception SnmpStatusException There is no integer value
	* available at the start position.
	*/
	@:overload public static function nextOid(index : java.NativeArray<haxe.Int64>, start : Int) : Int;
	
	/**
	* Appends an <CODE>SnmpOid</CODE> representing an <CODE>SnmpInt</CODE> to another OID.
	* @param source An OID representing an <CODE>SnmpInt</CODE> value.
	* @param dest Where source should be appended.
	*/
	@:overload public static function appendToOid(source : SnmpOid, dest : SnmpOid) : Void;
	
	/**
	* Performs a clone action. This provides a workaround for the
	* <CODE>SnmpValue</CODE> interface.
	* @return The <CODE>SnmpValue</CODE> clone.
	*/
	@:overload @:final @:synchronized override public function duplicate() : com.sun.jmx.snmp.SnmpValue.SnmpValue;
	
	/**
	* Clones the <CODE>SnmpInt</CODE> object, making a copy of its data.
	* @return The object clone.
	*/
	@:overload @:final @:synchronized public function clone() : java.lang.Object.Object;
	
	/**
	* Returns a textual description of the type object.
	* @return ASN.1 textual description.
	*/
	@:overload override public function getTypeName() : java.lang.String.String;
	
	/**
	* This is where the value is stored. This long is signed.
	* @serial
	*/
	private var value : haxe.Int64;
	
	
}
