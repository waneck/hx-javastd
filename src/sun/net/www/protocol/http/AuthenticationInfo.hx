package sun.net.www.protocol.http;
/*
* Copyright (c) 1995, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AuthenticationInfo extends sun.net.www.protocol.http.AuthCacheValue implements java.lang.Cloneable
{
	/**
	* AuthenticationInfo: Encapsulate the information needed to
	* authenticate a user to a server.
	*
	* @author Jon Payne
	* @author Herb Jellinek
	* @author Bill Foote
	*/
	public static var SERVER_AUTHENTICATION(default, null) : java.StdTypes.Char16;
	
	public static var PROXY_AUTHENTICATION(default, null) : java.StdTypes.Char16;
	
	/* AuthCacheValue: */
	@:transient private var pw : java.net.PasswordAuthentication;
	
	@:overload public function credentials() : java.net.PasswordAuthentication;
	
	@:overload public function getAuthType() : sun.net.www.protocol.http.AuthCacheValue.AuthCacheValue_Type;
	
	@:overload public function getHost() : String;
	
	@:overload public function getPort() : Int;
	
	@:overload public function getRealm() : String;
	
	@:overload public function getPath() : String;
	
	@:overload public function getProtocolScheme() : String;
	
	/** Use this constructor only for proxy entries */
	@:overload public function new(type : java.StdTypes.Char16, authScheme : sun.net.www.protocol.http.AuthScheme, host : String, port : Int, realm : String) : Void;
	
	@:overload public function clone() : Dynamic;
	
	/*
	* Constructor used to limit the authorization to the path within
	* the URL. Use this constructor for origin server entries.
	*/
	@:overload public function new(type : java.StdTypes.Char16, authScheme : sun.net.www.protocol.http.AuthScheme, url : java.net.URL, realm : String) : Void;
	
	/**
	* @return true if this authentication supports preemptive authorization
	*/
	@:overload @:abstract public function supportsPreemptiveAuthorization() : Bool;
	
	/**
	* @return the name of the HTTP header this authentication wants set.
	*          This is used for preemptive authorization.
	*/
	@:overload public function getHeaderName() : String;
	
	/**
	* Calculates and returns the authentication header value based
	* on the stored authentication parameters. If the calculation does not depend
	* on the URL or the request method then these parameters are ignored.
	* @param url The URL
	* @param method The request method
	* @return the value of the HTTP header this authentication wants set.
	*          Used for preemptive authorization.
	*/
	@:overload @:abstract public function getHeaderValue(url : java.net.URL, method : String) : String;
	
	/**
	* Set header(s) on the given connection.  Subclasses must override
	* This will only be called for
	* definitive (i.e. non-preemptive) authorization.
	* @param conn The connection to apply the header(s) to
	* @param p A source of header values for this connection, if needed.
	* @param raw The raw header field (if needed)
	* @return true if all goes well, false if no headers were set.
	*/
	@:overload @:abstract public function setHeaders(conn : sun.net.www.protocol.http.HttpURLConnection, p : sun.net.www.HeaderParser, raw : String) : Bool;
	
	/**
	* Check if the header indicates that the current auth. parameters are stale.
	* If so, then replace the relevant field with the new value
	* and return true. Otherwise return false.
	* returning true means the request can be retried with the same userid/password
	* returning false means we have to go back to the user to ask for a new
	* username password.
	*/
	@:overload @:abstract public function isAuthorizationStale(header : String) : Bool;
	
	
}
