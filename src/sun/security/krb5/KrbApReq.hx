package sun.security.krb5;
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
extern class KrbApReq
{
	/**
	* Contructs a AP-REQ message to send to the peer.
	* @param tgsCred the <code>Credentials</code> to be used to construct the
	*          AP Request  protocol message.
	* @param mutualRequired Whether mutual authentication is required
	* @param useSubkey Whether the subkey is to be used to protect this
	*        specific application session. If this is not set then the
	*        session key from the ticket will be used.
	* @param checksum checksum of the the application data that accompanies
	*        the KRB_AP_REQ.
	* @throws KrbException for any Kerberos protocol specific error
	* @throws IOException for any IO related errors
	*          (e.g. socket operations)
	*/
	@:overload public function new(tgsCred : sun.security.krb5.Credentials, mutualRequired : Bool, useSubKey : Bool, useSeqNumber : Bool, cksum : sun.security.krb5.Checksum) : Void;
	
	/**
	* Contructs a AP-REQ message from the bytes received from the
	* peer.
	* @param message The message received from the peer
	* @param keys <code>EncrtyptionKey</code>s to decrypt the message;
	*       key selected will depend on etype used to encrypte data
	* @throws KrbException for any Kerberos protocol specific error
	* @throws IOException for any IO related errors
	*          (e.g. socket operations)
	*/
	@:overload public function new(message : java.NativeArray<java.StdTypes.Int8>, keys : java.NativeArray<sun.security.krb5.EncryptionKey>, initiator : java.net.InetAddress) : Void;
	
	/**
	* Returns the credentials that are contained in the ticket that
	* is part of this this AP-REP.
	*/
	@:overload public function getCreds() : sun.security.krb5.Credentials;
	
	/**
	* Returns true if mutual authentication is required and hence an
	* AP-REP will need to be generated.
	* @throws KrbException
	* @throws IOException
	*/
	@:overload public function getMutualAuthRequired() : Bool;
	
	/**
	* Returns the optional subkey stored in the Authenticator for
	* this message. Returns null if none is stored.
	*/
	@:overload public function getSubKey() : sun.security.krb5.EncryptionKey;
	
	/**
	* Returns the optional sequence number stored in the
	* Authenticator for this message. Returns null if none is
	* stored.
	*/
	@:overload public function getSeqNumber() : Null<Int>;
	
	/**
	* Returns the optional Checksum stored in the
	* Authenticator for this message. Returns null if none is
	* stored.
	*/
	@:overload public function getChecksum() : sun.security.krb5.Checksum;
	
	/**
	* Returns the ASN.1 encoding that should be sent to the peer.
	*/
	@:overload public function getMessage() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the principal name of the client that generated this
	* message.
	*/
	@:overload public function getClient() : sun.security.krb5.PrincipalName;
	
	
}
