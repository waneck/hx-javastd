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
* Is the base for all SNMP syntaxes based on unsigned integers.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpUnsignedInt extends com.sun.jmx.snmp.SnmpInt.SnmpInt
{
	/**
	* The largest value of the type <code>unsigned int</code> (2^32 - 1).
	*/
	public static var MAX_VALUE(default, null) : haxe.Int64;
	
	/**
	* Constructs a new <CODE>SnmpUnsignedInt</CODE> from the specified integer value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is negative
	* or larger than {@link #MAX_VALUE SnmpUnsignedInt.MAX_VALUE}.
	*/
	@:overload public function new(v : Int) : Void;
	
	/**
	* Constructs a new <CODE>SnmpUnsignedInt</CODE> from the specified <CODE>Integer</CODE> value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is negative
	* or larger than {@link #MAX_VALUE SnmpUnsignedInt.MAX_VALUE}.
	*/
	@:overload public function new(v : java.lang.Integer.Integer) : Void;
	
	/**
	* Constructs a new <CODE>SnmpUnsignedInt</CODE> from the specified long value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is negative
	* or larger than {@link #MAX_VALUE SnmpUnsignedInt.MAX_VALUE}.
	*/
	@:overload public function new(v : haxe.Int64) : Void;
	
	/**
	* Constructs a new <CODE>SnmpUnsignedInt</CODE> from the specified <CODE>Long</CODE> value.
	* @param v The initialization value.
	* @exception IllegalArgumentException The specified value is negative
	* or larger than {@link #MAX_VALUE SnmpUnsignedInt.MAX_VALUE}.
	*/
	@:overload public function new(v : java.lang.Long.Long) : Void;
	
	/**
	* Returns a textual description of the type object.
	* @return ASN.1 textual description.
	*/
	@:overload override public function getTypeName() : java.lang.String.String;
	
	
}
