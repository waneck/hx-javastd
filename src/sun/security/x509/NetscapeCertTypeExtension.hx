package sun.security.x509;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Represents Netscape Certificate Type Extension.
* The details are defined
* <a href=http://www.netscape.com/eng/security/comm4-cert-exts.html>
* here </a>.
*
* <p>This extension, if present, defines both the purpose
* (e.g., encipherment, signature, certificate signing) and the application
* (e.g., SSL, S/Mime or Object Signing of the key contained in the
* certificate. This extension has been superseded by IETF PKIX extensions
* but is provided here for compatibility reasons.
*
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class NetscapeCertTypeExtension extends sun.security.x509.Extension implements sun.security.x509.CertAttrSet<String>
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
	
	public static var SSL_CLIENT(default, null) : String;
	
	public static var SSL_SERVER(default, null) : String;
	
	public static var S_MIME(default, null) : String;
	
	public static var OBJECT_SIGNING(default, null) : String;
	
	public static var SSL_CA(default, null) : String;
	
	public static var S_MIME_CA(default, null) : String;
	
	public static var OBJECT_SIGNING_CA(default, null) : String;
	
	/**
	* Object identifier for the Netscape-Cert-Type extension.
	*/
	public static var NetscapeCertType_Id : sun.security.util.ObjectIdentifier;
	
	/**
	* Create a NetscapeCertTypeExtension with the passed bit settings.
	* The criticality is set to true.
	*
	* @param bitString the bits to be set for the extension.
	*/
	@:overload public function new(bitString : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create a NetscapeCertTypeExtension with the passed bit settings.
	* The criticality is set to true.
	*
	* @param bitString the bits to be set for the extension.
	*/
	@:overload public function new(bitString : java.NativeArray<Bool>) : Void;
	
	/**
	* Create the extension from the passed DER encoded value of the same.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Create a default key usage.
	*/
	@:overload public function new() : Void;
	
	/**
	* Set the attribute value.
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Get the attribute value.
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Delete the attribute value.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Returns a printable representation of the NetscapeCertType.
	*/
	@:overload override public function toString() : String;
	
	/**
	* Write the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors.
	*/
	@:overload override public function encode(out : java.io.OutputStream) : Void;
	
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
	* Get a boolean array representing the bits of this extension,
	* as it maps to the KeyUsage extension.
	* @return the bit values of this extension mapped to the bit values
	* of the KeyUsage extension as an array of booleans.
	*/
	@:overload public function getKeyUsageMappedBits() : java.NativeArray<Bool>;
	
	
}
@:native('sun$security$x509$NetscapeCertTypeExtension$MapEntry') @:internal extern class NetscapeCertTypeExtension_MapEntry
{
	
}
