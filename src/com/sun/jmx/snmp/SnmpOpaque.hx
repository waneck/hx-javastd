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
* Is used to represent an SNMP value.
* The <CODE>Opaque</CODE> type is defined in RFC 1155.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*/
extern class SnmpOpaque extends com.sun.jmx.snmp.SnmpString.SnmpString
{
	/**
	* Constructs a new <CODE>SnmpOpaque</CODE> from the specified bytes array.
	* @param v The bytes composing the opaque value.
	*/
	@:overload public function new(v : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpOpaque</CODE> with the specified <CODE>Bytes</CODE> array.
	* @param v The <CODE>Bytes</CODE> composing the opaque value.
	*/
	@:overload public function new(v : java.NativeArray<java.lang.Byte.Byte>) : Void;
	
	/**
	* Constructs a new <CODE>SnmpOpaque</CODE> from the specified <CODE>String</CODE> value.
	* @param v The initialization value.
	*/
	@:overload public function new(v : java.lang.String.String) : Void;
	
	/**
	* Converts the opaque to its <CODE>String</CODE> form, that is, a string of
	* bytes expressed in hexadecimal form.
	* @return The <CODE>String</CODE> representation of the value.
	*/
	@:overload override public function toString() : java.lang.String.String;
	
	/**
	* Returns a textual description of the type object.
	* @return ASN.1 textual description.
	*/
	@:overload @:final override public function getTypeName() : java.lang.String.String;
	
	
}
