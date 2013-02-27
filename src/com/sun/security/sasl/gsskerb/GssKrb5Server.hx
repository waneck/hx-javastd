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
//// JGSS
/**
* Implements the GSSAPI SASL server mechanism for Kerberos V5.
* (<A HREF="http://www.ietf.org/rfc/rfc2222.txt">RFC 2222</A>,
* <a HREF="http://www.ietf.org/internet-drafts/draft-ietf-cat-sasl-gssapi-00.txt">draft-ietf-cat-sasl-gssapi-00.txt</a>).
*
* Expects thread's Subject to contain server's Kerberos credentials
* - If not, underlying KRB5 mech will attempt to acquire Kerberos creds
*   by logging into Kerberos (via default TextCallbackHandler).
* - These creds will be used for exchange with client.
*
* Required callbacks:
* - AuthorizeCallback
*      handler must verify that authid/authzids are allowed and set
*      authorized ID to be the canonicalized authzid (if applicable).
*
* Environment properties that affect behavior of implementation:
*
* javax.security.sasl.qop
* - quality of protection; list of auth, auth-int, auth-conf; default is "auth"
* javax.security.sasl.maxbuf
* - max receive buffer size; default is 65536
* javax.security.sasl.sendmaxbuffer
* - max send buffer size; default is 65536; (min with client max recv size)
*
* @author Rosanna Lee
*/
@:internal extern class GssKrb5Server extends com.sun.security.sasl.gsskerb.GssKrb5Base implements javax.security.sasl.SaslServer
{
	/**
	* Processes the response data.
	*
	* The client sends response data to which the server must
	* process using GSS_accept_sec_context.
	* As per RFC 2222, the GSS authenication completes (GSS_S_COMPLETE)
	* we do an extra hand shake to determine the negotiated security protection
	* and buffer sizes.
	*
	* @param responseData A non-null but possible empty byte array containing the
	* response data from the client.
	* @return A non-null byte array containing the challenge to be
	* sent to the client, or null when no more data is to be sent.
	*/
	@:overload public function evaluateResponse(responseData : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getAuthorizationID() : String;
	
	
}
