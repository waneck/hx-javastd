package sun.security.krb5.internal;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KRBError implements java.io.Serializable
{
	@:overload @:public public function new(new_apOptions : sun.security.krb5.internal.APOptions, new_cTime : sun.security.krb5.internal.KerberosTime, new_cuSec : Null<Int>, new_sTime : sun.security.krb5.internal.KerberosTime, new_suSec : Null<Int>, new_errorCode : Int, new_crealm : sun.security.krb5.Realm, new_cname : sun.security.krb5.PrincipalName, new_realm : sun.security.krb5.Realm, new_sname : sun.security.krb5.PrincipalName, new_eText : String, new_eData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function new(new_apOptions : sun.security.krb5.internal.APOptions, new_cTime : sun.security.krb5.internal.KerberosTime, new_cuSec : Null<Int>, new_sTime : sun.security.krb5.internal.KerberosTime, new_suSec : Null<Int>, new_errorCode : Int, new_crealm : sun.security.krb5.Realm, new_cname : sun.security.krb5.PrincipalName, new_realm : sun.security.krb5.Realm, new_sname : sun.security.krb5.PrincipalName, new_eText : String, new_eData : java.NativeArray<java.StdTypes.Int8>, new_eCksum : sun.security.krb5.Checksum) : Void;
	
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function new(encoding : sun.security.util.DerValue) : Void;
	
	@:overload @:public @:final public function getServerTime() : sun.security.krb5.internal.KerberosTime;
	
	@:overload @:public @:final public function getClientTime() : sun.security.krb5.internal.KerberosTime;
	
	@:overload @:public @:final public function getServerMicroSeconds() : Null<Int>;
	
	@:overload @:public @:final public function getClientMicroSeconds() : Null<Int>;
	
	@:overload @:public @:final public function getErrorCode() : Int;
	
	@:overload @:public @:final public function getPA() : java.NativeArray<sun.security.krb5.internal.PAData>;
	
	@:overload @:public @:final public function getErrorString() : String;
	
	/**
	* Encodes an KRBError object.
	* @return the byte array of encoded KRBError object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
