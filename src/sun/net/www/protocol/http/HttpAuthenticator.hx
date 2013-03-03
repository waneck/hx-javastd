package sun.net.www.protocol.http;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface HttpAuthenticator
{
	/**
	* Indicate whether the specified authentication scheme is
	* supported.  In accordance with HTTP specifications, the
	* scheme name should be checked in a case-insensitive fashion.
	*/
	@:overload public function schemeSupported(scheme : String) : Bool;
	
	/**
	* Returns the String that should be included in the HTTP
	* <B>Authorization</B> field.  Return null if no info was
	* supplied or could be found.
	* <P>
	* Example:
	* --> GET http://www.authorization-required.com/ HTTP/1.0
	* <-- HTTP/1.0 403 Unauthorized
	* <-- WWW-Authenticate: Basic realm="WallyWorld"
	* call schemeSupported("Basic"); (return true)
	* call authString(u, "Basic", "WallyWorld", null);
	*   return "QWadhgWERghghWERfdfQ=="
	* --> GET http://www.authorization-required.com/ HTTP/1.0
	* --> Authorization: Basic QWadhgWERghghWERfdfQ==
	* <-- HTTP/1.0 200 OK
	* <B> YAY!!!</B>
	*/
	@:overload @:public public function authString(u : java.net.URL, scheme : String, realm : String) : String;
	
	
}
