package sun.security.x509;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
* Represent the OCSP NoCheck Extension from RFC2560.
* <p>
* A CA may specify that an OCSP client can trust a responder for the
* lifetime of the responder's certificate. The CA does so by including
* the extension id-pkix-ocsp-nocheck. This SHOULD be a non-critical
* extension. The value of the extension should be NULL. CAs issuing
* such a certificate should realized that a compromise of the
* responder's key, is as serious as the compromise of a CA key used to
* sign CRLs, at least for the validity period of this certificate. CA's
* may choose to issue this type of certificate with a very short
* lifetime and renew it frequently.
* <pre>
* id-pkix-ocsp-nocheck OBJECT IDENTIFIER ::= { id-pkix-ocsp 5 }
* </pre>
*
* @author Xuelei Fan
* @see Extension
* @see CertAttrSet
*/
extern class OCSPNoCheckExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
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
	
	/**
	* Create a OCSPNoCheckExtension
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create the extension from the passed DER encoded value.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
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
