package sun.security.x509;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CertificateIssuerExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Attribute names.
	*/
	public static var NAME(default, null) : String;
	
	public static var ISSUER(default, null) : String;
	
	/**
	* Create a CertificateIssuerExtension containing the specified issuer name.
	* Criticality is automatically set to true.
	*
	* @param issuer the certificate issuer
	* @throws IOException on error
	*/
	@:overload public function new(issuer : sun.security.x509.GeneralNames) : Void;
	
	/**
	* Create a CertificateIssuerExtension from the specified DER encoded
	* value of the same.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value
	* @throws ClassCastException if value is not an array of bytes
	* @throws IOException on error
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Set the attribute value.
	*
	* @throws IOException on error
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Gets the attribute value.
	*
	* @throws IOException on error
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Deletes the attribute value.
	*
	* @throws IOException on error
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Returns a printable representation of the certificate issuer.
	*/
	@:overload public function toString() : String;
	
	/**
	* Write the extension to the OutputStream.
	*
	* @param out the OutputStream to write the extension to
	* @exception IOException on encoding errors
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
	
	
}
