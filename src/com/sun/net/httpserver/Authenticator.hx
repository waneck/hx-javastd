package com.sun.net.httpserver;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
* Authenticator represents an implementation of an HTTP authentication
* mechanism. Sub-classes provide implementations of specific mechanisms
* such as Digest or Basic auth. Instances are invoked to provide verification
* of the authentication information provided in all incoming requests.
* Note. This implies that any caching of credentials or other authentication
* information must be done outside of this class.
*/
extern class Authenticator
{
	/**
	* called to authenticate each incoming request. The implementation
	* must return a Failure, Success or Retry object as appropriate :-
	* <p>
	* Failure means the authentication has completed, but has failed
	* due to invalid credentials.
	* <p>
	* Sucess means that the authentication
	* has succeeded, and a Principal object representing the user
	* can be retrieved by calling Sucess.getPrincipal() .
	* <p>
	* Retry means that another HTTP exchange is required. Any response
	* headers needing to be sent back to the client are set in the
	* given HttpExchange. The response code to be returned must be provided
	* in the Retry object. Retry may occur multiple times.
	*/
	@:overload @:abstract public function authenticate(exch : com.sun.net.httpserver.HttpExchange) : Authenticator_Result;
	
	
}
/**
* Base class for return type from authenticate() method
*/
@:native('com$sun$net$httpserver$Authenticator$Result') extern class Authenticator_Result
{
	
}
/**
* Indicates an authentication failure. The authentication
* attempt has completed.
*/
@:native('com$sun$net$httpserver$Authenticator$Failure') extern class Authenticator_Failure extends Authenticator_Result
{
	@:overload public function new(responseCode : Int) : Void;
	
	/**
	* returns the response code to send to the client
	*/
	@:overload public function getResponseCode() : Int;
	
	
}
/**
* Indicates an authentication has succeeded and the
* authenticated user principal can be acquired by calling
* getPrincipal().
*/
@:native('com$sun$net$httpserver$Authenticator$Success') extern class Authenticator_Success extends Authenticator_Result
{
	@:overload public function new(p : com.sun.net.httpserver.HttpPrincipal) : Void;
	
	/**
	* returns the authenticated user Principal
	*/
	@:overload public function getPrincipal() : com.sun.net.httpserver.HttpPrincipal;
	
	
}
/**
* Indicates an authentication must be retried. The
* response code to be sent back is as returned from
* getResponseCode(). The Authenticator must also have
* set any necessary response headers in the given HttpExchange
* before returning this Retry object.
*/
@:native('com$sun$net$httpserver$Authenticator$Retry') extern class Authenticator_Retry extends Authenticator_Result
{
	@:overload public function new(responseCode : Int) : Void;
	
	/**
	* returns the response code to send to the client
	*/
	@:overload public function getResponseCode() : Int;
	
	
}
