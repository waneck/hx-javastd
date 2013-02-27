package sun.net.www.protocol.http;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class NegotiateAuthentication extends sun.net.www.protocol.http.AuthenticationInfo
{
	/**
	* Constructor used for both WWW and proxy entries.
	* @param hci a schemed object.
	*/
	@:overload public function new(hci : sun.net.www.protocol.http.HttpCallerInfo) : Void;
	
	/**
	* @return true if this authentication supports preemptive authorization
	*/
	@:overload override public function supportsPreemptiveAuthorization() : Bool;
	
	/**
	* Find out if the HttpCallerInfo supports Negotiate protocol. In order to
	* find out yes or no, an initialization of a Negotiator object against it
	* is tried. The generated object will be cached under the name of ths
	* hostname at a success try.<br>
	*
	* If this method is called for the second time on an HttpCallerInfo with
	* the same hostname, the answer is retrieved from cache.
	*
	* @return true if supported
	*/
	@:overload @:synchronized public static function isSupported(hci : sun.net.www.protocol.http.HttpCallerInfo) : Bool;
	
	/**
	* Not supported. Must use the setHeaders() method
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
	* @param p A source of header values for this connection, not used because
	*          HeaderParser converts the fields to lower case, use raw instead
	* @param raw The raw header field.
	* @return true if all goes well, false if no headers were set.
	*/
	@:overload @:synchronized override public function setHeaders(conn : sun.net.www.protocol.http.HttpURLConnection, p : sun.net.www.HeaderParser, raw : String) : Bool;
	
	
}
@:native('sun$net$www$protocol$http$NegotiateAuthentication$B64Encoder') @:internal extern class NegotiateAuthentication_B64Encoder extends sun.misc.BASE64Encoder
{
	@:overload override private function bytesPerLine() : Int;
	
	
}
