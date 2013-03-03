package com.sun.security.sasl.digest;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
* An implementation of the DIGEST-MD5 server SASL mechanism.
* (<a href="http://www.ietf.org/rfc/rfc2831.txt">RFC 2831</a>)
* <p>
* The DIGEST-MD5 SASL mechanism specifies two modes of authentication.
* <ul><li>Initial Authentication
* <li>Subsequent Authentication - optional, (currently not supported)
* </ul>
*
* Required callbacks:
* - RealmCallback
*      used as key by handler to fetch password
* - NameCallback
*      used as key by handler to fetch password
* - PasswordCallback
*      handler must enter password for username/realm supplied
* - AuthorizeCallback
*      handler must verify that authid/authzids are allowed and set
*      authorized ID to be the canonicalized authzid (if applicable).
*
* Environment properties that affect the implementation:
* javax.security.sasl.qop:
*    specifies list of qops; default is "auth"; typically, caller should set
*    this to "auth, auth-int, auth-conf".
* javax.security.sasl.strength
*    specifies low/medium/high strength of encryption; default is all available
*    ciphers [high,medium,low]; high means des3 or rc4 (128); medium des or
*    rc4-56; low is rc4-40.
* javax.security.sasl.maxbuf
*    specifies max receive buf size; default is 65536
* javax.security.sasl.sendmaxbuffer
*    specifies max send buf size; default is 65536 (min of this and client's max
*    recv size)
*
* com.sun.security.sasl.digest.utf8:
*    "true" means to use UTF-8 charset; "false" to use ISO-8859-1 encoding;
*    default is "true".
* com.sun.security.sasl.digest.realm:
*    space-separated list of realms; default is server name (fqdn parameter)
*
* @author Rosanna Lee
*/
@:internal extern class DigestMD5Server extends com.sun.security.sasl.digest.DigestMD5Base implements javax.security.sasl.SaslServer
{
	@:overload @:public public function evaluateResponse(response : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getAuthorizationID() : String;
	
	
}
