package javax.security.cert;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Certificate
{
	/**
	* Compares this certificate for equality with the specified
	* object. If the <code>other</code> object is an
	* <code>instanceof</code> <code>Certificate</code>, then
	* its encoded form is retrieved and compared with the
	* encoded form of this certificate.
	*
	* @param other the object to test for equality with this certificate.
	* @return true if the encoded forms of the two certificates
	*         match, false otherwise.
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns a hashcode value for this certificate from its
	* encoded form.
	*
	* @return the hashcode value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns the encoded form of this certificate. It is
	* assumed that each certificate type would have only a single
	* form of encoding; for example, X.509 certificates would
	* be encoded as ASN.1 DER.
	*
	* @return encoded form of this certificate
	* @exception CertificateEncodingException on internal certificate
	*            encoding failure
	*/
	@:overload @:abstract public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Verifies that this certificate was signed using the
	* private key that corresponds to the specified public key.
	*
	* @param key the PublicKey used to carry out the verification.
	*
	* @exception NoSuchAlgorithmException on unsupported signature
	* algorithms.
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchProviderException if there's no default provider.
	* @exception SignatureException on signature errors.
	* @exception CertificateException on encoding errors.
	*/
	@:overload @:abstract public function verify(key : java.security.PublicKey) : Void;
	
	/**
	* Verifies that this certificate was signed using the
	* private key that corresponds to the specified public key.
	* This method uses the signature verification engine
	* supplied by the specified provider.
	*
	* @param key the PublicKey used to carry out the verification.
	* @param sigProvider the name of the signature provider.
	* @exception NoSuchAlgorithmException on unsupported signature algorithms.
	* @exception InvalidKeyException on incorrect key.
	* @exception NoSuchProviderException on incorrect provider.
	* @exception SignatureException on signature errors.
	* @exception CertificateException on encoding errors.
	*/
	@:overload @:abstract public function verify(key : java.security.PublicKey, sigProvider : String) : Void;
	
	/**
	* Returns a string representation of this certificate.
	*
	* @return a string representation of this certificate.
	*/
	@:overload @:abstract public function toString() : String;
	
	/**
	* Gets the public key from this certificate.
	*
	* @return the public key.
	*/
	@:overload @:abstract public function getPublicKey() : java.security.PublicKey;
	
	
}
