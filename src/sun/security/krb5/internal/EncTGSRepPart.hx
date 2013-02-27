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
extern class EncTGSRepPart extends sun.security.krb5.internal.EncKDCRepPart
{
	@:overload public function new(new_key : sun.security.krb5.EncryptionKey, new_lastReq : sun.security.krb5.internal.LastReq, new_nonce : Int, new_keyExpiration : sun.security.krb5.internal.KerberosTime, new_flags : sun.security.krb5.internal.TicketFlags, new_authtime : sun.security.krb5.internal.KerberosTime, new_starttime : sun.security.krb5.internal.KerberosTime, new_endtime : sun.security.krb5.internal.KerberosTime, new_renewTill : sun.security.krb5.internal.KerberosTime, new_srealm : sun.security.krb5.Realm, new_sname : sun.security.krb5.PrincipalName, new_caddr : sun.security.krb5.internal.HostAddresses) : Void;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
