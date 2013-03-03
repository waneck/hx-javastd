package com.sun.security.sasl.ntlm;
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
/**
* Required callbacks:
* - RealmCallback
*      used as key by handler to fetch password, optional
* - NameCallback
*      used as key by handler to fetch password
* - PasswordCallback
*      handler must enter password for username/realm supplied
*
* Environment properties that affect the implementation:
*
* javax.security.sasl.qop
*    String, quality of protection; only "auth" is accepted, default "auth"
*
* com.sun.security.sasl.ntlm.version
*    String, name a specific version to accept:
*      LM/NTLM: Original NTLM v1
*      LM: Original NTLM v1, LM only
*      NTLM: Original NTLM v1, NTLM only
*      NTLM2: NTLM v1 with Client Challenge
*      LMv2/NTLMv2: NTLM v2
*      LMv2: NTLM v2, LM only
*      NTLMv2: NTLM v2, NTLM only
*    If not specified, use system property "ntlm.version". If also
*    not specfied, all versions are accepted.
*
* com.sun.security.sasl.ntlm.domain
*    String, the domain of the server, default is server name (fqdn parameter)
*
* com.sun.security.sasl.ntlm.random
*    java.util.Random, the nonce source. Default null, an internal
*    java.util.Random object will be used
*
* Negotiated Properties:
*
* javax.security.sasl.qop
*    Always "auth"
*
* com.sun.security.sasl.ntlm.hostname
*    The hostname for the user, provided by the client
*
*/
@:internal extern class NTLMServer implements javax.security.sasl.SaslServer
{
	@:overload @:public public function getMechanismName() : String;
	
	@:overload @:public public function evaluateResponse(response : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function isComplete() : Bool;
	
	@:overload @:public public function getAuthorizationID() : String;
	
	@:overload @:public public function unwrap(incoming : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function wrap(outgoing : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getNegotiatedProperty(propName : String) : Dynamic;
	
	@:overload @:public public function dispose() : Void;
	
	
}
