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
extern class KRBSafeBody
{
	/**
	* Implements the ASN.1 KRBSafeBody type.
	*
	* <xmp>
	* KRB-SAFE-BODY   ::= SEQUENCE {
	*         user-data       [0] OCTET STRING,
	*         timestamp       [1] KerberosTime OPTIONAL,
	*         usec            [2] Microseconds OPTIONAL,
	*         seq-number      [3] UInt32 OPTIONAL,
	*         s-address       [4] HostAddress,
	*         r-address       [5] HostAddress OPTIONAL
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	@:public public var userData : java.NativeArray<java.StdTypes.Int8>;
	
	@:public public var timestamp : sun.security.krb5.internal.KerberosTime;
	
	@:public public var usec : Null<Int>;
	
	@:public public var seqNumber : Null<Int>;
	
	@:public public var sAddress : sun.security.krb5.internal.HostAddress;
	
	@:public public var rAddress : sun.security.krb5.internal.HostAddress;
	
	@:overload @:public public function new(new_userData : java.NativeArray<java.StdTypes.Int8>, new_timestamp : sun.security.krb5.internal.KerberosTime, new_usec : Null<Int>, new_seqNumber : Null<Int>, new_sAddress : sun.security.krb5.internal.HostAddress, new_rAddress : sun.security.krb5.internal.HostAddress) : Void;
	
	/**
	* Constructs a KRBSafeBody object.
	* @param encoding a Der-encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes an KRBSafeBody object.
	* @return the byte array of encoded KRBSafeBody object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parse (unmarshal) a KRBSafeBody from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception on error.
	* @param data the Der input stream value, which contains one or more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicates if this data field is optional
	* @return an instance of KRBSafeBody.
	*
	*/
	@:overload @:public @:static public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.internal.KRBSafeBody;
	
	
}
