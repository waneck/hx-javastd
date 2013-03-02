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
/**
* This class defines the Private Key Usage Extension.
*
* <p>The Private Key Usage Period extension allows the certificate issuer
* to specify a different validity period for the private key than the
* certificate. This extension is intended for use with digital
* signature keys.  This extension consists of two optional components
* notBefore and notAfter.  The private key associated with the
* certificate should not be used to sign objects before or after the
* times specified by the two components, respectively.
*
* <pre>
* PrivateKeyUsagePeriod ::= SEQUENCE {
*     notBefore  [0]  GeneralizedTime OPTIONAL,
*     notAfter   [1]  GeneralizedTime OPTIONAL }
* </pre>
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class PrivateKeyUsageExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Identifier for this attribute, to be used with the
	* get, set, delete methods of Certificate, x509 type.
	*/
	public static var IDENT(default, null) : String;
	
	/**
	* Sub attributes name for this CertAttrSet.
	*/
	public static var NAME(default, null) : String;
	
	public static var NOT_BEFORE(default, null) : String;
	
	public static var NOT_AFTER(default, null) : String;
	
	/**
	* The default constructor for PrivateKeyUsageExtension.
	*
	* @param notBefore the date/time before which the private key
	*         should not be used.
	* @param notAfter the date/time after which the private key
	*         should not be used.
	*/
	@:overload public function new(notBefore : java.util.Date, notAfter : java.util.Date) : Void;
	
	/**
	* Create the extension from the passed DER encoded value.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception CertificateException on certificate parsing errors.
	* @exception IOException on error.
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Return the printable string.
	*/
	@:overload public function toString() : String;
	
	/**
	* Verify that that the current time is within the validity period.
	*
	* @exception CertificateExpiredException if the certificate has expired.
	* @exception CertificateNotYetValidException if the certificate is not
	* yet valid.
	*/
	@:overload public function valid() : Void;
	
	/**
	* Verify that that the passed time is within the validity period.
	*
	* @exception CertificateExpiredException if the certificate has expired
	* with respect to the <code>Date</code> supplied.
	* @exception CertificateNotYetValidException if the certificate is not
	* yet valid with respect to the <code>Date</code> supplied.
	*
	*/
	@:overload public function valid(now : java.util.Date) : Void;
	
	/**
	* Write the extension to the OutputStream.
	*
	* @param out the OutputStream to write the extension to.
	* @exception IOException on encoding errors.
	*/
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Set the attribute value.
	* @exception CertificateException on attribute handling errors.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Get the attribute value.
	* @exception CertificateException on attribute handling errors.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Delete the attribute value.
	* @exception CertificateException on attribute handling errors.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload public function getElements() : java.util.Enumeration<String>;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload public function getName() : String;
	
	
}
