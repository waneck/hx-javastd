package com.sun.security.sasl;
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
@:internal extern class CramMD5Server extends com.sun.security.sasl.CramMD5Base implements javax.security.sasl.SaslServer
{
	/**
	* Generates challenge based on response sent by client.
	*
	* CRAM-MD5 has no initial response.
	* First call generates challenge.
	* Second call verifies client response. If authentication fails, throws
	* SaslException.
	*
	* @param responseData A non-null byte array containing the response
	*        data from the client.
	* @return A non-null byte array containing the challenge to be sent to
	*        the client for the first call; null when 2nd call is successful.
	* @throws SaslException If authentication fails.
	*/
	@:overload @:public public function evaluateResponse(responseData : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function getAuthorizationID() : String;
	
	
}
