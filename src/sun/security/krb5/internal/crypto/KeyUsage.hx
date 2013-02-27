package sun.security.krb5.internal.crypto;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
*/
/**
* Key usages used for key derivation in Kerberos.
*/
extern class KeyUsage
{
	public static var KU_UNKNOWN(default, null) : Int;
	
	public static var KU_PA_ENC_TS(default, null) : Int;
	
	public static var KU_TICKET(default, null) : Int;
	
	public static var KU_ENC_AS_REP_PART(default, null) : Int;
	
	public static var KU_TGS_REQ_AUTH_DATA_SESSKEY(default, null) : Int;
	
	public static var KU_TGS_REQ_AUTH_DATA_SUBKEY(default, null) : Int;
	
	public static var KU_PA_TGS_REQ_CKSUM(default, null) : Int;
	
	public static var KU_PA_TGS_REQ_AUTHENTICATOR(default, null) : Int;
	
	public static var KU_ENC_TGS_REP_PART_SESSKEY(default, null) : Int;
	
	public static var KU_ENC_TGS_REP_PART_SUBKEY(default, null) : Int;
	
	public static var KU_AUTHENTICATOR_CKSUM(default, null) : Int;
	
	public static var KU_AP_REQ_AUTHENTICATOR(default, null) : Int;
	
	public static var KU_ENC_AP_REP_PART(default, null) : Int;
	
	public static var KU_ENC_KRB_PRIV_PART(default, null) : Int;
	
	public static var KU_ENC_KRB_CRED_PART(default, null) : Int;
	
	public static var KU_KRB_SAFE_CKSUM(default, null) : Int;
	
	public static var KU_AD_KDC_ISSUED_CKSUM(default, null) : Int;
	
	@:overload @:final public static function isValid(usage : Int) : Bool;
	
	
}
