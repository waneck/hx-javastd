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
* Represent the Key Usage Extension.
*
* <p>This extension, if present, defines the purpose (e.g., encipherment,
* signature, certificate signing) of the key contained in the certificate.
* The usage restriction might be employed when a multipurpose key is to be
* restricted (e.g., when an RSA key should be used only for signing or only
* for key encipherment).
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class KeyUsageExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
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
	
	@:public @:static @:final public static var DIGITAL_SIGNATURE(default, null) : String;
	
	@:public @:static @:final public static var NON_REPUDIATION(default, null) : String;
	
	@:public @:static @:final public static var KEY_ENCIPHERMENT(default, null) : String;
	
	@:public @:static @:final public static var DATA_ENCIPHERMENT(default, null) : String;
	
	@:public @:static @:final public static var KEY_AGREEMENT(default, null) : String;
	
	@:public @:static @:final public static var KEY_CERTSIGN(default, null) : String;
	
	@:public @:static @:final public static var CRL_SIGN(default, null) : String;
	
	@:public @:static @:final public static var ENCIPHER_ONLY(default, null) : String;
	
	@:public @:static @:final public static var DECIPHER_ONLY(default, null) : String;
	
	/**
	* Create a KeyUsageExtension with the passed bit settings. The criticality
	* is set to true.
	*
	* @param bitString the bits to be set for the extension.
	*/
	@:overload @:public public function new(bitString : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create a KeyUsageExtension with the passed bit settings. The criticality
	* is set to true.
	*
	* @param bitString the bits to be set for the extension.
	*/
	@:overload @:public public function new(bitString : java.NativeArray<Bool>) : Void;
	
	/**
	* Create a KeyUsageExtension with the passed bit settings. The criticality
	* is set to true.
	*
	* @param bitString the bits to be set for the extension.
	*/
	@:overload @:public public function new(bitString : sun.security.util.BitArray) : Void;
	
	/**
	* Create the extension from the passed DER encoded value of the same.
	* The DER encoded value may be wrapped in an OCTET STRING.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value (possibly
	* wrapped in an OCTET STRING).
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload @:public public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Create a default key usage.
	*/
	@:overload @:public public function new() : Void;
	
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
	* Returns a printable representation of the KeyUsage.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Write the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public override public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload @:public public function getElements() : java.util.Enumeration<String>;
	
	@:overload @:public public function getBits() : java.NativeArray<Bool>;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload @:public public function getName() : String;
	
	
}
