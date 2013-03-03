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
extern class EncKDCRepPart
{
	/**
	* Implements the ASN.1 EncKDCRepPart type.
	*
	* <xmp>
	* EncKDCRepPart        ::= SEQUENCE {
	*      key             [0] EncryptionKey,
	*      last-req        [1] LastReq,
	*      nonce           [2] UInt32,
	*      key-expiration  [3] KerberosTime OPTIONAL,
	*      flags           [4] TicketFlags,
	*      authtime        [5] KerberosTime,
	*      starttime       [6] KerberosTime OPTIONAL,
	*      endtime         [7] KerberosTime,
	*      renew-till      [8] KerberosTime OPTIONAL,
	*      srealm          [9] Realm,
	*      sname           [10] PrincipalName,
	*      caddr           [11] HostAddresses OPTIONAL
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	@:public public var key : sun.security.krb5.EncryptionKey;
	
	@:public public var lastReq : sun.security.krb5.internal.LastReq;
	
	@:public public var nonce : Int;
	
	@:public public var keyExpiration : sun.security.krb5.internal.KerberosTime;
	
	@:public public var flags : sun.security.krb5.internal.TicketFlags;
	
	@:public public var authtime : sun.security.krb5.internal.KerberosTime;
	
	@:public public var starttime : sun.security.krb5.internal.KerberosTime;
	
	@:public public var endtime : sun.security.krb5.internal.KerberosTime;
	
	@:public public var renewTill : sun.security.krb5.internal.KerberosTime;
	
	@:public public var srealm : sun.security.krb5.Realm;
	
	@:public public var sname : sun.security.krb5.PrincipalName;
	
	@:public public var caddr : sun.security.krb5.internal.HostAddresses;
	
	@:public public var msgType : Int;
	
	@:overload @:public public function new(new_key : sun.security.krb5.EncryptionKey, new_lastReq : sun.security.krb5.internal.LastReq, new_nonce : Int, new_keyExpiration : sun.security.krb5.internal.KerberosTime, new_flags : sun.security.krb5.internal.TicketFlags, new_authtime : sun.security.krb5.internal.KerberosTime, new_starttime : sun.security.krb5.internal.KerberosTime, new_endtime : sun.security.krb5.internal.KerberosTime, new_renewTill : sun.security.krb5.internal.KerberosTime, new_srealm : sun.security.krb5.Realm, new_sname : sun.security.krb5.PrincipalName, new_caddr : sun.security.krb5.internal.HostAddresses, new_msgType : Int) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>, rep_type : Int) : Void;
	
	@:overload @:public public function new(encoding : sun.security.util.DerValue, rep_type : Int) : Void;
	
	/**
	* Initializes an EncKDCRepPart object.
	*
	* @param encoding a single DER-encoded value.
	* @param rep_type type of the encrypted reply message.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @exception RealmException if an error occurs while decoding an Realm object.
	*/
	@:overload @:protected private function init(encoding : sun.security.util.DerValue, rep_type : Int) : Void;
	
	/**
	* Encodes an EncKDCRepPart object.
	* @param rep_type type of encrypted reply message.
	* @return byte array of encoded EncKDCRepPart object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function asn1Encode(rep_type : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
