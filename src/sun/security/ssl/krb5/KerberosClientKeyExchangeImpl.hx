package sun.security.ssl.krb5;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class KerberosClientKeyExchangeImpl extends sun.security.ssl.KerberosClientKeyExchange
{
	@:overload public function new() : Void;
	
	/**
	* Creates an instance of KerberosClientKeyExchange consisting of the
	* Kerberos service ticket, authenticator and encrypted premaster secret.
	* Called by client handshaker.
	*
	* @param serverName name of server with which to do handshake;
	*             this is used to get the Kerberos service ticket
	* @param protocolVersion Maximum version supported by client (i.e,
	*          version it requested in client hello)
	* @param rand random number generator to use for generating pre-master
	*          secret
	*/
	@:overload override public function init(serverName : String, isLoopback : Bool, acc : java.security.AccessControlContext, protocolVersion : sun.security.ssl.ProtocolVersion, rand : java.security.SecureRandom) : Void;
	
	/**
	* Creates an instance of KerberosClientKeyExchange from its ASN.1 encoding.
	* Used by ServerHandshaker to verify and obtain premaster secret.
	*
	* @param protocolVersion current protocol version
	* @param clientVersion version requested by client in its ClientHello;
	*          used by premaster secret version check
	* @param rand random number generator used for generating random
	*          premaster secret if ticket and/or premaster verification fails
	* @param input inputstream from which to get ASN.1-encoded KerberosWrapper
	* @param serverKey server's master secret key
	*/
	@:overload override public function init(protocolVersion : sun.security.ssl.ProtocolVersion, clientVersion : sun.security.ssl.ProtocolVersion, rand : java.security.SecureRandom, input : sun.security.ssl.HandshakeInStream, secretKeys : java.NativeArray<javax.crypto.SecretKey>) : Void;
	
	@:overload override public function messageLength() : Int;
	
	@:overload override public function send(s : sun.security.ssl.HandshakeOutStream) : Void;
	
	@:overload override public function print(s : java.io.PrintStream) : Void;
	
	@:overload override public function getUnencryptedPreMasterSecret() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload override public function getPeerPrincipal() : javax.security.auth.kerberos.KerberosPrincipal;
	
	@:overload override public function getLocalPrincipal() : javax.security.auth.kerberos.KerberosPrincipal;
	
	
}
