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
* This class represents the Basic Constraints Extension.
*
* <p>The basic constraints extension identifies whether the subject of the
* certificate is a CA and how deep a certification path may exist
* through that CA.
*
* <pre>
* The ASN.1 syntax for this extension is:
* BasicConstraints ::= SEQUENCE {
*     cA                BOOLEAN DEFAULT FALSE,
*     pathLenConstraint INTEGER (0..MAX) OPTIONAL
* }
* </pre>
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see CertAttrSet
* @see Extension
*/
extern class BasicConstraintsExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
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
	
	@:public @:static @:final public static var IS_CA(default, null) : String;
	
	@:public @:static @:final public static var PATH_LEN(default, null) : String;
	
	/**
	* Default constructor for this object. The extension is marked
	* critical if the ca flag is true, false otherwise.
	*
	* @param ca true, if the subject of the Certificate is a CA.
	* @param len specifies the depth of the certification path.
	*/
	@:overload @:public public function new(ca : Bool, len : Int) : Void;
	
	/**
	* Constructor for this object with specified criticality.
	*
	* @param critical true, if the extension should be marked critical
	* @param ca true, if the subject of the Certificate is a CA.
	* @param len specifies the depth of the certification path.
	*/
	@:overload @:public public function new(critical : Null<Bool>, ca : Bool, len : Int) : Void;
	
	/**
	* Create the extension from the passed DER encoded value of the same.
	*
	* @param critical flag indicating if extension is critical or not
	* @param value an array containing the DER encoded bytes of the extension.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload @:public public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Return user readable form of extension.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Encode this extension value to the output stream.
	*
	* @param out the DerOutputStream to encode the extension to.
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
