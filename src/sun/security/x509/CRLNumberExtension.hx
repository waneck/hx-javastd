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
* Represent the CRL Number Extension.
*
* <p>This extension, if present, conveys a monotonically increasing
* sequence number for each CRL issued by a given CA through a specific
* CA X.500 Directory entry or CRL distribution point. This extension
* allows users to easily determine when a particular CRL supersedes
* another CRL.
*
* @author Hemma Prafullchandra
* @see Extension
* @see CertAttrSet
*/
extern class CRLNumberExtension extends java.security.cert.Extension implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Attribute name.
	*/
	@:public @:static @:final public static var NAME(default, null) : String;
	
	@:public @:static @:final public static var NUMBER(default, null) : String;
	
	/**
	* Create a CRLNumberExtension with the integer value .
	* The criticality is set to false.
	*
	* @param crlNum the value to be set for the extension.
	*/
	@:overload @:public public function new(crlNum : Int) : Void;
	
	/**
	* Create a CRLNumberExtension with the BigInteger value .
	* The criticality is set to false.
	*
	* @param crlNum the value to be set for the extension.
	*/
	@:overload @:public public function new(crlNum : java.math.BigInteger) : Void;
	
	/**
	* Creates the extension (also called by the subclass).
	*/
	@:overload @:protected private function new(extensionId : sun.security.util.ObjectIdentifier, isCritical : Bool, crlNum : java.math.BigInteger, extensionName : String, extensionLabel : String) : Void;
	
	/**
	* Create the extension from the passed DER encoded value of the same.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value an array of DER encoded bytes of the actual value.
	* @exception ClassCastException if value is not an array of bytes
	* @exception IOException on error.
	*/
	@:overload @:public public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Creates the extension (also called by the subclass).
	*/
	@:overload @:protected private function new(extensionId : sun.security.util.ObjectIdentifier, critical : Null<Bool>, value : Dynamic, extensionName : String, extensionLabel : String) : Void;
	
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
	* Returns a printable representation of the CRLNumberExtension.
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
	* Write the extension to the DerOutputStream.
	* (Also called by the subclass)
	*/
	@:overload @:protected private function encode(out : java.io.OutputStream, extensionId : sun.security.util.ObjectIdentifier, isCritical : Bool) : Void;
	
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
