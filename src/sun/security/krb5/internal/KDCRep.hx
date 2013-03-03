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
extern class KDCRep
{
	/**
	* Implements the ASN.1 KDC-REP type.
	*
	* <xmp>
	* KDC-REP         ::= SEQUENCE {
	*         pvno            [0] INTEGER (5),
	*         msg-type        [1] INTEGER (11 -- AS -- | 13 -- TGS --),
	*         padata          [2] SEQUENCE OF PA-DATA OPTIONAL
	*                                   -- NOTE: not empty --,
	*         crealm          [3] Realm,
	*         cname           [4] PrincipalName,
	*         ticket          [5] Ticket,
	*         enc-part        [6] EncryptedData
	*                                   -- EncASRepPart or EncTGSRepPart,
	*                                   -- as appropriate
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	@:public public var crealm : sun.security.krb5.Realm;
	
	@:public public var cname : sun.security.krb5.PrincipalName;
	
	@:public public var ticket : sun.security.krb5.internal.Ticket;
	
	@:public public var encPart : sun.security.krb5.EncryptedData;
	
	@:public public var encKDCRepPart : sun.security.krb5.internal.EncKDCRepPart;
	
	@:public public var pAData : java.NativeArray<sun.security.krb5.internal.PAData>;
	
	@:overload @:public public function new(new_pAData : java.NativeArray<sun.security.krb5.internal.PAData>, new_crealm : sun.security.krb5.Realm, new_cname : sun.security.krb5.PrincipalName, new_ticket : sun.security.krb5.internal.Ticket, new_encPart : sun.security.krb5.EncryptedData, req_type : Int) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>, req_type : Int) : Void;
	
	@:overload @:public public function new(encoding : sun.security.util.DerValue, req_type : Int) : Void;
	
	/**
	* Initializes an KDCRep object.
	*
	* @param encoding a single DER-encoded value.
	* @param req_type reply message type.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @exception RealmException if an error occurs while constructing
	* a Realm object from DER-encoded data.
	* @exception KrbApErrException if the value read from the DER-encoded
	* data stream does not match the pre-defined value.
	*
	*/
	@:overload @:protected private function init(encoding : sun.security.util.DerValue, req_type : Int) : Void;
	
	/**
	* Encodes this object to a byte array.
	* @return byte array of encoded APReq object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
