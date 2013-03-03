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
* NOTE:  this file was copied from javax.net.ssl.SSLSecurity,
* but was heavily modified to allow com.sun.* users to
* access providers written using the javax.sun.* APIs.
*/
/**
* This class instantiates implementations of JSSE engine classes from
* providers registered with the java.security.Security object.
*
* @author Jan Luehe
* @author Jeff Nisewanger
* @author Brad Wetmore
*/
@:internal extern class SSLSecurity
{
	
}
@:internal extern class SSLContextSpiWrapper extends com.sun.net.ssl.SSLContextSpi
{
	@:overload @:protected private function engineInit(kma : java.NativeArray<com.sun.net.ssl.KeyManager>, tma : java.NativeArray<com.sun.net.ssl.TrustManager>, sr : java.security.SecureRandom) : Void;
	
	@:overload @:protected override private function engineGetSocketFactory() : javax.net.ssl.SSLSocketFactory;
	
	@:overload @:protected override private function engineGetServerSocketFactory() : javax.net.ssl.SSLServerSocketFactory;
	
	
}
@:internal extern class TrustManagerFactorySpiWrapper extends com.sun.net.ssl.TrustManagerFactorySpi
{
	@:overload @:protected override private function engineInit(ks : java.security.KeyStore) : Void;
	
	@:overload @:protected override private function engineGetTrustManagers() : java.NativeArray<com.sun.net.ssl.TrustManager>;
	
	
}
@:internal extern class KeyManagerFactorySpiWrapper extends com.sun.net.ssl.KeyManagerFactorySpi
{
	@:overload @:protected override private function engineInit(ks : java.security.KeyStore, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:protected override private function engineGetKeyManagers() : java.NativeArray<com.sun.net.ssl.KeyManager>;
	
	
}
@:internal extern class X509KeyManagerJavaxWrapper implements javax.net.ssl.X509KeyManager
{
	@:overload @:public public function getClientAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	@:overload @:public public function chooseClientAlias(keyTypes : java.NativeArray<String>, issuers : java.NativeArray<java.security.Principal>, socket : java.net.Socket) : String;
	
	/*
	* JSSE 1.0.x was only socket based, but it's possible someone might
	* want to install a really old provider.  We should at least
	* try to be nice.
	*/
	@:overload @:public public function chooseEngineClientAlias(keyTypes : java.NativeArray<String>, issuers : java.NativeArray<java.security.Principal>, engine : javax.net.ssl.SSLEngine) : String;
	
	@:overload @:public public function getServerAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	@:overload @:public public function chooseServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>, socket : java.net.Socket) : String;
	
	/*
	* JSSE 1.0.x was only socket based, but it's possible someone might
	* want to install a really old provider.  We should at least
	* try to be nice.
	*/
	@:overload @:public public function chooseEngineServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>, engine : javax.net.ssl.SSLEngine) : String;
	
	@:overload @:public public function getCertificateChain(alias : String) : java.NativeArray<java.security.cert.X509Certificate>;
	
	@:overload @:public public function getPrivateKey(alias : String) : java.security.PrivateKey;
	
	
}
@:internal extern class X509TrustManagerJavaxWrapper implements javax.net.ssl.X509TrustManager
{
	@:overload @:public public function checkClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String) : Void;
	
	@:overload @:public public function checkServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>, authType : String) : Void;
	
	@:overload @:public public function getAcceptedIssuers() : java.NativeArray<java.security.cert.X509Certificate>;
	
	
}
@:internal extern class X509KeyManagerComSunWrapper implements com.sun.net.ssl.X509KeyManager
{
	@:overload @:public public function getClientAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	@:overload @:public public function chooseClientAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>) : String;
	
	@:overload @:public public function getServerAliases(keyType : String, issuers : java.NativeArray<java.security.Principal>) : java.NativeArray<String>;
	
	@:overload @:public public function chooseServerAlias(keyType : String, issuers : java.NativeArray<java.security.Principal>) : String;
	
	@:overload @:public public function getCertificateChain(alias : String) : java.NativeArray<java.security.cert.X509Certificate>;
	
	@:overload @:public public function getPrivateKey(alias : String) : java.security.PrivateKey;
	
	
}
@:internal extern class X509TrustManagerComSunWrapper implements com.sun.net.ssl.X509TrustManager
{
	@:overload @:public public function isClientTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>) : Bool;
	
	@:overload @:public public function isServerTrusted(chain : java.NativeArray<java.security.cert.X509Certificate>) : Bool;
	
	@:overload @:public public function getAcceptedIssuers() : java.NativeArray<java.security.cert.X509Certificate>;
	
	
}
