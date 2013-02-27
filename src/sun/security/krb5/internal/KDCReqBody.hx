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
extern class KDCReqBody
{
	/**
	* Implements the ASN.1 KDC-REQ-BODY type.
	*
	* <xmp>
	* KDC-REQ-BODY ::= SEQUENCE {
	*      kdc-options             [0] KDCOptions,
	*      cname                   [1] PrincipalName OPTIONAL
	*                                    -- Used only in AS-REQ --,
	*      realm                   [2] Realm
	*                                    -- Server's realm
	*                                    -- Also client's in AS-REQ --,
	*      sname                   [3] PrincipalName OPTIONAL,
	*      from                    [4] KerberosTime OPTIONAL,
	*      till                    [5] KerberosTime,
	*      rtime                   [6] KerberosTime OPTIONAL,
	*      nonce                   [7] UInt32,
	*      etype                   [8] SEQUENCE OF Int32 -- EncryptionType
	*                                    -- in preference order --,
	*      addresses               [9] HostAddresses OPTIONAL,
	*      enc-authorization-data  [10] EncryptedData OPTIONAL
	*                                    -- AuthorizationData --,
	*      additional-tickets      [11] SEQUENCE OF Ticket OPTIONAL
	*                                       -- NOTE: not empty
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	public var kdcOptions : sun.security.krb5.internal.KDCOptions;
	
	public var cname : sun.security.krb5.PrincipalName;
	
	public var crealm : sun.security.krb5.Realm;
	
	public var sname : sun.security.krb5.PrincipalName;
	
	public var from : sun.security.krb5.internal.KerberosTime;
	
	public var till : sun.security.krb5.internal.KerberosTime;
	
	public var rtime : sun.security.krb5.internal.KerberosTime;
	
	public var addresses : sun.security.krb5.internal.HostAddresses;
	
	@:overload public function new(new_kdcOptions : sun.security.krb5.internal.KDCOptions, new_cname : sun.security.krb5.PrincipalName, new_crealm : sun.security.krb5.Realm, new_sname : sun.security.krb5.PrincipalName, new_from : sun.security.krb5.internal.KerberosTime, new_till : sun.security.krb5.internal.KerberosTime, new_rtime : sun.security.krb5.internal.KerberosTime, new_nonce : Int, new_eType : java.NativeArray<Int>, new_addresses : sun.security.krb5.internal.HostAddresses, new_encAuthorizationData : sun.security.krb5.EncryptedData, new_additionalTickets : java.NativeArray<sun.security.krb5.internal.Ticket>) : Void;
	
	/**
	* Constructs a KDCReqBody object.
	* @param encoding a DER-encoded data.
	* @param msgType an int indicating whether it's KRB_AS_REQ or KRB_TGS_REQ type.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @exception RealmException if an error occurs while constructing a Realm object from the encoded data.
	*
	*/
	@:overload public function new(encoding : sun.security.util.DerValue, msgType : Int) : Void;
	
	/**
	* Encodes this object to an OutputStream.
	*
	* @return an byte array of encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*
	*/
	@:overload public function asn1Encode(msgType : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getNonce() : Int;
	
	
}
