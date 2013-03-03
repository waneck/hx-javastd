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
extern class NameConstraintsExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String> implements java.lang.Cloneable
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
	
	@:public @:static @:final public static var PERMITTED_SUBTREES(default, null) : String;
	
	@:public @:static @:final public static var EXCLUDED_SUBTREES(default, null) : String;
	
	/**
	* The default constructor for this class. Both parameters
	* are optional and can be set to null.  The extension criticality
	* is set to true.
	*
	* @param permitted the permitted GeneralSubtrees (null for optional).
	* @param excluded the excluded GeneralSubtrees (null for optional).
	*/
	@:overload @:public public function new(permitted : sun.security.x509.GeneralSubtrees, excluded : sun.security.x509.GeneralSubtrees) : Void;
	
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
	* Return the printable string.
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
	
	/**
	* Merge additional name constraints with existing ones.
	* This function is used in certification path processing
	* to accumulate name constraints from successive certificates
	* in the path.  Note that NameConstraints can never be
	* expanded by a merge, just remain constant or become more
	* limiting.
	* <p>
	* IETF RFC2459 specifies the processing of Name Constraints as
	* follows:
	* <p>
	* (j)  If permittedSubtrees is present in the certificate, set the
	* constrained subtrees state variable to the intersection of its
	* previous value and the value indicated in the extension field.
	* <p>
	* (k)  If excludedSubtrees is present in the certificate, set the
	* excluded subtrees state variable to the union of its previous
	* value and the value indicated in the extension field.
	* <p>
	* @param newConstraints additional NameConstraints to be applied
	* @throws IOException on error
	*/
	@:overload @:public public function merge(newConstraints : sun.security.x509.NameConstraintsExtension) : Void;
	
	/**
	* check whether a certificate conforms to these NameConstraints.
	* This involves verifying that the subject name and subjectAltName
	* extension (critical or noncritical) is consistent with the permitted
	* subtrees state variables.  Also verify that the subject name and
	* subjectAltName extension (critical or noncritical) is consistent with
	* the excluded subtrees state variables.
	*
	* @param cert X509Certificate to be verified
	* @returns true if certificate verifies successfully
	* @throws IOException on error
	*/
	@:overload @:public public function verify(cert : java.security.cert.X509Certificate) : Bool;
	
	/**
	* check whether a name conforms to these NameConstraints.
	* This involves verifying that the name is consistent with the
	* permitted and excluded subtrees variables.
	*
	* @param name GeneralNameInterface name to be verified
	* @returns true if certificate verifies successfully
	* @throws IOException on error
	*/
	@:overload @:public public function verify(name : sun.security.x509.GeneralNameInterface) : Bool;
	
	/**
	* Perform the RFC 822 special case check. We have a certificate
	* that does not contain any subject alternative names. Check that
	* any EMAILADDRESS attributes in its subject name conform to these
	* NameConstraints.
	*
	* @param subject the certificate's subject name
	* @returns true if certificate verifies successfully
	* @throws IOException on error
	*/
	@:overload @:public public function verifyRFC822SpecialCase(subject : sun.security.x509.X500Name) : Bool;
	
	/**
	* Clone all objects that may be modified during certificate validation.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
