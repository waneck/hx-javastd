package sun.security.x509;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class IssuingDistributionPointExtension extends sun.security.x509.Extension implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Identifier for this attribute, to be used with the
	* get, set, delete methods of Certificate, x509 type.
	*/
	public static var IDENT(default, null) : String;
	
	/**
	* Attribute names.
	*/
	public static var NAME(default, null) : String;
	
	public static var POINT(default, null) : String;
	
	public static var REASONS(default, null) : String;
	
	public static var ONLY_USER_CERTS(default, null) : String;
	
	public static var ONLY_CA_CERTS(default, null) : String;
	
	public static var ONLY_ATTRIBUTE_CERTS(default, null) : String;
	
	public static var INDIRECT_CRL(default, null) : String;
	
	/**
	* Creates a critical IssuingDistributionPointExtension.
	*
	* @param distributionPoint the name of the distribution point, or null for
	*        none.
	* @param revocationReasons the revocation reasons associated with the
	*        distribution point, or null for none.
	* @param hasOnlyUserCerts if <code>true</code> then scope of the CRL
	*        includes only user certificates.
	* @param hasOnlyCACerts if <code>true</code> then scope of the CRL
	*        includes only CA certificates.
	* @param hasOnlyAttributeCerts if <code>true</code> then scope of the CRL
	*        includes only attribute certificates.
	* @param isIndirectCRL if <code>true</code> then the scope of the CRL
	*        includes certificates issued by authorities other than the CRL
	*        issuer. The responsible authority is indicated by a certificate
	*        issuer CRL entry extension.
	* @throws IllegalArgumentException if more than one of
	*        <code>hasOnlyUserCerts</code>, <code>hasOnlyCACerts</code>,
	*        <code>hasOnlyAttributeCerts</code> is set to <code>true</code>.
	* @throws IOException on encoding error.
	*/
	@:overload public function new(distributionPoint : sun.security.x509.DistributionPointName, revocationReasons : sun.security.x509.ReasonFlags, hasOnlyUserCerts : Bool, hasOnlyCACerts : Bool, hasOnlyAttributeCerts : Bool, isIndirectCRL : Bool) : Void;
	
	/**
	* Creates a critical IssuingDistributionPointExtension from its
	* DER-encoding.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value the DER-encoded value. It must be a <code>byte[]</code>.
	* @exception IOException on decoding error.
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Returns the name of this attribute.
	*/
	@:overload public function getName() : String;
	
	/**
	* Encodes the issuing distribution point extension and writes it to the
	* DerOutputStream.
	*
	* @param out the output stream.
	* @exception IOException on encoding error.
	*/
	@:overload override public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Sets the attribute value.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Gets the attribute value.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Deletes the attribute value.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Returns an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload public function getElements() : java.util.Enumeration<String>;
	
	/**
	* Returns the extension as user readable string.
	*/
	@:overload override public function toString() : String;
	
	
}
