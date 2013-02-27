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
extern class KrbApRep
{
	/**
	* Constructs a KRB-AP-REP to send to a client.
	* @throws KrbException
	* @throws IOException
	*/
	@:overload public function new(incomingReq : sun.security.krb5.KrbApReq, useSeqNumber : Bool, useSubKey : Bool) : Void;
	
	/**
	* Constructs a KRB-AP-REQ from the bytes received from a service.
	* @throws KrbException
	* @throws IOException
	*/
	@:overload public function new(message : java.NativeArray<java.StdTypes.Int8>, tgtCreds : sun.security.krb5.Credentials, outgoingReq : sun.security.krb5.KrbApReq) : Void;
	
	/**
	* Returns the optional subkey stored in
	* this message. Returns null if none is stored.
	*/
	@:overload public function getSubKey() : sun.security.krb5.EncryptionKey;
	
	/**
	* Returns the optional sequence number stored in the
	* this message. Returns null if none is stored.
	*/
	@:overload public function getSeqNumber() : Null<Int>;
	
	/**
	* Returns the ASN.1 encoding that should be sent to the peer.
	*/
	@:overload public function getMessage() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
