package sun.security.x509;
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
extern class X509CertInfo implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Identifier for this attribute, to be used with the
	* get, set, delete methods of Certificate, x509 type.
	*/
	public static var IDENT(default, null) : String;
	
	public static var NAME(default, null) : String;
	
	public static var VERSION(default, null) : String;
	
	public static var SERIAL_NUMBER(default, null) : String;
	
	public static var ALGORITHM_ID(default, null) : String;
	
	public static var ISSUER(default, null) : String;
	
	public static var VALIDITY(default, null) : String;
	
	public static var SUBJECT(default, null) : String;
	
	public static var KEY(default, null) : String;
	
	public static var ISSUER_ID(default, null) : String;
	
	public static var SUBJECT_ID(default, null) : String;
	
	public static var EXTENSIONS(default, null) : String;
	
	private var version : sun.security.x509.CertificateVersion;
	
	private var serialNum : sun.security.x509.CertificateSerialNumber;
	
	private var algId : sun.security.x509.CertificateAlgorithmId;
	
	private var issuer : sun.security.x509.CertificateIssuerName;
	
	private var interval : sun.security.x509.CertificateValidity;
	
	private var subject : sun.security.x509.CertificateSubjectName;
	
	private var pubKey : sun.security.x509.CertificateX509Key;
	
	private var issuerUniqueId : sun.security.x509.CertificateIssuerUniqueIdentity;
	
	private var subjectUniqueId : sun.security.x509.CertificateSubjectUniqueIdentity;
	
	private var extensions : sun.security.x509.CertificateExtensions;
	
	/**
	* Construct an uninitialized X509CertInfo on which <a href="#decode">
	* decode</a> must later be called (or which may be deserialized).
	*/
	@:overload public function new() : Void;
	
	/**
	* Unmarshals a certificate from its encoded form, parsing the
	* encoded bytes.  This form of constructor is used by agents which
	* need to examine and use certificate contents.  That is, this is
	* one of the more commonly used constructors.  Note that the buffer
	* must include only a certificate, and no "garbage" may be left at
	* the end.  If you need to ignore data at the end of a certificate,
	* use another constructor.
	*
	* @param cert the encoded bytes, with no trailing data.
	* @exception CertificateParsingException on parsing errors.
	*/
	@:overload public function new(cert : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Unmarshal a certificate from its encoded form, parsing a DER value.
	* This form of constructor is used by agents which need to examine
	* and use certificate contents.
	*
	* @param derVal the der value containing the encoded cert.
	* @exception CertificateParsingException on parsing errors.
	*/
	@:overload public function new(derVal : sun.security.util.DerValue) : Void;
	
	/**
	* Appends the certificate to an output stream.
	*
	* @param out an output stream to which the certificate is appended.
	* @exception CertificateException on encoding errors.
	* @exception IOException on other errors.
	*/
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload public function getElements() : java.util.Enumeration<String>;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns the encoded certificate info.
	*
	* @exception CertificateEncodingException on encoding information errors.
	*/
	@:overload public function getEncodedInfo() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Compares two X509CertInfo objects.  This is false if the
	* certificates are not both X.509 certs, otherwise it
	* compares them as binary data.
	*
	* @param other the object being compared with this one
	* @return true iff the certificates are equivalent
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	/**
	* Compares two certificates, returning false if any data
	* differs between the two.
	*
	* @param other the object being compared with this one
	* @return true iff the certificates are equivalent
	*/
	@:overload public function equals(other : X509CertInfo) : Bool;
	
	/**
	* Calculates a hash code value for the object.  Objects
	* which are equal will also have the same hashcode.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a printable representation of the certificate.
	*/
	@:overload public function toString() : String;
	
	/**
	* Set the certificate attribute.
	*
	* @params name the name of the Certificate attribute.
	* @params val the value of the Certificate attribute.
	* @exception CertificateException on invalid attributes.
	* @exception IOException on other errors.
	*/
	@:overload public function set(name : String, val : Dynamic) : Void;
	
	/**
	* Delete the certificate attribute.
	*
	* @params name the name of the Certificate attribute.
	* @exception CertificateException on invalid attributes.
	* @exception IOException on other errors.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Get the certificate attribute.
	*
	* @params name the name of the Certificate attribute.
	*
	* @exception CertificateException on invalid attributes.
	* @exception IOException on other errors.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	
}
