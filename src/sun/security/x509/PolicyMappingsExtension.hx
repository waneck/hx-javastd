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
* Represent the Policy Mappings Extension.
*
* This extension, if present, identifies the certificate policies considered
* identical between the issuing and the subject CA.
* <p>Extensions are addiitonal attributes which can be inserted in a X509
* v3 certificate. For example a "Driving License Certificate" could have
* the driving license number as a extension.
*
* <p>Extensions are represented as a sequence of the extension identifier
* (Object Identifier), a boolean flag stating whether the extension is to
* be treated as being critical and the extension value itself (this is again
* a DER encoding of the extension value).
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class PolicyMappingsExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
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
	
	@:public @:static @:final public static var MAP(default, null) : String;
	
	/**
	* Create a PolicyMappings with the List of CertificatePolicyMap.
	*
	* @param maps the List of CertificatePolicyMap.
	*/
	@:overload @:public public function new(map : java.util.List<sun.security.x509.CertificatePolicyMap>) : Void;
	
	/**
	* Create a default PolicyMappingsExtension.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create the extension from the passed DER encoded value.
	*
	* @params critical true if the extension is to be treated as critical.
	* @params value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload @:public public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Returns a printable representation of the policy map.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Write the extension to the OutputStream.
	*
	* @param out the OutputStream to write the extension to.
	* @exception IOException on encoding errors.
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
