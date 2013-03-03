package javax.security.auth.x500;
/*
* Copyright (c) 2000, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class X500PrivateCredential implements javax.security.auth.Destroyable
{
	/**
	* Creates an X500PrivateCredential that associates an X.509 certificate,
	* a private key and the KeyStore alias.
	* <p>
	* @param cert X509Certificate
	* @param key  PrivateKey for the certificate
	* @exception IllegalArgumentException if either <code>cert</code> or
	* <code>key</code> is null
	*
	*/
	@:overload @:public public function new(cert : java.security.cert.X509Certificate, key : java.security.PrivateKey) : Void;
	
	/**
	* Creates an X500PrivateCredential that associates an X.509 certificate,
	* a private key and the KeyStore alias.
	* <p>
	* @param cert X509Certificate
	* @param key  PrivateKey for the certificate
	* @param alias KeyStore alias
	* @exception IllegalArgumentException if either <code>cert</code>,
	* <code>key</code> or <code>alias</code> is null
	*
	*/
	@:overload @:public public function new(cert : java.security.cert.X509Certificate, key : java.security.PrivateKey, alias : String) : Void;
	
	/**
	* Returns the X.509 certificate.
	* <p>
	* @return the X509Certificate
	*/
	@:overload @:public public function getCertificate() : java.security.cert.X509Certificate;
	
	/**
	* Returns the PrivateKey.
	* <p>
	* @return the PrivateKey
	*/
	@:overload @:public public function getPrivateKey() : java.security.PrivateKey;
	
	/**
	* Returns the KeyStore alias.
	* <p>
	* @return the KeyStore alias
	*/
	@:overload @:public public function getAlias() : String;
	
	/**
	* Clears the references to the X.509 certificate, private key and the
	* KeyStore alias in this object.
	*/
	@:overload @:public public function destroy() : Void;
	
	/**
	* Determines if the references to the X.509 certificate and private key
	* in this object have been cleared.
	* <p>
	* @return true if X509Certificate and the PrivateKey are null

	*/
	@:overload @:public public function isDestroyed() : Bool;
	
	
}
