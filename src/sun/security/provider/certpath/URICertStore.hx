package sun.security.provider.certpath;
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
@:internal extern class URICertStore extends java.security.cert.CertStoreSpi
{
	/**
	* Returns a <code>Collection</code> of <code>X509Certificate</code>s that
	* match the specified selector. If no <code>X509Certificate</code>s
	* match the selector, an empty <code>Collection</code> will be returned.
	*
	* @param selector a <code>CertSelector</code> used to select which
	*  <code>X509Certificate</code>s should be returned. Specify
	*  <code>null</code> to return all <code>X509Certificate</code>s.
	* @return a <code>Collection</code> of <code>X509Certificate</code>s that
	*         match the specified selector
	* @throws CertStoreException if an exception occurs
	*/
	@:overload @:public @:synchronized override public function engineGetCertificates(selector : java.security.cert.CertSelector) : java.util.Collection<java.security.cert.X509Certificate>;
	
	/**
	* Returns a <code>Collection</code> of <code>X509CRL</code>s that
	* match the specified selector. If no <code>X509CRL</code>s
	* match the selector, an empty <code>Collection</code> will be returned.
	*
	* @param selector A <code>CRLSelector</code> used to select which
	*  <code>X509CRL</code>s should be returned. Specify <code>null</code>
	*  to return all <code>X509CRL</code>s.
	* @return A <code>Collection</code> of <code>X509CRL</code>s that
	*         match the specified selector
	* @throws CertStoreException if an exception occurs
	*/
	@:overload @:public @:synchronized override public function engineGetCRLs(selector : java.security.cert.CRLSelector) : java.util.Collection<java.security.cert.X509CRL>;
	
	
}
/**
* Holder class to lazily load LDAPCertStoreHelper if present.
*/
@:native('sun$security$provider$certpath$URICertStore$LDAP') @:internal extern class URICertStore_LDAP
{
	
}
/**
* CertStoreParameters for the URICertStore.
*/
@:native('sun$security$provider$certpath$URICertStore$URICertStoreParameters') @:internal extern class URICertStore_URICertStoreParameters implements java.security.cert.CertStoreParameters
{
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function clone() : Dynamic;
	
	
}
/**
* This class allows the URICertStore to be accessed as a CertStore.
*/
@:native('sun$security$provider$certpath$URICertStore$UCS') @:internal extern class URICertStore_UCS extends java.security.cert.CertStore
{
	@:overload @:protected private function new(spi : java.security.cert.CertStoreSpi, p : java.security.Provider, type : String, params : java.security.cert.CertStoreParameters) : Void;
	
	
}
