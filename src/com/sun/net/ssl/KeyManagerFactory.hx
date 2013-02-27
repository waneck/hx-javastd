package com.sun.net.ssl;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
* NOTE:  this file was copied from javax.net.ssl.KeyManagerFactory
*/
/**
* This class acts as a factory for key managers based on a
* source of key material. Each key manager manages a specific
* type of key material for use by secure sockets. The key
* material is based on a KeyStore and/or provider specific sources.
*
* @deprecated As of JDK 1.4, this implementation-specific class was
*      replaced by {@link javax.net.ssl.KeyManagerFactory}.
*/
extern class KeyManagerFactory
{
	/**
	* <p>The default KeyManager can be changed by setting the value of the
	* "sun.ssl.keymanager.type" security property (in the Java security
	* properties file) to the desired name.
	*
	* @return the default type as specified in the
	* Java security properties file, or an implementation-specific default
	* if no such property exists.
	*/
	@:overload @:final public static function getDefaultAlgorithm() : String;
	
	/**
	* Creates a KeyManagerFactory object.
	*
	* @param factorySpi the delegate
	* @param provider the provider
	* @param algorithm the algorithm
	*/
	@:overload private function new(factorySpi : com.sun.net.ssl.KeyManagerFactorySpi, provider : java.security.Provider, algorithm : String) : Void;
	
	/**
	* Returns the algorithm name of this <code>KeyManagerFactory</code> object.
	*
	* <p>This is the same name that was specified in one of the
	* <code>getInstance</code> calls that created this
	* <code>KeyManagerFactory</code> object.
	*
	* @return the algorithm name of this <code>KeyManagerFactory</code> object.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Generates a <code>KeyManagerFactory</code> object that implements the
	* specified key management algorithm.
	* If the default provider package provides an implementation of the
	* requested key management algorithm, an instance of
	* <code>KeyManagerFactory</code> containing that implementation is
	* returned.  If the algorithm is not available in the default provider
	* package, other provider packages are searched.
	*
	* @param algorithm the standard name of the requested
	* algorithm.
	*
	* @return the new <code>KeyManagerFactory</code> object
	*
	* @exception NoSuchAlgorithmException if the specified algorithm is not
	* available in the default provider package or any of the other provider
	* packages that were searched.
	*/
	@:overload @:final public static function getInstance(algorithm : String) : KeyManagerFactory;
	
	/**
	* Generates a <code>KeyManagerFactory</code> object for the specified
	* key management algorithm from the specified provider.
	*
	* @param algorithm the standard name of the requested
	* algorithm.
	* @param provider the name of the provider
	*
	* @return the new <code>KeyManagerFactory</code> object
	*
	* @exception NoSuchAlgorithmException if the specified algorithm is not
	* available from the specified provider.
	* @exception NoSuchProviderException if the specified provider has not
	* been configured.
	*/
	@:overload @:final public static function getInstance(algorithm : String, provider : String) : KeyManagerFactory;
	
	/**
	* Generates a <code>KeyManagerFactory</code> object for the specified
	* key management algorithm from the specified provider.
	*
	* @param algorithm the standard name of the requested
	* algorithm.
	* @param provider an instance of the provider
	*
	* @return the new <code>KeyManagerFactory</code> object
	*
	* @exception NoSuchAlgorithmException if the specified algorithm is not
	* available from the specified provider.
	*/
	@:overload @:final public static function getInstance(algorithm : String, provider : java.security.Provider) : KeyManagerFactory;
	
	/**
	* Returns the provider of this <code>KeyManagerFactory</code> object.
	*
	* @return the provider of this <code>KeyManagerFactory</code> object
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Initializes this factory with a source of key material. The
	* provider may also include a provider-specific source
	* of key material.
	*
	* @param ks the key store or null
	* @param password the password for recovering keys
	*/
	@:overload public function init(ks : java.security.KeyStore, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Returns one key manager for each type of key material.
	* @return the key managers
	*/
	@:overload public function getKeyManagers() : java.NativeArray<com.sun.net.ssl.KeyManager>;
	
	
}
