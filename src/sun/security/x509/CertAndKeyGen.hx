package sun.security.x509;
/*
* Copyright (c) 1996, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class CertAndKeyGen
{
	/**
	* Creates a CertAndKeyGen object for a particular key type
	* and signature algorithm.
	*
	* @param keyType type of key, e.g. "RSA", "DSA"
	* @param sigAlg name of the signature algorithm, e.g. "MD5WithRSA",
	*          "MD2WithRSA", "SHAwithDSA".
	* @exception NoSuchAlgorithmException on unrecognized algorithms.
	*/
	@:overload public function new(keyType : String, sigAlg : String) : Void;
	
	/**
	* Creates a CertAndKeyGen object for a particular key type,
	* signature algorithm, and provider.
	*
	* @param keyType type of key, e.g. "RSA", "DSA"
	* @param sigAlg name of the signature algorithm, e.g. "MD5WithRSA",
	*          "MD2WithRSA", "SHAwithDSA".
	* @param providerName name of the provider
	* @exception NoSuchAlgorithmException on unrecognized algorithms.
	* @exception NoSuchProviderException on unrecognized providers.
	*/
	@:overload public function new(keyType : String, sigAlg : String, providerName : String) : Void;
	
	/**
	* Sets the source of random numbers used when generating keys.
	* If you do not provide one, a system default facility is used.
	* You may wish to provide your own source of random numbers
	* to get a reproducible sequence of keys and signatures, or
	* because you may be able to take advantage of strong sources
	* of randomness/entropy in your environment.
	*/
	@:overload public function setRandom(generator : java.security.SecureRandom) : Void;
	
	/**
	* Generates a random public/private key pair, with a given key
	* size.  Different algorithms provide different degrees of security
	* for the same key size, because of the "work factor" involved in
	* brute force attacks.  As computers become faster, it becomes
	* easier to perform such attacks.  Small keys are to be avoided.
	*
	* <P>Note that not all values of "keyBits" are valid for all
	* algorithms, and not all public key algorithms are currently
	* supported for use in X.509 certificates.  If the algorithm
	* you specified does not produce X.509 compatible keys, an
	* invalid key exception is thrown.
	*
	* @param keyBits the number of bits in the keys.
	* @exception InvalidKeyException if the environment does not
	*  provide X.509 public keys for this signature algorithm.
	*/
	@:overload public function generate(keyBits : Int) : Void;
	
	/**
	* Returns the public key of the generated key pair if it is of type
	* <code>X509Key</code>, or null if the public key is of a different type.
	*
	* XXX Note: This behaviour is needed for backwards compatibility.
	* What this method really should return is the public key of the
	* generated key pair, regardless of whether or not it is an instance of
	* <code>X509Key</code>. Accordingly, the return type of this method
	* should be <code>PublicKey</code>.
	*/
	@:overload public function getPublicKey() : sun.security.x509.X509Key;
	
	/**
	* Returns the private key of the generated key pair.
	*
	* <P><STRONG><em>Be extremely careful when handling private keys.
	* When private keys are not kept secret, they lose their ability
	* to securely authenticate specific entities ... that is a huge
	* security risk!</em></STRONG>
	*/
	@:overload public function getPrivateKey() : java.security.PrivateKey;
	
	/**
	* Returns a self-signed X.509v3 certificate for the public key.
	* The certificate is immediately valid. No extensions.
	*
	* <P>Such certificates normally are used to identify a "Certificate
	* Authority" (CA).  Accordingly, they will not always be accepted by
	* other parties.  However, such certificates are also useful when
	* you are bootstrapping your security infrastructure, or deploying
	* system prototypes.
	*
	* @param myname X.500 name of the subject (who is also the issuer)
	* @param firstDate the issue time of the certificate
	* @param validity how long the certificate should be valid, in seconds
	* @exception CertificateException on certificate handling errors.
	* @exception InvalidKeyException on key handling errors.
	* @exception SignatureException on signature handling errors.
	* @exception NoSuchAlgorithmException on unrecognized algorithms.
	* @exception NoSuchProviderException on unrecognized providers.
	*/
	@:overload public function getSelfCertificate(myname : sun.security.x509.X500Name, firstDate : java.util.Date, validity : haxe.Int64) : java.security.cert.X509Certificate;
	
	@:overload public function getSelfCertificate(myname : sun.security.x509.X500Name, validity : haxe.Int64) : java.security.cert.X509Certificate;
	
	/**
	* Returns a PKCS #10 certificate request.  The caller uses either
	* <code>PKCS10.print</code> or <code>PKCS10.toByteArray</code>
	* operations on the result, to get the request in an appropriate
	* transmission format.
	*
	* <P>PKCS #10 certificate requests are sent, along with some proof
	* of identity, to Certificate Authorities (CAs) which then issue
	* X.509 public key certificates.
	*
	* @param myname X.500 name of the subject
	* @exception InvalidKeyException on key handling errors.
	* @exception SignatureException on signature handling errors.
	*/
	@:overload public function getCertRequest(myname : sun.security.x509.X500Name) : sun.security.pkcs.PKCS10;
	
	
}
