package java.security;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface Certificate
{
	/**
	* Returns the guarantor of the certificate, that is, the principal
	* guaranteeing that the public key associated with this certificate
	* is that of the principal associated with this certificate. For X.509
	* certificates, the guarantor will typically be a Certificate Authority
	* (such as the United States Postal Service or Verisign, Inc.).
	*
	* @return the guarantor which guaranteed the principal-key
	* binding.
	*/
	@:overload @:abstract public function getGuarantor() : java.security.Principal;
	
	/**
	* Returns the principal of the principal-key pair being guaranteed by
	* the guarantor.
	*
	* @return the principal to which this certificate is bound.
	*/
	@:overload @:abstract public function getPrincipal() : java.security.Principal;
	
	/**
	* Returns the key of the principal-key pair being guaranteed by
	* the guarantor.
	*
	* @return the public key that this certificate certifies belongs
	* to a particular principal.
	*/
	@:overload @:abstract public function getPublicKey() : java.security.PublicKey;
	
	/**
	* Encodes the certificate to an output stream in a format that can
	* be decoded by the <code>decode</code> method.
	*
	* @param stream the output stream to which to encode the
	* certificate.
	*
	* @exception KeyException if the certificate is not
	* properly initialized, or data is missing, etc.
	*
	* @exception IOException if a stream exception occurs while
	* trying to output the encoded certificate to the output stream.
	*
	* @see #decode
	* @see #getFormat
	*/
	@:overload @:abstract public function encode(stream : java.io.OutputStream) : Void;
	
	/**
	* Decodes a certificate from an input stream. The format should be
	* that returned by <code>getFormat</code> and produced by
	* <code>encode</code>.
	*
	* @param stream the input stream from which to fetch the data
	* being decoded.
	*
	* @exception KeyException if the certificate is not properly initialized,
	* or data is missing, etc.
	*
	* @exception IOException if an exception occurs while trying to input
	* the encoded certificate from the input stream.
	*
	* @see #encode
	* @see #getFormat
	*/
	@:overload @:abstract public function decode(stream : java.io.InputStream) : Void;
	
	/**
	* Returns the name of the coding format. This is used as a hint to find
	* an appropriate parser. It could be "X.509", "PGP", etc. This is
	* the format produced and understood by the <code>encode</code>
	* and <code>decode</code> methods.
	*
	* @return the name of the coding format.
	*/
	@:overload @:abstract public function getFormat() : String;
	
	/**
	* Returns a string that represents the contents of the certificate.
	*
	* @param detailed whether or not to give detailed information
	* about the certificate
	*
	* @return a string representing the contents of the certificate
	*/
	@:overload public function toString(detailed : Bool) : String;
	
	
}
