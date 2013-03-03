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
extern class KrbCredInfo
{
	/**
	* Implements the ASN.1 KrbCredInfo type.
	*
	* <xmp>
	* KrbCredInfo  ::= SEQUENCE {
	*      key             [0] EncryptionKey,
	*      prealm          [1] Realm OPTIONAL,
	*      pname           [2] PrincipalName OPTIONAL,
	*      flags           [3] TicketFlags OPTIONAL,
	*      authtime        [4] KerberosTime OPTIONAL,
	*      starttime       [5] KerberosTime OPTIONAL,
	*      endtime         [6] KerberosTime OPTIONAL,
	*      renew-till      [7] KerberosTime OPTIONAL,
	*      srealm          [8] Realm OPTIONAL,
	*      sname           [9] PrincipalName OPTIONAL,
	*      caddr           [10] HostAddresses OPTIONAL
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
	
	@:public public var prealm : sun.security.krb5.Realm;
	
	@:public public var pname : sun.security.krb5.PrincipalName;
	
	@:public public var flags : sun.security.krb5.internal.TicketFlags;
	
	@:public public var authtime : sun.security.krb5.internal.KerberosTime;
	
	@:public public var starttime : sun.security.krb5.internal.KerberosTime;
	
	@:public public var endtime : sun.security.krb5.internal.KerberosTime;
	
	@:public public var renewTill : sun.security.krb5.internal.KerberosTime;
	
	@:public public var srealm : sun.security.krb5.Realm;
	
	@:public public var sname : sun.security.krb5.PrincipalName;
	
	@:public public var caddr : sun.security.krb5.internal.HostAddresses;
	
	@:overload @:public public function new(new_key : sun.security.krb5.EncryptionKey, new_prealm : sun.security.krb5.Realm, new_pname : sun.security.krb5.PrincipalName, new_flags : sun.security.krb5.internal.TicketFlags, new_authtime : sun.security.krb5.internal.KerberosTime, new_starttime : sun.security.krb5.internal.KerberosTime, new_endtime : sun.security.krb5.internal.KerberosTime, new_renewTill : sun.security.krb5.internal.KerberosTime, new_srealm : sun.security.krb5.Realm, new_sname : sun.security.krb5.PrincipalName, new_caddr : sun.security.krb5.internal.HostAddresses) : Void;
	
	/**
	* Constructs a KrbCredInfo object.
	* @param encoding a Der-encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @exception RealmException if an error occurs while parsing a Realm object.
	*/
	@:overload @:public public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes an KrbCredInfo object.
	* @return the byte array of encoded KrbCredInfo object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function clone() : Dynamic;
	
	
}
