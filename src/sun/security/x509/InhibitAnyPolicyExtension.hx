package sun.security.x509;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class InhibitAnyPolicyExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Identifier for this attribute, to be used with the
	* get, set, delete methods of Certificate, x509 type.
	*/
	public static var IDENT(default, null) : String;
	
	/**
	* Object identifier for "any-policy"
	*/
	public static var AnyPolicy_Id : sun.security.util.ObjectIdentifier;
	
	/**
	* Attribute names.
	*/
	public static var NAME(default, null) : String;
	
	public static var SKIP_CERTS(default, null) : String;
	
	/**
	* Default constructor for this object.
	*
	* @param skipCerts specifies the depth of the certification path.
	*                  Use value of -1 to request unlimited depth.
	*/
	@:overload public function new(skipCerts : Int) : Void;
	
	/**
	* Create the extension from the passed DER encoded value of the same.
	*
	* @param critical criticality flag to use.  Must be true for this
	*                 extension.
	* @param value a byte array holding the DER-encoded extension value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Return user readable form of extension.
	*/
	@:overload public function toString() : String;
	
	/**
	* Encode this extension value to the output stream.
	*
	* @param out the DerOutputStream to encode the extension to.
	*/
	@:overload override public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Set the attribute value.
	*
	* @param name name of attribute to set. Must be SKIP_CERTS.
	* @param obj  value to which attribute is to be set.  Must be Integer
	*             type.
	* @throws IOException on error
	*/
	@:overload public function set(name : String, obj : Dynamic) : Void;
	
	/**
	* Get the attribute value.
	*
	* @param name name of attribute to get.  Must be SKIP_CERTS.
	* @returns value of the attribute.  In this case it will be of type
	*          Integer.
	* @throws IOException on error
	*/
	@:overload public function get(name : String) : Dynamic;
	
	/**
	* Delete the attribute value.
	*
	* @param name name of attribute to delete. Must be SKIP_CERTS.
	* @throws IOException on error.  In this case, IOException will always be
	*                     thrown, because the only attribute, SKIP_CERTS, is
	*                     required.
	*/
	@:overload public function delete(name : String) : Void;
	
	/**
	* Return an enumeration of names of attributes existing within this
	* attribute.
	*
	* @returns enumeration of elements
	*/
	@:overload public function getElements() : java.util.Enumeration<String>;
	
	/**
	* Return the name of this attribute.
	*
	* @returns name of attribute.
	*/
	@:overload public function getName() : String;
	
	
}
