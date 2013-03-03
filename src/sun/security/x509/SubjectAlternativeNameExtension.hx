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
* This represents the Subject Alternative Name Extension.
*
* This extension, if present, allows the subject to specify multiple
* alternative names.
*
* <p>Extensions are represented as a sequence of the extension identifier
* (Object Identifier), a boolean flag stating whether the extension is to
* be treated as being critical and the extension value itself (this is again
* a DER encoding of the extension value).
* <p>
* The ASN.1 syntax for this is:
* <pre>
* SubjectAltName ::= GeneralNames
* GeneralNames ::= SEQUENCE SIZE (1..MAX) OF GeneralName
* </pre>
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class SubjectAlternativeNameExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
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
	
	@:public @:static @:final public static var SUBJECT_NAME(default, null) : String;
	
	/**
	* Create a SubjectAlternativeNameExtension with the passed GeneralNames.
	* The extension is marked non-critical.
	*
	* @param names the GeneralNames for the subject.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(names : sun.security.x509.GeneralNames) : Void;
	
	/**
	* Create a SubjectAlternativeNameExtension with the specified
	* criticality and GeneralNames.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param names the GeneralNames for the subject.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(critical : Null<Bool>, names : sun.security.x509.GeneralNames) : Void;
	
	/**
	* Create a default SubjectAlternativeNameExtension. The extension
	* is marked non-critical.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create the extension from the passed DER encoded value.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload @:public public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Returns a printable representation of the SubjectAlternativeName.
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
