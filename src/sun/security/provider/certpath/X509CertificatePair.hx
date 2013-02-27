package sun.security.provider.certpath;
/*
* Copyright (c) 2000, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class X509CertificatePair
{
	/**
	* Creates an empty instance of X509CertificatePair.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates an instance of X509CertificatePair. At least one of
	* the pair must be non-null.
	*
	* @param forward The forward component of the certificate pair
	*          which represents a certificate issued to this CA by other CAs.
	* @param reverse The reverse component of the certificate pair
	*          which represents a certificate issued by this CA to other CAs.
	* @throws CertificateException If an exception occurs.
	*/
	@:overload public function new(forward : java.security.cert.X509Certificate, reverse : java.security.cert.X509Certificate) : Void;
	
	/**
	* Clear the cache for debugging.
	*/
	@:overload @:synchronized public static function clearCache() : Void;
	
	/**
	* Create a X509CertificatePair from its encoding. Uses cache lookup
	* if possible.
	*/
	@:overload @:synchronized public static function generateCertificatePair(encoded : java.NativeArray<java.StdTypes.Int8>) : X509CertificatePair;
	
	/**
	* Sets the forward component of the certificate pair.
	*/
	@:overload public function setForward(cert : java.security.cert.X509Certificate) : Void;
	
	/**
	* Sets the reverse component of the certificate pair.
	*/
	@:overload public function setReverse(cert : java.security.cert.X509Certificate) : Void;
	
	/**
	* Returns the forward component of the certificate pair.
	*
	* @return The forward certificate, or null if not set.
	*/
	@:overload public function getForward() : java.security.cert.X509Certificate;
	
	/**
	* Returns the reverse component of the certificate pair.
	*
	* @return The reverse certificate, or null if not set.
	*/
	@:overload public function getReverse() : java.security.cert.X509Certificate;
	
	/**
	* Return the DER encoded form of the certificate pair.
	*
	* @return The encoded form of the certificate pair.
	* @throws CerticateEncodingException If an encoding exception occurs.
	*/
	@:overload public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Return a printable representation of the certificate pair.
	*
	* @return A String describing the contents of the pair.
	*/
	@:overload public function toString() : String;
	
	
}
