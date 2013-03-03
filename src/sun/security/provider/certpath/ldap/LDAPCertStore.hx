package sun.security.provider.certpath.ldap;
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
extern class LDAPCertStore extends java.security.cert.CertStoreSpi
{
	/**
	* Creates a <code>CertStore</code> with the specified parameters.
	* For this class, the parameters object must be an instance of
	* <code>LDAPCertStoreParameters</code>.
	*
	* @param params the algorithm parameters
	* @exception InvalidAlgorithmParameterException if params is not an
	*   instance of <code>LDAPCertStoreParameters</code>
	*/
	@:overload @:public public function new(params : java.security.cert.CertStoreParameters) : Void;
	
	/**
	* Returns a <code>Collection</code> of <code>Certificate</code>s that
	* match the specified selector. If no <code>Certificate</code>s
	* match the selector, an empty <code>Collection</code> will be returned.
	* <p>
	* It is not practical to search every entry in the LDAP database for
	* matching <code>Certificate</code>s. Instead, the <code>CertSelector</code>
	* is examined in order to determine where matching <code>Certificate</code>s
	* are likely to be found (according to the PKIX LDAPv2 schema, RFC 2587).
	* If the subject is specified, its directory entry is searched. If the
	* issuer is specified, its directory entry is searched. If neither the
	* subject nor the issuer are specified (or the selector is not an
	* <code>X509CertSelector</code>), a <code>CertStoreException</code> is
	* thrown.
	*
	* @param selector a <code>CertSelector</code> used to select which
	*  <code>Certificate</code>s should be returned.
	* @return a <code>Collection</code> of <code>Certificate</code>s that
	*         match the specified selector
	* @throws CertStoreException if an exception occurs
	*/
	@:overload @:public @:synchronized override public function engineGetCertificates(selector : java.security.cert.CertSelector) : java.util.Collection<java.security.cert.X509Certificate>;
	
	/**
	* Returns a <code>Collection</code> of <code>CRL</code>s that
	* match the specified selector. If no <code>CRL</code>s
	* match the selector, an empty <code>Collection</code> will be returned.
	* <p>
	* It is not practical to search every entry in the LDAP database for
	* matching <code>CRL</code>s. Instead, the <code>CRLSelector</code>
	* is examined in order to determine where matching <code>CRL</code>s
	* are likely to be found (according to the PKIX LDAPv2 schema, RFC 2587).
	* If issuerNames or certChecking are specified, the issuer's directory
	* entry is searched. If neither issuerNames or certChecking are specified
	* (or the selector is not an <code>X509CRLSelector</code>), a
	* <code>CertStoreException</code> is thrown.
	*
	* @param selector A <code>CRLSelector</code> used to select which
	*  <code>CRL</code>s should be returned. Specify <code>null</code>
	*  to return all <code>CRL</code>s.
	* @return A <code>Collection</code> of <code>CRL</code>s that
	*         match the specified selector
	* @throws CertStoreException if an exception occurs
	*/
	@:overload @:public @:synchronized override public function engineGetCRLs(selector : java.security.cert.CRLSelector) : java.util.Collection<java.security.cert.X509CRL>;
	
	
}
/**
* Private class encapsulating the actual LDAP operations and cache
* handling. Use:
*
*   LDAPRequest request = new LDAPRequest(dn);
*   request.addRequestedAttribute(CROSS_CERT);
*   request.addRequestedAttribute(CA_CERT);
*   byte[][] crossValues = request.getValues(CROSS_CERT);
*   byte[][] caValues = request.getValues(CA_CERT);
*
* At most one LDAP request is sent for each instance created. If all
* getValues() calls can be satisfied from the cache, no request
* is sent at all. If a request is sent, all requested attributes
* are always added to the cache irrespective of whether the getValues()
* method is called.
*/
@:native('sun$security$provider$certpath$ldap$LDAPCertStore$LDAPRequest') @:internal extern class LDAPCertStore_LDAPRequest
{
	
}
/*
* Subclass of LDAPCertStoreParameters with overridden equals/hashCode
* methods. This is necessary because the parameters are used as
* keys in the LDAPCertStore cache.
*/
@:native('sun$security$provider$certpath$ldap$LDAPCertStore$SunLDAPCertStoreParameters') @:internal extern class LDAPCertStore_SunLDAPCertStoreParameters extends java.security.cert.LDAPCertStoreParameters
{
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
/*
* This inner class wraps an existing X509CertSelector and adds
* additional criteria to match on when the certificate's subject is
* different than the LDAP Distinguished Name entry. The LDAPCertStore
* implementation uses the subject DN as the directory entry for
* looking up certificates. This can be problematic if the certificates
* that you want to fetch have a different subject DN than the entry
* where they are stored. You could set the selector's subject to the
* LDAP DN entry, but then the resulting match would fail to find the
* desired certificates because the subject DNs would not match. This
* class avoids that problem by introducing a certSubject which should
* be set to the certificate's subject DN when it is different than
* the LDAP DN.
*/
@:native('sun$security$provider$certpath$ldap$LDAPCertStore$LDAPCertSelector') @:internal extern class LDAPCertStore_LDAPCertSelector extends java.security.cert.X509CertSelector
{
	@:overload @:public override public function getCertificate() : java.security.cert.X509Certificate;
	
	@:overload @:public override public function getSerialNumber() : java.math.BigInteger;
	
	@:overload @:public override public function getIssuer() : javax.security.auth.x500.X500Principal;
	
	@:overload @:public override public function getIssuerAsString() : String;
	
	@:overload @:public override public function getIssuerAsBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function getSubject() : javax.security.auth.x500.X500Principal;
	
	@:overload @:public override public function getSubjectAsString() : String;
	
	@:overload @:public override public function getSubjectAsBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function getSubjectKeyIdentifier() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function getAuthorityKeyIdentifier() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function getCertificateValid() : java.util.Date;
	
	@:overload @:public override public function getPrivateKeyValid() : java.util.Date;
	
	@:overload @:public override public function getSubjectPublicKeyAlgID() : String;
	
	@:overload @:public override public function getSubjectPublicKey() : java.security.PublicKey;
	
	@:overload @:public override public function getKeyUsage() : java.NativeArray<Bool>;
	
	@:overload @:public override public function getExtendedKeyUsage() : java.util.Set<String>;
	
	@:overload @:public override public function getMatchAllSubjectAltNames() : Bool;
	
	@:overload @:public override public function getSubjectAlternativeNames() : java.util.Collection<java.util.List<Dynamic>>;
	
	@:overload @:public override public function getNameConstraints() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function getBasicConstraints() : Int;
	
	@:overload @:public override public function getPolicy() : java.util.Set<String>;
	
	@:overload @:public override public function getPathToNames() : java.util.Collection<java.util.List<Dynamic>>;
	
	@:overload @:public override public function match(cert : java.security.cert.Certificate) : Bool;
	
	
}
/**
* This class has the same purpose as LDAPCertSelector except it is for
* X.509 CRLs.
*/
@:native('sun$security$provider$certpath$ldap$LDAPCertStore$LDAPCRLSelector') @:internal extern class LDAPCertStore_LDAPCRLSelector extends java.security.cert.X509CRLSelector
{
	@:overload @:public override public function getIssuers() : java.util.Collection<javax.security.auth.x500.X500Principal>;
	
	@:overload @:public override public function getIssuerNames() : java.util.Collection<Dynamic>;
	
	@:overload @:public override public function getMinCRL() : java.math.BigInteger;
	
	@:overload @:public override public function getMaxCRL() : java.math.BigInteger;
	
	@:overload @:public override public function getDateAndTime() : java.util.Date;
	
	@:overload @:public override public function getCertificateChecking() : java.security.cert.X509Certificate;
	
	@:overload @:public override public function match(crl : java.security.cert.CRL) : Bool;
	
	
}
