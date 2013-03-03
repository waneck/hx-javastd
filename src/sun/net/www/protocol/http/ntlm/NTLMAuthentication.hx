package sun.net.www.protocol.http.ntlm;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class NTLMAuthentication extends sun.net.www.protocol.http.AuthenticationInfo
{
	@:overload @:public @:static public static function supportsTransparentAuth() : Bool;
	
	/**
	* Returns true if the given site is trusted, i.e. we can try
	* transparent Authentication.
	*/
	@:overload @:public @:static public static function isTrustedSite(url : java.net.URL) : Bool;
	
	/**
	* Create a NTLMAuthentication:
	* Username may be specified as domain<BACKSLASH>username in the application Authenticator.
	* If this notation is not used, then the domain will be taken
	* from a system property: "http.auth.ntlm.domain".
	*/
	@:overload @:public public function new(isProxy : Bool, url : java.net.URL, pw : java.net.PasswordAuthentication) : Void;
	
	/**
	* Constructor used for proxy entries
	*/
	@:overload @:public public function new(isProxy : Bool, host : String, port : Int, pw : java.net.PasswordAuthentication) : Void;
	
	/**
	* @return true if this authentication supports preemptive authorization
	*/
	@:overload @:public override public function supportsPreemptiveAuthorization() : Bool;
	
	/**
	* Not supported. Must use the setHeaders() method
	*/
	@:overload @:public override public function getHeaderValue(url : java.net.URL, method : String) : String;
	
	/**
	* Check if the header indicates that the current auth. parameters are stale.
	* If so, then replace the relevant field with the new value
	* and return true. Otherwise return false.
	* returning true means the request can be retried with the same userid/password
	* returning false means we have to go back to the user to ask for a new
	* username password.
	*/
	@:overload @:public override public function isAuthorizationStale(header : String) : Bool;
	
	/**
	* Set header(s) on the given connection.
	* @param conn The connection to apply the header(s) to
	* @param p A source of header values for this connection, not used because
	*          HeaderParser converts the fields to lower case, use raw instead
	* @param raw The raw header field.
	* @return true if all goes well, false if no headers were set.
	*/
	@:overload @:public @:synchronized override public function setHeaders(conn : sun.net.www.protocol.http.HttpURLConnection, p : sun.net.www.HeaderParser, raw : String) : Bool;
	
	
}
@:internal extern class B64Encoder extends sun.misc.BASE64Encoder
{
	/* to force it to to the entire encoding in one line */
	@:overload @:protected override private function bytesPerLine() : Int;
	
	
}
