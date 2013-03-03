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
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class Authenticator
{
	/**
	* Implements the ASN.1 Authenticator type.
	*
	* <xmp>
	* Authenticator   ::= [APPLICATION 2] SEQUENCE  {
	*         authenticator-vno       [0] INTEGER (5),
	*         crealm                  [1] Realm,
	*         cname                   [2] PrincipalName,
	*         cksum                   [3] Checksum OPTIONAL,
	*         cusec                   [4] Microseconds,
	*         ctime                   [5] KerberosTime,
	*         subkey                  [6] EncryptionKey OPTIONAL,
	*         seq-number              [7] UInt32 OPTIONAL,
	*         authorization-data      [8] AuthorizationData OPTIONAL
	* }
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*/
	@:public public var authenticator_vno : Int;
	
	@:public public var crealm : sun.security.krb5.Realm;
	
	@:public public var cname : sun.security.krb5.PrincipalName;
	
	@:public public var cusec : Int;
	
	@:public public var ctime : sun.security.krb5.internal.KerberosTime;
	
	@:public public var authorizationData : sun.security.krb5.internal.AuthorizationData;
	
	@:overload @:public public function new(new_crealm : sun.security.krb5.Realm, new_cname : sun.security.krb5.PrincipalName, new_cksum : sun.security.krb5.Checksum, new_cusec : Int, new_ctime : sun.security.krb5.internal.KerberosTime, new_subKey : sun.security.krb5.EncryptionKey, new_seqNumber : Null<Int>, new_authorizationData : sun.security.krb5.internal.AuthorizationData) : Void;
	
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes an Authenticator object.
	* @return byte array of encoded Authenticator object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function getChecksum() : sun.security.krb5.Checksum;
	
	@:overload @:public @:final public function getSeqNumber() : Null<Int>;
	
	@:overload @:public @:final public function getSubKey() : sun.security.krb5.EncryptionKey;
	
	
}
