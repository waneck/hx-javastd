package sun.security.x509;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
* This class represents the Authority Key Identifier Extension.
*
* <p>The authority key identifier extension provides a means of
* identifying the particular public key used to sign a certificate.
* This extension would be used where an issuer has multiple signing
* keys (either due to multiple concurrent key pairs or due to
* changeover).
* <p>
* The ASN.1 syntax for this is:
* <pre>
* AuthorityKeyIdentifier ::= SEQUENCE {
*    keyIdentifier             [0] KeyIdentifier           OPTIONAL,
*    authorityCertIssuer       [1] GeneralNames            OPTIONAL,
*    authorityCertSerialNumber [2] CertificateSerialNumber OPTIONAL
* }
* KeyIdentifier ::= OCTET STRING
* </pre>
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class AuthorityKeyIdentifierExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Identifier for this attribute, to be used with the
	* get, set, delete methods of Certificate, x509 type.
	*/
	@:public @:static @:final public static var IDENT(default, null) : String;
	
	/**
	* Attribute names.
	*/
	@:public @:static @:final public static var NAME(default, null) : String;
	
	@:public @:static @:final public static var KEY_ID(default, null) : String;
	
	@:public @:static @:final public static var AUTH_NAME(default, null) : String;
	
	@:public @:static @:final public static var SERIAL_NUMBER(default, null) : String;
	
	/**
	* The default constructor for this extension.  Null parameters make
	* the element optional (not present).
	*
	* @param id the KeyIdentifier associated with this extension.
	* @param names the GeneralNames associated with this extension
	* @param serialNum the CertificateSerialNumber associated with
	*         this extension.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(kid : sun.security.x509.KeyIdentifier, name : sun.security.x509.GeneralNames, sn : sun.security.x509.SerialNumber) : Void;
	
	/**
	* Create the extension from the passed DER encoded value of the same.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload @:public public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Return the object as a string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Write the extension to the OutputStream.
	*
	* @param out the OutputStream to write the extension to.
	* @exception IOException on error.
	*/
	@:overload @:public override public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Set the attribute value.
	*/
	@:overload @:public public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Get the attribute value.
	*/
	@:overload @:public public function get(name : String) : Dynamic;
	
	/**
	* Delete the attribute value.
	*/
	@:overload @:public public function delete(name : String) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload @:public public function getElements() : java.util.Enumeration<String>;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload @:public public function getName() : String;
	
	
}
