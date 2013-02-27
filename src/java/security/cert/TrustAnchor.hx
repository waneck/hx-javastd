package java.security.cert;
/*
* Copyright (c) 2001, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class TrustAnchor
{
	/**
	* Creates an instance of <code>TrustAnchor</code> with the specified
	* <code>X509Certificate</code> and optional name constraints, which
	* are intended to be used as additional constraints when validating
	* an X.509 certification path.
	* <p>
	* The name constraints are specified as a byte array. This byte array
	* should contain the DER encoded form of the name constraints, as they
	* would appear in the NameConstraints structure defined in
	* <a href="http://www.ietf.org/rfc/rfc3280">RFC 3280</a>
	* and X.509. The ASN.1 definition of this structure appears below.
	*
	* <pre><code>
	*  NameConstraints ::= SEQUENCE {
	*       permittedSubtrees       [0]     GeneralSubtrees OPTIONAL,
	*       excludedSubtrees        [1]     GeneralSubtrees OPTIONAL }
	*
	*  GeneralSubtrees ::= SEQUENCE SIZE (1..MAX) OF GeneralSubtree
	*
	*  GeneralSubtree ::= SEQUENCE {
	*       base                    GeneralName,
	*       minimum         [0]     BaseDistance DEFAULT 0,
	*       maximum         [1]     BaseDistance OPTIONAL }
	*
	*  BaseDistance ::= INTEGER (0..MAX)
	*
	*  GeneralName ::= CHOICE {
	*       otherName                       [0]     OtherName,
	*       rfc822Name                      [1]     IA5String,
	*       dNSName                         [2]     IA5String,
	*       x400Address                     [3]     ORAddress,
	*       directoryName                   [4]     Name,
	*       ediPartyName                    [5]     EDIPartyName,
	*       uniformResourceIdentifier       [6]     IA5String,
	*       iPAddress                       [7]     OCTET STRING,
	*       registeredID                    [8]     OBJECT IDENTIFIER}
	* </code></pre>
	* <p>
	* Note that the name constraints byte array supplied is cloned to protect
	* against subsequent modifications.
	*
	* @param trustedCert a trusted <code>X509Certificate</code>
	* @param nameConstraints a byte array containing the ASN.1 DER encoding of
	* a NameConstraints extension to be used for checking name constraints.
	* Only the value of the extension is included, not the OID or criticality
	* flag. Specify <code>null</code> to omit the parameter.
	* @throws IllegalArgumentException if the name constraints cannot be
	* decoded
	* @throws NullPointerException if the specified
	* <code>X509Certificate</code> is <code>null</code>
	*/
	@:overload public function new(trustedCert : java.security.cert.X509Certificate, nameConstraints : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Creates an instance of <code>TrustAnchor</code> where the
	* most-trusted CA is specified as an X500Principal and public key.
	* Name constraints are an optional parameter, and are intended to be used
	* as additional constraints when validating an X.509 certification path.
	* <p>
	* The name constraints are specified as a byte array. This byte array
	* contains the DER encoded form of the name constraints, as they
	* would appear in the NameConstraints structure defined in RFC 3280
	* and X.509. The ASN.1 notation for this structure is supplied in the
	* documentation for
	* {@link #TrustAnchor(X509Certificate, byte[])
	* TrustAnchor(X509Certificate trustedCert, byte[] nameConstraints) }.
	* <p>
	* Note that the name constraints byte array supplied here is cloned to
	* protect against subsequent modifications.
	*
	* @param caPrincipal the name of the most-trusted CA as X500Principal
	* @param pubKey the public key of the most-trusted CA
	* @param nameConstraints a byte array containing the ASN.1 DER encoding of
	* a NameConstraints extension to be used for checking name constraints.
	* Only the value of the extension is included, not the OID or criticality
	* flag. Specify <code>null</code> to omit the parameter.
	* @throws NullPointerException if the specified <code>caPrincipal</code> or
	* <code>pubKey</code> parameter is <code>null</code>
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(caPrincipal : javax.security.auth.x500.X500Principal, pubKey : java.security.PublicKey, nameConstraints : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Creates an instance of <code>TrustAnchor</code> where the
	* most-trusted CA is specified as a distinguished name and public key.
	* Name constraints are an optional parameter, and are intended to be used
	* as additional constraints when validating an X.509 certification path.
	* <p>
	* The name constraints are specified as a byte array. This byte array
	* contains the DER encoded form of the name constraints, as they
	* would appear in the NameConstraints structure defined in RFC 3280
	* and X.509. The ASN.1 notation for this structure is supplied in the
	* documentation for
	* {@link #TrustAnchor(X509Certificate, byte[])
	* TrustAnchor(X509Certificate trustedCert, byte[] nameConstraints) }.
	* <p>
	* Note that the name constraints byte array supplied here is cloned to
	* protect against subsequent modifications.
	*
	* @param caName the X.500 distinguished name of the most-trusted CA in
	* <a href="http://www.ietf.org/rfc/rfc2253.txt">RFC 2253</a>
	* <code>String</code> format
	* @param pubKey the public key of the most-trusted CA
	* @param nameConstraints a byte array containing the ASN.1 DER encoding of
	* a NameConstraints extension to be used for checking name constraints.
	* Only the value of the extension is included, not the OID or criticality
	* flag. Specify <code>null</code> to omit the parameter.
	* @throws IllegalArgumentException if the specified <code>
	* caName</code> parameter is empty <code>(caName.length() == 0)</code>
	* or incorrectly formatted or the name constraints cannot be decoded
	* @throws NullPointerException if the specified <code>caName</code> or
	* <code>pubKey</code> parameter is <code>null</code>
	*/
	@:overload public function new(caName : String, pubKey : java.security.PublicKey, nameConstraints : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the most-trusted CA certificate.
	*
	* @return a trusted <code>X509Certificate</code> or <code>null</code>
	* if the trust anchor was not specified as a trusted certificate
	*/
	@:overload @:final public function getTrustedCert() : java.security.cert.X509Certificate;
	
	/**
	* Returns the name of the most-trusted CA as an X500Principal.
	*
	* @return the X.500 distinguished name of the most-trusted CA, or
	* <code>null</code> if the trust anchor was not specified as a trusted
	* public key and name or X500Principal pair
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function getCA() : javax.security.auth.x500.X500Principal;
	
	/**
	* Returns the name of the most-trusted CA in RFC 2253 <code>String</code>
	* format.
	*
	* @return the X.500 distinguished name of the most-trusted CA, or
	* <code>null</code> if the trust anchor was not specified as a trusted
	* public key and name or X500Principal pair
	*/
	@:overload @:final public function getCAName() : String;
	
	/**
	* Returns the public key of the most-trusted CA.
	*
	* @return the public key of the most-trusted CA, or <code>null</code>
	* if the trust anchor was not specified as a trusted public key and name
	* or X500Principal pair
	*/
	@:overload @:final public function getCAPublicKey() : java.security.PublicKey;
	
	/**
	* Returns the name constraints parameter. The specified name constraints
	* are associated with this trust anchor and are intended to be used
	* as additional constraints when validating an X.509 certification path.
	* <p>
	* The name constraints are returned as a byte array. This byte array
	* contains the DER encoded form of the name constraints, as they
	* would appear in the NameConstraints structure defined in RFC 3280
	* and X.509. The ASN.1 notation for this structure is supplied in the
	* documentation for
	* {@link #TrustAnchor(X509Certificate, byte[])
	* TrustAnchor(X509Certificate trustedCert, byte[] nameConstraints) }.
	* <p>
	* Note that the byte array returned is cloned to protect against
	* subsequent modifications.
	*
	* @return a byte array containing the ASN.1 DER encoding of
	*         a NameConstraints extension used for checking name constraints,
	*         or <code>null</code> if not set.
	*/
	@:overload @:final public function getNameConstraints() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a formatted string describing the <code>TrustAnchor</code>.
	*
	* @return a formatted string describing the <code>TrustAnchor</code>
	*/
	@:overload public function toString() : String;
	
	
}
