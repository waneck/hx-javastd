package sun.security.krb5.internal;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class Krb5
{
	@:public @:static @:final public static var DEFAULT_ALLOWABLE_CLOCKSKEW(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_MINIMUM_LIFETIME(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_MAXIMUM_RENEWABLE_LIFETIME(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_MAXIMUM_TICKET_LIFETIME(default, null) : Int;
	
	@:public @:static @:final public static var DEFAULT_FORWARDABLE_ALLOWED(default, null) : Bool;
	
	@:public @:static @:final public static var DEFAULT_PROXIABLE_ALLOWED(default, null) : Bool;
	
	@:public @:static @:final public static var DEFAULT_POSTDATE_ALLOWED(default, null) : Bool;
	
	@:public @:static @:final public static var DEFAULT_RENEWABLE_ALLOWED(default, null) : Bool;
	
	@:public @:static @:final public static var AP_EMPTY_ADDRESSES_ALLOWED(default, null) : Bool;
	
	@:public @:static @:final public static var AP_OPTS_RESERVED(default, null) : Int;
	
	@:public @:static @:final public static var AP_OPTS_USE_SESSION_KEY(default, null) : Int;
	
	@:public @:static @:final public static var AP_OPTS_MUTUAL_REQUIRED(default, null) : Int;
	
	@:public @:static @:final public static var AP_OPTS_MAX(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_RESERVED(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_FORWARDABLE(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_FORWARDED(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_PROXIABLE(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_PROXY(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_MAY_POSTDATE(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_POSTDATED(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_INVALID(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_RENEWABLE(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_INITIAL(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_PRE_AUTHENT(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_HW_AUTHENT(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_DELEGATE(default, null) : Int;
	
	@:public @:static @:final public static var TKT_OPTS_MAX(default, null) : Int;
	
	@:public @:static @:final public static var KDC_OPTS_MAX(default, null) : Int;
	
	@:public @:static @:final public static var KRB_FLAGS_MAX(default, null) : Int;
	
	@:public @:static @:final public static var LRTYPE_NONE(default, null) : Int;
	
	@:public @:static @:final public static var LRTYPE_TIME_OF_INITIAL_TGT(default, null) : Int;
	
	@:public @:static @:final public static var LRTYPE_TIME_OF_INITIAL_REQ(default, null) : Int;
	
	@:public @:static @:final public static var LRTYPE_TIME_OF_NEWEST_TGT(default, null) : Int;
	
	@:public @:static @:final public static var LRTYPE_TIME_OF_LAST_RENEWAL(default, null) : Int;
	
	@:public @:static @:final public static var LRTYPE_TIME_OF_LAST_REQ(default, null) : Int;
	
	@:public @:static @:final public static var ADDR_LEN_INET(default, null) : Int;
	
	@:public @:static @:final public static var ADDR_LEN_CHAOS(default, null) : Int;
	
	@:public @:static @:final public static var ADDR_LEN_OSI(default, null) : Int;
	
	@:public @:static @:final public static var ADDR_LEN_XNS(default, null) : Int;
	
	@:public @:static @:final public static var ADDR_LEN_APPLETALK(default, null) : Int;
	
	@:public @:static @:final public static var ADDR_LEN_DECNET(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_UNIX(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_INET(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_IMPLINK(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_PUP(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_CHAOS(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_XNS(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_IPX(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_ISO(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_ECMA(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_DATAKIT(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_CCITT(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_SNA(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_DECNET(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_DLI(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_LAT(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_HYLINK(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_APPLETALK(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_NETBIOS(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_VOICEVIEW(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_FIREFOX(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_BAN(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_ATM(default, null) : Int;
	
	@:public @:static @:final public static var ADDRTYPE_INET6(default, null) : Int;
	
	@:public @:static @:final public static var KDC_INET_DEFAULT_PORT(default, null) : Int;
	
	@:public @:static @:final public static var KDC_RETRY_LIMIT(default, null) : Int;
	
	@:public @:static @:final public static var KEYTYPE_NULL(default, null) : Int;
	
	@:public @:static @:final public static var KEYTYPE_DES(default, null) : Int;
	
	@:public @:static @:final public static var KEYTYPE_DES3(default, null) : Int;
	
	@:public @:static @:final public static var KEYTYPE_AES(default, null) : Int;
	
	@:public @:static @:final public static var KEYTYPE_ARCFOUR_HMAC(default, null) : Int;
	
	@:public @:static @:final public static var PA_TGS_REQ(default, null) : Int;
	
	@:public @:static @:final public static var PA_ENC_TIMESTAMP(default, null) : Int;
	
	@:public @:static @:final public static var PA_PW_SALT(default, null) : Int;
	
	@:public @:static @:final public static var PA_ETYPE_INFO(default, null) : Int;
	
	@:public @:static @:final public static var PA_ETYPE_INFO2(default, null) : Int;
	
	@:public @:static @:final public static var OSF_DCE(default, null) : Int;
	
	@:public @:static @:final public static var SESAME(default, null) : Int;
	
	@:public @:static @:final public static var ATT_CHALLENGE_RESPONSE(default, null) : Int;
	
	@:public @:static @:final public static var DOMAIN_X500_COMPRESS(default, null) : Int;
	
	@:public @:static @:final public static var PVNO(default, null) : Int;
	
	@:public @:static @:final public static var AUTHNETICATOR_VNO(default, null) : Int;
	
	@:public @:static @:final public static var TICKET_VNO(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AS_REQ(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AS_REP(default, null) : Int;
	
	@:public @:static @:final public static var KRB_TGS_REQ(default, null) : Int;
	
	@:public @:static @:final public static var KRB_TGS_REP(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_REQ(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_REP(default, null) : Int;
	
	@:public @:static @:final public static var KRB_SAFE(default, null) : Int;
	
	@:public @:static @:final public static var KRB_PRIV(default, null) : Int;
	
	@:public @:static @:final public static var KRB_CRED(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ERROR(default, null) : Int;
	
	@:public @:static @:final public static var KRB_TKT(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AUTHENTICATOR(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ENC_TKT_PART(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ENC_AS_REP_PART(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ENC_TGS_REP_PART(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ENC_AP_REP_PART(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ENC_KRB_PRIV_PART(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ENC_KRB_CRED_PART(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_NONE(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_NAME_EXP(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_SERVICE_EXP(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_BAD_PVNO(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_C_OLD_MAST_KVNO(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_S_OLD_MAST_KVNO(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_C_PRINCIPAL_UNKNOWN(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_S_PRINCIPAL_UNKNOWN(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_PRINCIPAL_NOT_UNIQUE(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_NULL_KEY(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_CANNOT_POSTDATE(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_NEVER_VALID(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_POLICY(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_BADOPTION(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_ETYPE_NOSUPP(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_SUMTYPE_NOSUPP(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_PADATA_TYPE_NOSUPP(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_TRTYPE_NOSUPP(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_CLIENT_REVOKED(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_SERVICE_REVOKED(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_TGT_REVOKED(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_CLIENT_NOTYET(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_SERVICE_NOTYET(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_KEY_EXPIRED(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_PREAUTH_FAILED(default, null) : Int;
	
	@:public @:static @:final public static var KDC_ERR_PREAUTH_REQUIRED(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_BAD_INTEGRITY(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_TKT_EXPIRED(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_TKT_NYV(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_REPEAT(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_NOT_US(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_BADMATCH(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_SKEW(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_BADADDR(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_BADVERSION(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_MSG_TYPE(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_MODIFIED(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_BADORDER(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_BADKEYVER(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_NOKEY(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_MUT_FAIL(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_BADDIRECTION(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_METHOD(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_BADSEQ(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_INAPP_CKSUM(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ERR_RESPONSE_TOO_BIG(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ERR_GENERIC(default, null) : Int;
	
	@:public @:static @:final public static var KRB_ERR_FIELD_TOOLONG(default, null) : Int;
	
	@:public @:static @:final public static var KRB_CRYPTO_NOT_SUPPORT(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_NOREALM(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_GEN_CRED(default, null) : Int;
	
	@:public @:static @:final public static var KRB_AP_ERR_REQ_OPTIONS(default, null) : Int;
	
	@:public @:static @:final public static var API_INVALID_ARG(default, null) : Int;
	
	@:public @:static @:final public static var BITSTRING_SIZE_INVALID(default, null) : Int;
	
	@:public @:static @:final public static var BITSTRING_INDEX_OUT_OF_BOUNDS(default, null) : Int;
	
	@:public @:static @:final public static var BITSTRING_BAD_LENGTH(default, null) : Int;
	
	@:public @:static @:final public static var REALM_ILLCHAR(default, null) : Int;
	
	@:public @:static @:final public static var REALM_NULL(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_BAD_TIMEFORMAT(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_MISSING_FIELD(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_MISPLACED_FIELD(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_TYPE_MISMATCH(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_OVERFLOW(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_OVERRUN(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_BAD_ID(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_BAD_LENGTH(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_BAD_FORMAT(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_PARSE_ERROR(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_BAD_CLASS(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_BAD_TYPE(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_BAD_TAG(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_UNSUPPORTED_TYPE(default, null) : Int;
	
	@:public @:static @:final public static var ASN1_CANNOT_ENCODE(default, null) : Int;
	
	@:overload @:public @:static public static function getErrorMessage(i : Int) : String;
	
	@:public @:static @:final public static var DEBUG(default, null) : Bool;
	
	@:public @:static @:final public static var hexDumper(default, null) : sun.misc.HexDumpEncoder;
	
	
}
