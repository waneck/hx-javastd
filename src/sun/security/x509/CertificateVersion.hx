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
* This class defines the version of the X509 Certificate.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @see CertAttrSet
*/
extern class CertificateVersion implements sun.security.x509.CertAttrSet<String>
{
	/**
	* X509Certificate Version 1
	*/
	@:public @:static @:final public static var V1(default, null) : Int;
	
	/**
	* X509Certificate Version 2
	*/
	@:public @:static @:final public static var V2(default, null) : Int;
	
	/**
	* X509Certificate Version 3
	*/
	@:public @:static @:final public static var V3(default, null) : Int;
	
	/**
	* Identifier for this attribute, to be used with the
	* get, set, delete methods of Certificate, x509 type.
	*/
	@:public @:static @:final public static var IDENT(default, null) : String;
	
	/**
	* Sub attributes name for this CertAttrSet.
	*/
	@:public @:static @:final public static var NAME(default, null) : String;
	
	@:public @:static @:final public static var VERSION(default, null) : String;
	
	/**
	* The default constructor for this class,
	*  sets the version to 0 (i.e. X.509 version 1).
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* The constructor for this class for the required version.
	*
	* @param version the version for the certificate.
	* @exception IOException if the version is not valid.
	*/
	@:overload @:public public function new(version : Int) : Void;
	
	/**
	* Create the object, decoding the values from the passed DER stream.
	*
	* @param in the DerInputStream to read the CertificateVersion from.
	* @exception IOException on decoding errors.
	*/
	@:overload @:public public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* Create the object, decoding the values from the passed stream.
	*
	* @param in the InputStream to read the CertificateVersion from.
	* @exception IOException on decoding errors.
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Create the object, decoding the values from the passed DerValue.
	*
	* @param val the Der encoded value.
	* @exception IOException on decoding errors.
	*/
	@:overload @:public public function new(val : sun.security.util.DerValue) : Void;
	
	/**
	* Return the version number of the certificate.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Encode the CertificateVersion period in DER form to the stream.
	*
	* @param out the OutputStream to marshal the contents to.
	* @exception IOException on errors.
	*/
	@:overload @:public public function encode(out : java.io.OutputStream) : Void;
	
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
	* Compare versions.
	*/
	@:overload @:public public function compare(vers : Int) : Int;
	
	
}
