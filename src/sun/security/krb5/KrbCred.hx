package sun.security.krb5;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class KrbCred
{
	@:overload public function new(tgt : sun.security.krb5.Credentials, serviceTicket : sun.security.krb5.Credentials, key : sun.security.krb5.EncryptionKey) : Void;
	
	@:overload public function new(asn1Message : java.NativeArray<java.StdTypes.Int8>, key : sun.security.krb5.EncryptionKey) : Void;
	
	/**
	* Returns the delegated credentials from the peer.
	*/
	@:overload public function getDelegatedCreds() : java.NativeArray<sun.security.krb5.Credentials>;
	
	/**
	* Returns the ASN.1 encoding that should be sent to the peer.
	*/
	@:overload public function getMessage() : java.NativeArray<java.StdTypes.Int8>;
	
	
}