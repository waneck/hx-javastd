package java.security.cert;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class PKIXParameters implements java.security.cert.CertPathParameters
{
	/**
	* Creates an instance of <code>PKIXParameters</code> with the specified
	* <code>Set</code> of most-trusted CAs. Each element of the
	* set is a {@link TrustAnchor TrustAnchor}.
	* <p>
	* Note that the <code>Set</code> is copied to protect against
	* subsequent modifications.
	*
	* @param trustAnchors a <code>Set</code> of <code>TrustAnchor</code>s
	* @throws InvalidAlgorithmParameterException if the specified
	* <code>Set</code> is empty <code>(trustAnchors.isEmpty() == true)</code>
	* @throws NullPointerException if the specified <code>Set</code> is
	* <code>null</code>
	* @throws ClassCastException if any of the elements in the <code>Set</code>
	* are not of type <code>java.security.cert.TrustAnchor</code>
	*/
	@:overload @:public public function new(trustAnchors : java.util.Set<java.security.cert.TrustAnchor>) : Void;
	
	/**
	* Creates an instance of <code>PKIXParameters</code> that
	* populates the set of most-trusted CAs from the trusted
	* certificate entries contained in the specified <code>KeyStore</code>.
	* Only keystore entries that contain trusted <code>X509Certificates</code>
	* are considered; all other certificate types are ignored.
	*
	* @param keystore a <code>KeyStore</code> from which the set of
	* most-trusted CAs will be populated
	* @throws KeyStoreException if the keystore has not been initialized
	* @throws InvalidAlgorithmParameterException if the keystore does
	* not contain at least one trusted certificate entry
	* @throws NullPointerException if the keystore is <code>null</code>
	*/
	@:overload @:public public function new(keystore : java.security.KeyStore) : Void;
	
	/**
	* Returns an immutable <code>Set</code> of the most-trusted
	* CAs.
	*
	* @return an immutable <code>Set</code> of <code>TrustAnchor</code>s
	* (never <code>null</code>)
	*
	* @see #setTrustAnchors
	*/
	@:overload @:public public function getTrustAnchors() : java.util.Set<java.security.cert.TrustAnchor>;
	
	/**
	* Sets the <code>Set</code> of most-trusted CAs.
	* <p>
	* Note that the <code>Set</code> is copied to protect against
	* subsequent modifications.
	*
	* @param trustAnchors a <code>Set</code> of <code>TrustAnchor</code>s
	* @throws InvalidAlgorithmParameterException if the specified
	* <code>Set</code> is empty <code>(trustAnchors.isEmpty() == true)</code>
	* @throws NullPointerException if the specified <code>Set</code> is
	* <code>null</code>
	* @throws ClassCastException if any of the elements in the set
	* are not of type <code>java.security.cert.TrustAnchor</code>
	*
	* @see #getTrustAnchors
	*/
	@:overload @:public public function setTrustAnchors(trustAnchors : java.util.Set<java.security.cert.TrustAnchor>) : Void;
	
	/**
	* Returns an immutable <code>Set</code> of initial
	* policy identifiers (OID strings), indicating that any one of these
	* policies would be acceptable to the certificate user for the purposes of
	* certification path processing. The default return value is an empty
	* <code>Set</code>, which is interpreted as meaning that any policy would
	* be acceptable.
	*
	* @return an immutable <code>Set</code> of initial policy OIDs in
	* <code>String</code> format, or an empty <code>Set</code> (implying any
	* policy is acceptable). Never returns <code>null</code>.
	*
	* @see #setInitialPolicies
	*/
	@:overload @:public public function getInitialPolicies() : java.util.Set<String>;
	
	/**
	* Sets the <code>Set</code> of initial policy identifiers
	* (OID strings), indicating that any one of these
	* policies would be acceptable to the certificate user for the purposes of
	* certification path processing. By default, any policy is acceptable
	* (i.e. all policies), so a user that wants to allow any policy as
	* acceptable does not need to call this method, or can call it
	* with an empty <code>Set</code> (or <code>null</code>).
	* <p>
	* Note that the <code>Set</code> is copied to protect against
	* subsequent modifications.
	*
	* @param initialPolicies a <code>Set</code> of initial policy
	* OIDs in <code>String</code> format (or <code>null</code>)
	* @throws ClassCastException if any of the elements in the set are
	* not of type <code>String</code>
	*
	* @see #getInitialPolicies
	*/
	@:overload @:public public function setInitialPolicies(initialPolicies : java.util.Set<String>) : Void;
	
	/**
	* Sets the list of <code>CertStore</code>s to be used in finding
	* certificates and CRLs. May be <code>null</code>, in which case
	* no <code>CertStore</code>s will be used. The first
	* <code>CertStore</code>s in the list may be preferred to those that
	* appear later.
	* <p>
	* Note that the <code>List</code> is copied to protect against
	* subsequent modifications.
	*
	* @param stores a <code>List</code> of <code>CertStore</code>s (or
	* <code>null</code>)
	* @throws ClassCastException if any of the elements in the list are
	* not of type <code>java.security.cert.CertStore</code>
	*
	* @see #getCertStores
	*/
	@:overload @:public public function setCertStores(stores : java.util.List<java.security.cert.CertStore>) : Void;
	
	/**
	* Adds a <code>CertStore</code> to the end of the list of
	* <code>CertStore</code>s used in finding certificates and CRLs.
	*
	* @param store the <code>CertStore</code> to add. If <code>null</code>,
	* the store is ignored (not added to list).
	*/
	@:overload @:public public function addCertStore(store : java.security.cert.CertStore) : Void;
	
	/**
	* Returns an immutable <code>List</code> of <code>CertStore</code>s that
	* are used to find certificates and CRLs.
	*
	* @return an immutable <code>List</code> of <code>CertStore</code>s
	* (may be empty, but never <code>null</code>)
	*
	* @see #setCertStores
	*/
	@:overload @:public public function getCertStores() : java.util.List<java.security.cert.CertStore>;
	
	/**
	* Sets the RevocationEnabled flag. If this flag is true, the default
	* revocation checking mechanism of the underlying PKIX service provider
	* will be used. If this flag is false, the default revocation checking
	* mechanism will be disabled (not used).
	* <p>
	* When a <code>PKIXParameters</code> object is created, this flag is set
	* to true. This setting reflects the most common strategy for checking
	* revocation, since each service provider must support revocation
	* checking to be PKIX compliant. Sophisticated applications should set
	* this flag to false when it is not practical to use a PKIX service
	* provider's default revocation checking mechanism or when an alternative
	* revocation checking mechanism is to be substituted (by also calling the
	* {@link #addCertPathChecker addCertPathChecker} or {@link
	* #setCertPathCheckers setCertPathCheckers} methods).
	*
	* @param val the new value of the RevocationEnabled flag
	*/
	@:overload @:public public function setRevocationEnabled(val : Bool) : Void;
	
	/**
	* Checks the RevocationEnabled flag. If this flag is true, the default
	* revocation checking mechanism of the underlying PKIX service provider
	* will be used. If this flag is false, the default revocation checking
	* mechanism will be disabled (not used). See the {@link
	* #setRevocationEnabled setRevocationEnabled} method for more details on
	* setting the value of this flag.
	*
	* @return the current value of the RevocationEnabled flag
	*/
	@:overload @:public public function isRevocationEnabled() : Bool;
	
	/**
	* Sets the ExplicitPolicyRequired flag. If this flag is true, an
	* acceptable policy needs to be explicitly identified in every certificate.
	* By default, the ExplicitPolicyRequired flag is false.
	*
	* @param val <code>true</code> if explicit policy is to be required,
	* <code>false</code> otherwise
	*/
	@:overload @:public public function setExplicitPolicyRequired(val : Bool) : Void;
	
	/**
	* Checks if explicit policy is required. If this flag is true, an
	* acceptable policy needs to be explicitly identified in every certificate.
	* By default, the ExplicitPolicyRequired flag is false.
	*
	* @return <code>true</code> if explicit policy is required,
	* <code>false</code> otherwise
	*/
	@:overload @:public public function isExplicitPolicyRequired() : Bool;
	
	/**
	* Sets the PolicyMappingInhibited flag. If this flag is true, policy
	* mapping is inhibited. By default, policy mapping is not inhibited (the
	* flag is false).
	*
	* @param val <code>true</code> if policy mapping is to be inhibited,
	* <code>false</code> otherwise
	*/
	@:overload @:public public function setPolicyMappingInhibited(val : Bool) : Void;
	
	/**
	* Checks if policy mapping is inhibited. If this flag is true, policy
	* mapping is inhibited. By default, policy mapping is not inhibited (the
	* flag is false).
	*
	* @return true if policy mapping is inhibited, false otherwise
	*/
	@:overload @:public public function isPolicyMappingInhibited() : Bool;
	
	/**
	* Sets state to determine if the any policy OID should be processed
	* if it is included in a certificate. By default, the any policy OID
	* is not inhibited ({@link #isAnyPolicyInhibited isAnyPolicyInhibited()}
	* returns <code>false</code>).
	*
	* @param val <code>true</code> if the any policy OID is to be
	* inhibited, <code>false</code> otherwise
	*/
	@:overload @:public public function setAnyPolicyInhibited(val : Bool) : Void;
	
	/**
	* Checks whether the any policy OID should be processed if it
	* is included in a certificate.
	*
	* @return <code>true</code> if the any policy OID is inhibited,
	* <code>false</code> otherwise
	*/
	@:overload @:public public function isAnyPolicyInhibited() : Bool;
	
	/**
	* Sets the PolicyQualifiersRejected flag. If this flag is true,
	* certificates that include policy qualifiers in a certificate
	* policies extension that is marked critical are rejected.
	* If the flag is false, certificates are not rejected on this basis.
	*
	* <p> When a <code>PKIXParameters</code> object is created, this flag is
	* set to true. This setting reflects the most common (and simplest)
	* strategy for processing policy qualifiers. Applications that want to use
	* a more sophisticated policy must set this flag to false.
	* <p>
	* Note that the PKIX certification path validation algorithm specifies
	* that any policy qualifier in a certificate policies extension that is
	* marked critical must be processed and validated. Otherwise the
	* certification path must be rejected. If the policyQualifiersRejected flag
	* is set to false, it is up to the application to validate all policy
	* qualifiers in this manner in order to be PKIX compliant.
	*
	* @param qualifiersRejected the new value of the PolicyQualifiersRejected
	* flag
	* @see #getPolicyQualifiersRejected
	* @see PolicyQualifierInfo
	*/
	@:overload @:public public function setPolicyQualifiersRejected(qualifiersRejected : Bool) : Void;
	
	/**
	* Gets the PolicyQualifiersRejected flag. If this flag is true,
	* certificates that include policy qualifiers in a certificate policies
	* extension that is marked critical are rejected.
	* If the flag is false, certificates are not rejected on this basis.
	*
	* <p> When a <code>PKIXParameters</code> object is created, this flag is
	* set to true. This setting reflects the most common (and simplest)
	* strategy for processing policy qualifiers. Applications that want to use
	* a more sophisticated policy must set this flag to false.
	*
	* @return the current value of the PolicyQualifiersRejected flag
	* @see #setPolicyQualifiersRejected
	*/
	@:overload @:public public function getPolicyQualifiersRejected() : Bool;
	
	/**
	* Returns the time for which the validity of the certification path
	* should be determined. If <code>null</code>, the current time is used.
	* <p>
	* Note that the <code>Date</code> returned is copied to protect against
	* subsequent modifications.
	*
	* @return the <code>Date</code>, or <code>null</code> if not set
	* @see #setDate
	*/
	@:overload @:public public function getDate() : java.util.Date;
	
	/**
	* Sets the time for which the validity of the certification path
	* should be determined. If <code>null</code>, the current time is used.
	* <p>
	* Note that the <code>Date</code> supplied here is copied to protect
	* against subsequent modifications.
	*
	* @param date the <code>Date</code>, or <code>null</code> for the
	* current time
	* @see #getDate
	*/
	@:overload @:public public function setDate(date : java.util.Date) : Void;
	
	/**
	* Sets a <code>List</code> of additional certification path checkers. If
	* the specified <code>List</code> contains an object that is not a
	* <code>PKIXCertPathChecker</code>, it is ignored.
	* <p>
	* Each <code>PKIXCertPathChecker</code> specified implements
	* additional checks on a certificate. Typically, these are checks to
	* process and verify private extensions contained in certificates.
	* Each <code>PKIXCertPathChecker</code> should be instantiated with any
	* initialization parameters needed to execute the check.
	* <p>
	* This method allows sophisticated applications to extend a PKIX
	* <code>CertPathValidator</code> or <code>CertPathBuilder</code>.
	* Each of the specified <code>PKIXCertPathChecker</code>s will be called,
	* in turn, by a PKIX <code>CertPathValidator</code> or
	* <code>CertPathBuilder</code> for each certificate processed or
	* validated.
	* <p>
	* Regardless of whether these additional <code>PKIXCertPathChecker</code>s
	* are set, a PKIX <code>CertPathValidator</code> or
	* <code>CertPathBuilder</code> must perform all of the required PKIX
	* checks on each certificate. The one exception to this rule is if the
	* RevocationEnabled flag is set to false (see the {@link
	* #setRevocationEnabled setRevocationEnabled} method).
	* <p>
	* Note that the <code>List</code> supplied here is copied and each
	* <code>PKIXCertPathChecker</code> in the list is cloned to protect
	* against subsequent modifications.
	*
	* @param checkers a <code>List</code> of <code>PKIXCertPathChecker</code>s.
	* May be <code>null</code>, in which case no additional checkers will be
	* used.
	* @throws ClassCastException if any of the elements in the list
	* are not of type <code>java.security.cert.PKIXCertPathChecker</code>
	* @see #getCertPathCheckers
	*/
	@:overload @:public public function setCertPathCheckers(checkers : java.util.List<java.security.cert.PKIXCertPathChecker>) : Void;
	
	/**
	* Returns the <code>List</code> of certification path checkers.
	* The returned <code>List</code> is immutable, and each
	* <code>PKIXCertPathChecker</code> in the <code>List</code> is cloned
	* to protect against subsequent modifications.
	*
	* @return an immutable <code>List</code> of
	* <code>PKIXCertPathChecker</code>s (may be empty, but not
	* <code>null</code>)
	* @see #setCertPathCheckers
	*/
	@:overload @:public public function getCertPathCheckers() : java.util.List<java.security.cert.PKIXCertPathChecker>;
	
	/**
	* Adds a <code>PKIXCertPathChecker</code> to the list of certification
	* path checkers. See the {@link #setCertPathCheckers setCertPathCheckers}
	* method for more details.
	* <p>
	* Note that the <code>PKIXCertPathChecker</code> is cloned to protect
	* against subsequent modifications.
	*
	* @param checker a <code>PKIXCertPathChecker</code> to add to the list of
	* checks. If <code>null</code>, the checker is ignored (not added to list).
	*/
	@:overload @:public public function addCertPathChecker(checker : java.security.cert.PKIXCertPathChecker) : Void;
	
	/**
	* Returns the signature provider's name, or <code>null</code>
	* if not set.
	*
	* @return the signature provider's name (or <code>null</code>)
	* @see #setSigProvider
	*/
	@:overload @:public public function getSigProvider() : String;
	
	/**
	* Sets the signature provider's name. The specified provider will be
	* preferred when creating {@link java.security.Signature Signature}
	* objects. If <code>null</code> or not set, the first provider found
	* supporting the algorithm will be used.
	*
	* @param sigProvider the signature provider's name (or <code>null</code>)
	* @see #getSigProvider
	*/
	@:overload @:public public function setSigProvider(sigProvider : String) : Void;
	
	/**
	* Returns the required constraints on the target certificate.
	* The constraints are returned as an instance of <code>CertSelector</code>.
	* If <code>null</code>, no constraints are defined.
	*
	* <p>Note that the <code>CertSelector</code> returned is cloned
	* to protect against subsequent modifications.
	*
	* @return a <code>CertSelector</code> specifying the constraints
	* on the target certificate (or <code>null</code>)
	* @see #setTargetCertConstraints
	*/
	@:overload @:public public function getTargetCertConstraints() : java.security.cert.CertSelector;
	
	/**
	* Sets the required constraints on the target certificate.
	* The constraints are specified as an instance of
	* <code>CertSelector</code>. If <code>null</code>, no constraints are
	* defined.
	*
	* <p>Note that the <code>CertSelector</code> specified is cloned
	* to protect against subsequent modifications.
	*
	* @param selector a <code>CertSelector</code> specifying the constraints
	* on the target certificate (or <code>null</code>)
	* @see #getTargetCertConstraints
	*/
	@:overload @:public public function setTargetCertConstraints(selector : java.security.cert.CertSelector) : Void;
	
	/**
	* Makes a copy of this <code>PKIXParameters</code> object. Changes
	* to the copy will not affect the original and vice versa.
	*
	* @return a copy of this <code>PKIXParameters</code> object
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns a formatted string describing the parameters.
	*
	* @return a formatted string describing the parameters.
	*/
	@:overload @:public public function toString() : String;
	
	
}
