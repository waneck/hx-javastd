package com.sun.security.sasl.digest;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DigestMD5Client extends com.sun.security.sasl.digest.DigestMD5Base implements javax.security.sasl.SaslClient
{
	/**
	* DIGEST-MD5 has no initial response
	*
	* @return false
	*/
	@:overload public function hasInitialResponse() : Bool;
	
	/**
	* Process the challenge data.
	*
	* The server sends a digest-challenge which the client must reply to
	* in a digest-response. When the authentication is complete, the
	* completed field is set to true.
	*
	* @param challengeData A non-null byte array containing the challenge
	* data from the server.
	* @return A possibly null byte array containing the response to
	* be sent to the server.
	*
	* @throws SaslException If the platform does not have MD5 digest support
	* or if the server sends an invalid challenge.
	*/
	@:overload public function evaluateChallenge(challengeData : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
