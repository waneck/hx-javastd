package sun.security.krb5.internal;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
/*
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class HostAddress implements java.lang.Cloneable
{
	@:overload public function clone() : Dynamic;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Gets the InetAddress of this HostAddress.
	* @return the IP address for this specified host.
	* @exception if no IP address for the host could be found.
	*
	*/
	@:overload public function getInetAddress() : java.net.InetAddress;
	
	@:overload public function new() : Void;
	
	/**
	* Creates a HostAddress from the specified address and address type.
	*
	* @param new_addrType the value of the address type which matches the defined
	*                       address family constants in the Berkeley Standard
	*                       Distributions of Unix.
	* @param new_address network address.
	* @exception KrbApErrException if address type and address length do not match defined value.
	*
	*/
	@:overload public function new(new_addrType : Int, new_address : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function new(inetAddress : java.net.InetAddress) : Void;
	
	/**
	* Constructs a host address from a single DER-encoded value.
	* @param encoding a single DER-encoded value.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*
	*/
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes a HostAddress object.
	* @return a byte array of encoded HostAddress object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parses (unmarshal) a host address from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception on error.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @param data the Der input stream value, which contains one or more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicates if this data field is optional
	* @return an instance of HostAddress.
	*
	*/
	@:overload public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.internal.HostAddress;
	
	
}
