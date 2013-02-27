package com.sun.security.ntlm;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Server extends com.sun.security.ntlm.NTLM
{
	/**
	* Creates a Server instance.
	* @param version the NTLM version to use, which can be:
	* <ul>
	* <li>NTLM: Original NTLM v1
	* <li>NTLM2: NTLM v1 with Client Challenge
	* <li>NTLMv2: NTLM v2
	* </ul>
	* If null, all versions will be supported. Please note that unless NTLM2
	* is selected, authentication succeeds if one of LM (or LMv2) or
	* NTLM (or NTLMv2) is verified.
	* @param domain the domain, must not be null
	* @throws NTLMException if {@code domain} is null.
	*/
	@:overload public function new(version : String, domain : String) : Void;
	
	/**
	* Generates the Type 2 message
	* @param type1 the Type1 message received, must not be null
	* @param nonce the random 8-byte array to be used in message generation,
	* must not be null
	* @return the message generated
	* @throws NTLMException if the incoming message is invalid, or
	* {@code nonce} is null.
	*/
	@:overload public function type2(type1 : java.NativeArray<java.StdTypes.Int8>, nonce : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Verifies the Type3 message received from client and returns
	* various negotiated information.
	* @param type3 the incoming Type3 message from client, must not be null
	* @param nonce the same nonce provided in {@link #type2}, must not be null
	* @return username and hostname of the client in a byte array
	* @throws NTLMException if the incoming message is invalid, or
	* {@code nonce} is null.
	*/
	@:overload public function verify(type3 : java.NativeArray<java.StdTypes.Int8>, nonce : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	/**
	* Retrieves the password for a given user. This method should be
	* overridden in a concrete class.
	* @param domain can be null
	* @param username must not be null
	* @return the password for the user, or null if unknown
	*/
	@:overload @:abstract public function getPassword(domain : String, username : String) : java.NativeArray<java.StdTypes.Char16>;
	
	
}
