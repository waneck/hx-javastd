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
extern class KDCReq
{
	/**
	* Implements the ASN.1 KRB_KDC_REQ type.
	*
	* <xmp>
	* KDC-REQ              ::= SEQUENCE {
	*      -- NOTE: first tag is [1], not [0]
	*      pvno            [1] INTEGER (5) ,
	*      msg-type        [2] INTEGER (10 -- AS -- | 12 -- TGS --),
	*      padata          [3] SEQUENCE OF PA-DATA OPTIONAL
	*                            -- NOTE: not empty --,
	*      req-body        [4] KDC-REQ-BODY
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	public var reqBody : sun.security.krb5.internal.KDCReqBody;
	
	@:overload public function new(new_pAData : java.NativeArray<sun.security.krb5.internal.PAData>, new_reqBody : sun.security.krb5.internal.KDCReqBody, req_type : Int) : Void;
	
	@:overload public function new() : Void;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>, req_type : Int) : Void;
	
	/**
	* Creates an KDCReq object from a DerValue object and asn1 type.
	*
	* @param der a DER value of an KDCReq object.
	* @param req_type a encoded asn1 type value.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @exceptoin KrbErrException
	*/
	@:overload public function new(der : sun.security.util.DerValue, req_type : Int) : Void;
	
	/**
	* Initializes a KDCReq object from a DerValue.  The DER encoding
	* must be in the format specified by the KRB_KDC_REQ ASN.1 notation.
	*
	* @param encoding a DER-encoded KDCReq object.
	* @param req_type an int indicating whether it's KRB_AS_REQ or KRB_TGS_REQ type
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @exception KrbException if an error occurs while constructing a Realm object,
	* or a Krb object from DER-encoded data.
	*/
	@:overload private function init(encoding : sun.security.util.DerValue, req_type : Int) : Void;
	
	/**
	* Encodes this object to a byte array.
	*
	* @return an byte array of encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function asn1EncodeReqBody() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
