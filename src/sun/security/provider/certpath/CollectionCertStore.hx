package sun.security.provider.certpath;
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
extern class CollectionCertStore extends java.security.cert.CertStoreSpi
{
	/**
	* Creates a <code>CertStore</code> with the specified parameters.
	* For this class, the parameters object must be an instance of
	* <code>CollectionCertStoreParameters</code>. The <code>Collection</code>
	* included in the <code>CollectionCertStoreParameters</code> object
	* must be thread-safe.
	*
	* @param params the algorithm parameters
	* @exception InvalidAlgorithmParameterException if params is not an
	*   instance of <code>CollectionCertStoreParameters</code>
	*/
	@:overload public function new(params : java.security.cert.CertStoreParameters) : Void;
	
	/**
	* Returns a <code>Collection</code> of <code>Certificate</code>s that
	* match the specified selector. If no <code>Certificate</code>s
	* match the selector, an empty <code>Collection</code> will be returned.
	*
	* @param selector a <code>CertSelector</code> used to select which
	*  <code>Certificate</code>s should be returned. Specify <code>null</code>
	*  to return all <code>Certificate</code>s.
	* @return a <code>Collection</code> of <code>Certificate</code>s that
	*         match the specified selector
	* @throws CertStoreException if an exception occurs
	*/
	@:overload public function engineGetCertificates(selector : java.security.cert.CertSelector) : java.util.Collection<java.security.cert.Certificate>;
	
	/**
	* Returns a <code>Collection</code> of <code>CRL</code>s that
	* match the specified selector. If no <code>CRL</code>s
	* match the selector, an empty <code>Collection</code> will be returned.
	*
	* @param selector a <code>CRLSelector</code> used to select which
	*  <code>CRL</code>s should be returned. Specify <code>null</code>
	*  to return all <code>CRL</code>s.
	* @return a <code>Collection</code> of <code>CRL</code>s that
	*         match the specified selector
	* @throws CertStoreException if an exception occurs
	*/
	@:overload public function engineGetCRLs(selector : java.security.cert.CRLSelector) : java.util.Collection<java.security.cert.CRL>;
	
	
}
