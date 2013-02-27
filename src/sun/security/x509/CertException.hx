package sun.security.x509;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
/**
* CertException indicates one of a variety of certificate problems.
*
* @deprecated use one of Exceptions defined in the java.security.cert
* package.
*
* @see java.security.Certificate
*
*
* @author David Brownell
*/
extern class CertException extends java.lang.SecurityException
{
	/** Indicates that the signature in the certificate is not valid. */
	public static var verf_INVALID_SIG(default, null) : Int;
	
	/** Indicates that the certificate was revoked, and so is invalid. */
	public static var verf_INVALID_REVOKED(default, null) : Int;
	
	/** Indicates that the certificate is not yet valid. */
	public static var verf_INVALID_NOTBEFORE(default, null) : Int;
	
	/** Indicates that the certificate has expired and so is not valid. */
	public static var verf_INVALID_EXPIRED(default, null) : Int;
	
	/** Indicates that a certificate authority in the certification
	* chain is not trusted. */
	public static var verf_CA_UNTRUSTED(default, null) : Int;
	
	/** Indicates that the certification chain is too long. */
	public static var verf_CHAIN_LENGTH(default, null) : Int;
	
	/** Indicates an error parsing the ASN.1/DER encoding of the certificate. */
	public static var verf_PARSE_ERROR(default, null) : Int;
	
	/** Indicates an error constructing a certificate or certificate chain. */
	public static var err_CONSTRUCTION(default, null) : Int;
	
	/** Indicates a problem with the public key */
	public static var err_INVALID_PUBLIC_KEY(default, null) : Int;
	
	/** Indicates a problem with the certificate version */
	public static var err_INVALID_VERSION(default, null) : Int;
	
	/** Indicates a problem with the certificate format */
	public static var err_INVALID_FORMAT(default, null) : Int;
	
	/** Indicates a problem with the certificate encoding */
	public static var err_ENCODING(default, null) : Int;
	
	/**
	* Constructs a certificate exception using an error code
	* (<code>verf_*</code>) and a string describing the context
	* of the error.
	*/
	@:overload public function new(code : Int, moredata : String) : Void;
	
	/**
	* Constructs a certificate exception using just an error code,
	* without a string describing the context.
	*/
	@:overload public function new(code : Int) : Void;
	
	/**
	* Returns the error code with which the exception was created.
	*/
	@:overload public function getVerfCode() : Int;
	
	/**
	* Returns a string describing the context in which the exception
	* was reported.
	*/
	@:overload public function getMoreData() : String;
	
	/**
	* Return a string corresponding to the error code used to create
	* this exception.
	*/
	@:overload public function getVerfDescription() : String;
	
	/**
	* Returns a string describing the certificate exception.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Returns a string describing the certificate exception.
	*/
	@:overload override public function getMessage() : String;
	
	
}
