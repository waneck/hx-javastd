package sun.net.www.protocol.http;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DigestAuthentication extends sun.net.www.protocol.http.AuthenticationInfo
{
	/**
	* Create a DigestAuthentication
	*/
	@:overload public function new(isProxy : Bool, url : java.net.URL, realm : String, authMethod : String, pw : java.net.PasswordAuthentication, params : DigestAuthentication_Parameters) : Void;
	
	@:overload public function new(isProxy : Bool, host : String, port : Int, realm : String, authMethod : String, pw : java.net.PasswordAuthentication, params : DigestAuthentication_Parameters) : Void;
	
	/**
	* @return true if this authentication supports preemptive authorization
	*/
	@:overload override public function supportsPreemptiveAuthorization() : Bool;
	
	/**
	* Reclaculates the request-digest and returns it.
	*
	* <P> Used in the common case where the requestURI is simply the
	* abs_path.
	*
	* @param  url
	*         the URL
	*
	* @param  method
	*         the HTTP method
	*
	* @return the value of the HTTP header this authentication wants set
	*/
	@:overload override public function getHeaderValue(url : java.net.URL, method : String) : String;
	
	/**
	* Check if the header indicates that the current auth. parameters are stale.
	* If so, then replace the relevant field with the new value
	* and return true. Otherwise return false.
	* returning true means the request can be retried with the same userid/password
	* returning false means we have to go back to the user to ask for a new
	* username password.
	*/
	@:overload override public function isAuthorizationStale(header : String) : Bool;
	
	/**
	* Set header(s) on the given connection.
	* @param conn The connection to apply the header(s) to
	* @param p A source of header values for this connection, if needed.
	* @param raw Raw header values for this connection, if needed.
	* @return true if all goes well, false if no headers were set.
	*/
	@:overload override public function setHeaders(conn : sun.net.www.protocol.http.HttpURLConnection, p : sun.net.www.HeaderParser, raw : String) : Bool;
	
	@:overload public function checkResponse(header : String, method : String, url : java.net.URL) : Void;
	
	@:overload public function checkResponse(header : String, method : String, uri : String) : Void;
	
	
}
@:native('sun$net$www$protocol$http$DigestAuthentication$Parameters') @:internal extern class DigestAuthentication_Parameters implements java.io.Serializable
{
	
}
