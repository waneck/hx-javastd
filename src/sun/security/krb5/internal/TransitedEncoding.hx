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
extern class TransitedEncoding
{
	/**
	* Implements the ASN.1 TransitedEncoding type.
	*
	* <xmp>
	*  TransitedEncoding      ::= SEQUENCE {
	*         tr-type         [0] Int32 -- must be registered --,
	*         contents        [1] OCTET STRING
	*  }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	public var trType : Int;
	
	public var contents : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function new(type : Int, cont : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a TransitedEncoding object.
	* @param encoding a Der-encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes a TransitedEncoding object.
	* @return the byte array of the encoded TransitedEncoding object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parse (unmarshal) a TransitedEncoding object from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception on error.
	* @param data the Der input stream value, which contains one or more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicate if this data field is optional
	* @return an instance of TransitedEncoding.
	*
	*/
	@:overload public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : TransitedEncoding;
	
	
}
