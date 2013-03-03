package com.sun.net.ssl;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
/*
* NOTE:  this file was copied from javax.net.ssl.SSLContext
*/
extern class SSLContext
{
	/**
	* Creates an SSLContext object.
	*
	* @param contextSpi the delegate
	* @param provider the provider
	* @param algorithm the algorithm
	*/
	@:overload @:protected private function new(contextSpi : javax.net.ssl.SSLContextSpi, provider : java.security.Provider, protocol : String) : Void;
	
	/**
	* Generates a <code>SSLContext</code> object that implements the
	* specified secure socket protocol.
	*
	* @param protocol the standard name of the requested protocol.
	*
	* @return the new <code>SSLContext</code> object
	*
	* @exception NoSuchAlgorithmException if the specified protocol is not
	* available in the default provider package or any of the other provider
	* packages that were searched.
	*/
	@:overload @:public @:static public static function getInstance(protocol : String) : com.sun.net.ssl.SSLContext;
	
	/**
	* Generates a <code>SSLContext</code> object that implements the
	* specified secure socket protocol.
	*
	* @param protocol the standard name of the requested protocol.
	* @param provider the name of the provider
	*
	* @return the new <code>SSLContext</code> object
	*
	* @exception NoSuchAlgorithmException if the specified protocol is not
	* available from the specified provider.
	* @exception NoSuchProviderException if the specified provider has not
	* been configured.
	*/
	@:overload @:public @:static public static function getInstance(protocol : String, provider : String) : com.sun.net.ssl.SSLContext;
	
	/**
	* Generates a <code>SSLContext</code> object that implements the
	* specified secure socket protocol.
	*
	* @param protocol the standard name of the requested protocol.
	* @param provider an instance of the provider
	*
	* @return the new <code>SSLContext</code> object
	*
	* @exception NoSuchAlgorithmException if the specified protocol is not
	* available from the specified provider.
	*/
	@:overload @:public @:static public static function getInstance(protocol : String, provider : java.security.Provider) : com.sun.net.ssl.SSLContext;
	
	/**
	* Returns the protocol name of this <code>SSLContext</code> object.
	*
	* <p>This is the same name that was specified in one of the
	* <code>getInstance</code> calls that created this
	* <code>SSLContext</code> object.
	*
	* @return the protocol name of this <code>SSLContext</code> object.
	*/
	@:overload @:public @:final public function getProtocol() : String;
	
	/**
	* Returns the provider of this <code>SSLContext</code> object.
	*
	* @return the provider of this <code>SSLContext</code> object
	*/
	@:overload @:public @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this context. Either of the first two parameters
	* may be null in which case the installed security providers will
	* be searched for the highest priority implementation of the
	* appropriate factory. Likewise, the secure random parameter may
	* be null in which case the default implementation will be used.
	*
	* @param km the sources of authentication keys or null
	* @param tm the sources of peer authentication trust decisions or null
	* @param random the source of randomness for this generator or null
	*/
	@:overload @:public @:final public function init(km : java.NativeArray<javax.net.ssl.KeyManager>, tm : java.NativeArray<javax.net.ssl.TrustManager>, random : java.security.SecureRandom) : Void;
	
	/**
	* Returns a <code>SocketFactory</code> object for this
	* context.
	*
	* @return the factory
	*/
	@:overload @:public @:final public function getSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	/**
	* Returns a <code>ServerSocketFactory</code> object for
	* this context.
	*
	* @return the factory
	*/
	@:overload @:public @:final public function getServerSocketFactory() : javax.net.ssl.SSLServerSocketFactory;
	
	
}
