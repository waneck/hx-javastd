package com.sun.net.httpserver;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class HttpsParameters
{
	@:overload private function new() : Void;
	
	/**
	* Returns the HttpsConfigurator for this HttpsParameters.
	*/
	@:overload @:abstract public function getHttpsConfigurator() : com.sun.net.httpserver.HttpsConfigurator;
	
	/**
	* Returns the address of the remote client initiating the
	* connection.
	*/
	@:overload @:abstract public function getClientAddress() : java.net.InetSocketAddress;
	
	/**
	* Sets the SSLParameters to use for this HttpsParameters.
	* The parameters must be supported by the SSLContext contained
	* by the HttpsConfigurator associated with this HttpsParameters.
	* If no parameters are set, then the default behavior is to use
	* the default parameters from the associated SSLContext.
	* @param params the SSLParameters to set. If <code>null</code>
	* then the existing parameters (if any) remain unchanged.
	* @throws IllegalArgumentException if any of the parameters are
	*   invalid or unsupported.
	*/
	@:overload @:abstract public function setSSLParameters(params : javax.net.ssl.SSLParameters) : Void;
	
	/**
	* Returns a copy of the array of ciphersuites or null if none
	* have been set.
	*
	* @return a copy of the array of ciphersuites or null if none
	* have been set.
	*/
	@:overload public function getCipherSuites() : java.NativeArray<String>;
	
	/**
	* Sets the array of ciphersuites.
	*
	* @param cipherSuites the array of ciphersuites (or null)
	*/
	@:overload public function setCipherSuites(cipherSuites : java.NativeArray<String>) : Void;
	
	/**
	* Returns a copy of the array of protocols or null if none
	* have been set.
	*
	* @return a copy of the array of protocols or null if none
	* have been set.
	*/
	@:overload public function getProtocols() : java.NativeArray<String>;
	
	/**
	* Sets the array of protocols.
	*
	* @param protocols the array of protocols (or null)
	*/
	@:overload public function setProtocols(protocols : java.NativeArray<String>) : Void;
	
	/**
	* Returns whether client authentication should be requested.
	*
	* @return whether client authentication should be requested.
	*/
	@:overload public function getWantClientAuth() : Bool;
	
	/**
	* Sets whether client authentication should be requested. Calling
	* this method clears the <code>needClientAuth</code> flag.
	*
	* @param wantClientAuth whether client authentication should be requested
	*/
	@:overload public function setWantClientAuth(wantClientAuth : Bool) : Void;
	
	/**
	* Returns whether client authentication should be required.
	*
	* @return whether client authentication should be required.
	*/
	@:overload public function getNeedClientAuth() : Bool;
	
	/**
	* Sets whether client authentication should be required. Calling
	* this method clears the <code>wantClientAuth</code> flag.
	*
	* @param needClientAuth whether client authentication should be required
	*/
	@:overload public function setNeedClientAuth(needClientAuth : Bool) : Void;
	
	
}
