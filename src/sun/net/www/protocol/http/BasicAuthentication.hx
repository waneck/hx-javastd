package sun.net.www.protocol.http;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class BasicAuthentication extends sun.net.www.protocol.http.AuthenticationInfo
{
	/**
	* Create a BasicAuthentication
	*/
	@:overload @:public public function new(isProxy : Bool, host : String, port : Int, realm : String, pw : java.net.PasswordAuthentication) : Void;
	
	/**
	* Create a BasicAuthentication
	*/
	@:overload @:public public function new(isProxy : Bool, host : String, port : Int, realm : String, auth : String) : Void;
	
	/**
	* Create a BasicAuthentication
	*/
	@:overload @:public public function new(isProxy : Bool, url : java.net.URL, realm : String, pw : java.net.PasswordAuthentication) : Void;
	
	/**
	* Create a BasicAuthentication
	*/
	@:overload @:public public function new(isProxy : Bool, url : java.net.URL, realm : String, auth : String) : Void;
	
	/**
	* @return true if this authentication supports preemptive authorization
	*/
	@:overload @:public override public function supportsPreemptiveAuthorization() : Bool;
	
	/**
	* Set header(s) on the given connection. This will only be called for
	* definitive (i.e. non-preemptive) authorization.
	* @param conn The connection to apply the header(s) to
	* @param p A source of header values for this connection, if needed.
	* @param raw The raw header values for this connection, if needed.
	* @return true if all goes well, false if no headers were set.
	*/
	@:overload @:public override public function setHeaders(conn : sun.net.www.protocol.http.HttpURLConnection, p : sun.net.www.HeaderParser, raw : String) : Bool;
	
	/**
	* @return the value of the HTTP header this authentication wants set
	*/
	@:overload @:public override public function getHeaderValue(url : java.net.URL, method : String) : String;
	
	/**
	* For Basic Authentication, the security parameters can never be stale.
	* In other words there is no possibility to reuse the credentials.
	* They are always either valid or invalid.
	*/
	@:overload @:public override public function isAuthorizationStale(header : String) : Bool;
	
	
}
/* It is never expected that the header value will exceed the bytesPerLine */
@:native('sun$net$www$protocol$http$BasicAuthentication$BasicBASE64Encoder') @:internal extern class BasicAuthentication_BasicBASE64Encoder extends sun.misc.BASE64Encoder
{
	@:overload @:protected override private function bytesPerLine() : Int;
	
	
}
