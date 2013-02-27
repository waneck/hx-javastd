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
* This class defines the X509Key attribute for the Certificate.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see CertAttrSet
*/
extern class CertificateX509Key implements sun.security.x509.CertAttrSet<String>
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
	
	public static var KEY(default, null) : String;
	
	/**
	* Default constructor for the certificate attribute.
	*
	* @param key the X509Key
	*/
	@:overload public function new(key : java.security.PublicKey) : Void;
	
	/**
	* Create the object, decoding the values from the passed DER stream.
	*
	* @param in the DerInputStream to read the X509Key from.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Create the object, decoding the values from the passed stream.
	*
	* @param in the InputStream to read the X509Key from.
	* @exception IOException on decoding errors.
	*/
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Return the key as printable string.
	*/
	@:overload public function toString() : String;
	
	/**
	* Encode the key in DER form to the stream.
	*
	* @param out the OutputStream to marshal the contents to.
	* @exception IOException on errors.
	*/
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
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
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*/
	@:overload public function getElements() : java.util.Enumeration<String>;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload public function getName() : String;
	
	
}
