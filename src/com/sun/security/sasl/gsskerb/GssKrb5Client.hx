package com.sun.security.sasl.gsskerb;
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
//// JAAS
/**
* Implements the GSSAPI SASL client mechanism for Kerberos V5.
* (<A HREF="http://www.ietf.org/rfc/rfc2222.txt">RFC 2222</A>,
* <a HREF="http://www.ietf.org/internet-drafts/draft-ietf-cat-sasl-gssapi-04.txt">draft-ietf-cat-sasl-gssapi-04.txt</a>).
* It uses the Java Bindings for GSSAPI
* (<A HREF="http://www.ietf.org/rfc/rfc2853.txt">RFC 2853</A>)
* for getting GSSAPI/Kerberos V5 support.
*
* The client/server interactions are:
* C0: bind (GSSAPI, initial response)
* S0: sasl-bind-in-progress, challenge 1 (output of accept_sec_context or [])
* C1: bind (GSSAPI, response 1 (output of init_sec_context or []))
* S1: sasl-bind-in-progress challenge 2 (security layer, server max recv size)
* C2: bind (GSSAPI, response 2 (security layer, client max recv size, authzid))
* S2: bind success response
*
* Expects the client's credentials to be supplied from the
* javax.security.sasl.credentials property or from the thread's Subject.
* Otherwise the underlying KRB5 mech will attempt to acquire Kerberos creds
* by logging into Kerberos (via default TextCallbackHandler).
* These creds will be used for exchange with server.
*
* Required callbacks: none.
*
* Environment properties that affect behavior of implementation:
*
* javax.security.sasl.qop
* - quality of protection; list of auth, auth-int, auth-conf; default is "auth"
* javax.security.sasl.maxbuf
* - max receive buffer size; default is 65536
* javax.security.sasl.sendmaxbuffer
* - max send buffer size; default is 65536; (min with server max recv size)
*
* javax.security.sasl.server.authentication
* - "true" means require mutual authentication; default is "false"
*
* javax.security.sasl.credentials
* - an {@link org.ietf.jgss.GSSCredential} used for delegated authentication.
*
* @author Rosanna Lee
*/
@:internal extern class GssKrb5Client extends com.sun.security.sasl.gsskerb.GssKrb5Base implements javax.security.sasl.SaslClient
{
	@:overload @:public public function hasInitialResponse() : Bool;
	
	/**
	* Processes the challenge data.
	*
	* The server sends a challenge data using which the client must
	* process using GSS_Init_sec_context.
	* As per RFC 2222, when GSS_S_COMPLETE is returned, we do
	* an extra handshake to determine the negotiated security protection
	* and buffer sizes.
	*
	* @param challengeData A non-null byte array containing the
	* challenge data from the server.
	* @return A non-null byte array containing the response to be
	* sent to the server.
	*/
	@:overload @:public public function evaluateChallenge(challengeData : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
