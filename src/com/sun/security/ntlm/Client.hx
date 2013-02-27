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
extern class Client extends com.sun.security.ntlm.NTLM
{
	/**
	* Creates an NTLM Client instance.
	* @param version the NTLM version to use, which can be:
	* <ul>
	* <li>LM/NTLM: Original NTLM v1
	* <li>LM: Original NTLM v1, LM only
	* <li>NTLM: Original NTLM v1, NTLM only
	* <li>NTLM2: NTLM v1 with Client Challenge
	* <li>LMv2/NTLMv2: NTLM v2
	* <li>LMv2: NTLM v2, LM only
	* <li>NTLMv2: NTLM v2, NTLM only
	* </ul>
	* If null, "LMv2/NTLMv2" will be used.
	* @param hostname hostname of the client, can be null
	* @param username username to be authenticated, must not be null
	* @param domain domain of {@code username}, can be null
	* @param password password for {@code username}, must not be not null.
	* This method does not make any modification to this parameter, it neither
	* needs to access the content of this parameter after this method call,
	* so you are free to modify or nullify this parameter after this call.
	* @throws NTLMException if {@code username} or {@code password} is null,
	* or {@code version} is illegal.
	*
	*/
	@:overload public function new(version : String, hostname : String, username : String, domain : String, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Generates the Type 1 message
	* @return the message generated
	*/
	@:overload public function type1() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Generates the Type 3 message
	* @param type2 the responding Type 2 message from server, must not be null
	* @param nonce random 8-byte array to be used in message generation,
	* must not be null except for original NTLM v1
	* @return the message generated
	* @throws NTLMException if the incoming message is invalid, or
	* {@code nonce} is null for NTLM v1.
	*/
	@:overload public function type3(type2 : java.NativeArray<java.StdTypes.Int8>, nonce : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the domain value provided by server after the authentication
	* is complete, or the domain value provided by the client before it.
	* @return the domain
	*/
	@:overload public function getDomain() : String;
	
	/**
	* Disposes any password-derived information.
	*/
	@:overload public function dispose() : Void;
	
	
}
