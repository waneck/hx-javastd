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
/**
* Implements the ASN.1 EncTicketPart type.
*
* <xmp>
* EncTicketPart   ::= [APPLICATION 3] SEQUENCE {
*         flags                   [0] TicketFlags,
*         key                     [1] EncryptionKey,
*         crealm                  [2] Realm,
*         cname                   [3] PrincipalName,
*         transited               [4] TransitedEncoding,
*         authtime                [5] KerberosTime,
*         starttime               [6] KerberosTime OPTIONAL,
*         endtime                 [7] KerberosTime,
*         renew-till              [8] KerberosTime OPTIONAL,
*         caddr                   [9] HostAddresses OPTIONAL,
*         authorization-data      [10] AuthorizationData OPTIONAL
* }
* </xmp>
*
* <p>
* This definition reflects the Network Working Group RFC 4120
* specification available at
* <a href="http://www.ietf.org/rfc/rfc4120.txt">
* http://www.ietf.org/rfc/rfc4120.txt</a>.
*/
extern class EncTicketPart
{
	public var flags : sun.security.krb5.internal.TicketFlags;
	
	public var key : sun.security.krb5.EncryptionKey;
	
	public var crealm : sun.security.krb5.Realm;
	
	public var cname : sun.security.krb5.PrincipalName;
	
	public var transited : sun.security.krb5.internal.TransitedEncoding;
	
	public var authtime : sun.security.krb5.internal.KerberosTime;
	
	public var starttime : sun.security.krb5.internal.KerberosTime;
	
	public var endtime : sun.security.krb5.internal.KerberosTime;
	
	public var renewTill : sun.security.krb5.internal.KerberosTime;
	
	public var caddr : sun.security.krb5.internal.HostAddresses;
	
	public var authorizationData : sun.security.krb5.internal.AuthorizationData;
	
	@:overload public function new(new_flags : sun.security.krb5.internal.TicketFlags, new_key : sun.security.krb5.EncryptionKey, new_crealm : sun.security.krb5.Realm, new_cname : sun.security.krb5.PrincipalName, new_transited : sun.security.krb5.internal.TransitedEncoding, new_authtime : sun.security.krb5.internal.KerberosTime, new_starttime : sun.security.krb5.internal.KerberosTime, new_endtime : sun.security.krb5.internal.KerberosTime, new_renewTill : sun.security.krb5.internal.KerberosTime, new_caddr : sun.security.krb5.internal.HostAddresses, new_authorizationData : sun.security.krb5.internal.AuthorizationData) : Void;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes an EncTicketPart object.
	* @return byte array of encoded EncTicketPart object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
