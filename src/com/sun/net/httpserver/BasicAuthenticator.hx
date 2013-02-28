package com.sun.net.httpserver;
/*
* Copyright (c) 2006, 2010, Oracle and/or its affiliates. All rights reserved.
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
* BasicAuthenticator provides an implementation of HTTP Basic
* authentication. It is an abstract class and must be extended
* to provide an implementation of {@link #checkCredentials(String,String)}
* which is called to verify each incoming request.
*/
extern class BasicAuthenticator extends com.sun.net.httpserver.Authenticator
{
	private var realm : String;
	
	/**
	* Creates a BasicAuthenticator for the given HTTP realm
	* @param realm The HTTP Basic authentication realm
	* @throws NullPointerException if the realm is an empty string
	*/
	@:overload public function new(realm : String) : Void;
	
	/**
	* returns the realm this BasicAuthenticator was created with
	* @return the authenticator's realm string.
	*/
	@:overload public function getRealm() : String;
	
	@:overload override public function authenticate(t : com.sun.net.httpserver.HttpExchange) : com.sun.net.httpserver.Authenticator.Authenticator_Result;
	
	/**
	* called for each incoming request to verify the
	* given name and password in the context of this
	* Authenticator's realm. Any caching of credentials
	* must be done by the implementation of this method
	* @param username the username from the request
	* @param password the password from the request
	* @return <code>true</code> if the credentials are valid,
	*    <code>false</code> otherwise.
	*/
	@:overload @:abstract public function checkCredentials(username : String, password : String) : Bool;
	
	
}
@:internal extern class Base64
{
	
}
