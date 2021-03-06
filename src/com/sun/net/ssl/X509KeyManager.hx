package com.sun.net.ssl;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
* NOTE:  this file was copied from javax.net.ssl.X509KeyManager
*/
extern interface X509KeyManager extends com.sun.net.ssl.KeyManager
{
	/**
	* Get the matching aliases for authenticating the client side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*
	* @param keyType the key algorithm type name
	* @param issuers the list of acceptable CA issuer subject names
	* @return the matching alias names
	*/
	@:overload @:public public function getClientAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	/**
	* Choose an alias to authenticate the client side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*
	* @param keyType the key algorithm type name
	* @param issuers the list of acceptable CA issuer subject names
	* @return the alias name for the desired key
	*/
	@:overload @:public public function chooseClientAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>) : String;
	
	/**
	* Get the matching aliases for authenticating the server side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*
	* @param keyType the key algorithm type name
	* @param issuers the list of acceptable CA issuer subject names
	* @return the matching alias names
	*/
	@:overload @:public public function getServerAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	/**
	* Choose an alias to authenticate the server side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*
	* @param keyType the key algorithm type name
	* @param issuers the list of acceptable CA issuer subject names
	* @return the alias name for the desired key
	*/
	@:overload @:public public function chooseServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>) : String;
	
	/**
	* Returns the certificate chain associated with the given alias.
	*
	* @param alias the alias name
	*
	* @return the certificate chain (ordered with the user's certificate first
	* and the root certificate authority last)
	*/
	@:overload @:public public function getCertificateChain(alias : String) : java.NativeArray<java.security.cert.X509Certificate>;
	
	/*
	* Returns the key associated with the given alias.
	*
	* @param alias the alias name
	*
	* @return the requested key
	*/
	@:overload @:public public function getPrivateKey(alias : String) : java.security.PrivateKey;
	
	
}
