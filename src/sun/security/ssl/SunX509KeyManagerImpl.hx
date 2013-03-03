package sun.security.ssl;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class SunX509KeyManagerImpl extends javax.net.ssl.X509ExtendedKeyManager
{
	/*
	* Returns the certificate chain associated with the given alias.
	*
	* @return the certificate chain (ordered with the user's certificate first
	* and the root certificate authority last)
	*/
	@:overload @:public override public function getCertificateChain(alias : String) : java.NativeArray<java.security.cert.X509Certificate>;
	
	/*
	* Returns the key associated with the given alias
	*/
	@:overload @:public override public function getPrivateKey(alias : String) : java.security.PrivateKey;
	
	/*
	* Choose an alias to authenticate the client side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload @:public override public function chooseClientAlias(keyTypes : java.NativeArray<String>, issuers : java.NativeArray<java.security.Principal>, socket : java.net.Socket) : String;
	
	/*
	* Choose an alias to authenticate the client side of an
	* <code>SSLEngine</code> connection given the public key type
	* and the list of certificate issuer authorities recognized by
	* the peer (if any).
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function chooseEngineClientAlias(keyType : java.NativeArray<String>, issuers : java.NativeArray<java.security.Principal>, engine : javax.net.ssl.SSLEngine) : String;
	
	/*
	* Choose an alias to authenticate the server side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload @:public override public function chooseServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>, socket : java.net.Socket) : String;
	
	/*
	* Choose an alias to authenticate the server side of an
	* <code>SSLEngine</code> connection given the public key type
	* and the list of certificate issuer authorities recognized by
	* the peer (if any).
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function chooseEngineServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>, engine : javax.net.ssl.SSLEngine) : String;
	
	/*
	* Get the matching aliases for authenticating the client side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload @:public override public function getClientAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	/*
	* Get the matching aliases for authenticating the server side of a secure
	* socket given the public key type and the list of
	* certificate issuer authorities recognized by the peer (if any).
	*/
	@:overload @:public override public function getServerAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	
}
/*
* Basic container for credentials implemented as an inner class.
*/
@:native('sun$security$ssl$SunX509KeyManagerImpl$X509Credentials') @:internal extern class SunX509KeyManagerImpl_X509Credentials
{
	
}
