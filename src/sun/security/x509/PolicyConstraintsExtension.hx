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
* This class defines the certificate extension which specifies the
* Policy constraints.
* <p>
* The policy constraints extension can be used in certificates issued
* to CAs. The policy constraints extension constrains path validation
* in two ways. It can be used to prohibit policy mapping or require
* that each certificate in a path contain an acceptable policy
* identifier.<p>
* The ASN.1 syntax for this is (IMPLICIT tagging is defined in the
* module definition):
* <pre>
* PolicyConstraints ::= SEQUENCE {
*     requireExplicitPolicy [0] SkipCerts OPTIONAL,
*     inhibitPolicyMapping  [1] SkipCerts OPTIONAL
* }
* SkipCerts ::= INTEGER (0..MAX)
* </pre>
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class PolicyConstraintsExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
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
	
	public static var REQUIRE(default, null) : String;
	
	public static var INHIBIT(default, null) : String;
	
	/**
	* Create a PolicyConstraintsExtension object with both
	* require explicit policy and inhibit policy mapping. The
	* extension is marked non-critical.
	*
	* @param require require explicit policy (-1 for optional).
	* @param inhibit inhibit policy mapping (-1 for optional).
	*/
	@:overload public function new(require : Int, inhibit : Int) : Void;
	
	/**
	* Create a PolicyConstraintsExtension object with specified
	* criticality and both require explicit policy and inhibit
	* policy mapping.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param require require explicit policy (-1 for optional).
	* @param inhibit inhibit policy mapping (-1 for optional).
	*/
	@:overload public function new(critical : Null<Bool>, require : Int, inhibit : Int) : Void;
	
	/**
	* Create the extension from its DER encoded value and criticality.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Return the extension as user readable string.
	*/
	@:overload public function toString() : String;
	
	/**
	* Write the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors.
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
