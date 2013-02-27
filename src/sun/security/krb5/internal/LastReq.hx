package sun.security.krb5.internal;
/*
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
extern class LastReq
{
	@:overload public function new(entries : java.NativeArray<sun.security.krb5.internal.LastReqEntry>) : Void;
	
	/**
	* Constructs a LastReq object.
	* @param encoding a Der-encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes an LastReq object.
	* @return the byte array of encoded LastReq object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parse (unmarshal) a last request from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception on error.
	* @param data the Der input stream value, which contains one or more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicates if this data field is optional
	* @return an instance of LastReq.
	*
	*/
	@:overload public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : LastReq;
	
	
}
