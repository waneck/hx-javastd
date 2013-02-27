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
* Represent a X509 Extension Attribute.
*
* <p>Extensions are additional attributes which can be inserted in a X509
* v3 certificate. For example a "Driving License Certificate" could have
* the driving license number as a extension.
*
* <p>Extensions are represented as a sequence of the extension identifier
* (Object Identifier), a boolean flag stating whether the extension is to
* be treated as being critical and the extension value itself (this is again
* a DER encoding of the extension value).
* <pre>
* ASN.1 definition of Extension:
* Extension ::= SEQUENCE {
*      ExtensionId     OBJECT IDENTIFIER,
*      critical        BOOLEAN DEFAULT FALSE,
*      extensionValue  OCTET STRING
* }
* </pre>
* All subclasses need to implement a constructor of the form
* <pre>
*     <subclass> (Boolean, Object)
* </pre>
* where the Object is typically an array of DER encoded bytes.
* <p>
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class Extension implements java.security.cert.Extension
{
	private var extensionId : sun.security.util.ObjectIdentifier;
	
	private var critical : Bool;
	
	private var extensionValue : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Default constructor.  Used only by sub-classes.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs an extension from a DER encoded array of bytes.
	*/
	@:overload public function new(derVal : sun.security.util.DerValue) : Void;
	
	/**
	* Constructs an Extension from individual components of ObjectIdentifier,
	* criticality and the DER encoded OctetString.
	*
	* @param extensionId the ObjectIdentifier of the extension
	* @param critical the boolean indicating if the extension is critical
	* @param extensionValue the DER encoded octet string of the value.
	*/
	@:overload public function new(extensionId : sun.security.util.ObjectIdentifier, critical : Bool, extensionValue : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs an Extension from another extension. To be used for
	* creating decoded subclasses.
	*
	* @param ext the extension to create from.
	*/
	@:overload public function new(ext : Extension) : Void;
	
	/**
	* Constructs an Extension from individual components of ObjectIdentifier,
	* criticality and the raw encoded extension value.
	*
	* @param extensionId the ObjectIdentifier of the extension
	* @param critical the boolean indicating if the extension is critical
	* @param rawExtensionValue the raw DER-encoded extension value (this
	* is not the encoded OctetString).
	*/
	@:overload public static function newExtension(extensionId : sun.security.util.ObjectIdentifier, critical : Bool, rawExtensionValue : java.NativeArray<java.StdTypes.Int8>) : Extension;
	
	@:overload public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Write the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors
	*/
	@:overload public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Returns true if extension is critical.
	*/
	@:overload public function isCritical() : Bool;
	
	/**
	* Returns the ObjectIdentifier of the extension.
	*/
	@:overload public function getExtensionId() : sun.security.util.ObjectIdentifier;
	
	@:overload public function getValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the extension value as an byte array for further processing.
	* Note, this is the raw DER value of the extension, not the DER
	* encoded octet string which is in the certificate.
	* This method does not return a clone; it is the responsibility of the
	* caller to clone the array if necessary.
	*/
	@:overload public function getExtensionValue() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getId() : String;
	
	/**
	* Returns the Extension in user readable form.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a hashcode value for this Extension.
	*
	* @return the hashcode value.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares this Extension for equality with the specified
	* object. If the <code>other</code> object is an
	* <code>instanceof</code> <code>Extension</code>, then
	* its encoded form is retrieved and compared with the
	* encoded form of this Extension.
	*
	* @param other the object to test for equality with this Extension.
	* @return true iff the other object is of type Extension, and the
	* criticality flag, object identifier and encoded extension value of
	* the two Extensions match, false otherwise.
	*/
	@:overload public function equals(other : Dynamic) : Bool;
	
	
}
