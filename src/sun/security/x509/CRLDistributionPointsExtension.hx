package sun.security.x509;
/*
* Copyright (c) 2002, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CRLDistributionPointsExtension extends sun.security.x509.Extension implements sun.security.x509.CertAttrSet<String>
{
	/**
	* Identifier for this attribute, to be used with the
	* get, set, delete methods of Certificate, x509 type.
	*/
	public static var IDENT(default, null) : String;
	
	/**
	* Attribute name.
	*/
	public static var NAME(default, null) : String;
	
	public static var POINTS(default, null) : String;
	
	/**
	* Create a CRLDistributionPointsExtension from a List of
	* DistributionPoint; the criticality is set to false.
	*
	* @param distributionPoints the list of distribution points
	* @throws IOException on error
	*/
	@:overload public function new(distributionPoints : java.util.List<sun.security.x509.DistributionPoint>) : Void;
	
	/**
	* Create a CRLDistributionPointsExtension from a List of
	* DistributionPoint.
	*
	* @param isCritical the criticality setting.
	* @param distributionPoints the list of distribution points
	* @throws IOException on error
	*/
	@:overload public function new(isCritical : Bool, distributionPoints : java.util.List<sun.security.x509.DistributionPoint>) : Void;
	
	/**
	* Creates the extension (also called by the subclass).
	*/
	@:overload private function new(extensionId : sun.security.util.ObjectIdentifier, isCritical : Bool, distributionPoints : java.util.List<sun.security.x509.DistributionPoint>, extensionName : String) : Void;
	
	/**
	* Create the extension from the passed DER encoded value of the same.
	*
	* @param critical true if the extension is to be treated as critical.
	* @param value Array of DER encoded bytes of the actual value.
	* @exception IOException on error.
	*/
	@:overload public function new(critical : Null<Bool>, value : Dynamic) : Void;
	
	/**
	* Creates the extension (also called by the subclass).
	*/
	@:overload private function new(extensionId : sun.security.util.ObjectIdentifier, critical : Null<Bool>, value : Dynamic, extensionName : String) : Void;
	
	/**
	* Return the name of this attribute.
	*/
	@:overload public function getName() : String;
	
	/**
	* Write the extension to the DerOutputStream.
	*
	* @param out the DerOutputStream to write the extension to.
	* @exception IOException on encoding errors.
	*/
	@:overload override public function encode(out : java.io.OutputStream) : Void;
	
	/**
	* Write the extension to the DerOutputStream.
	* (Also called by the subclass)
	*/
	@:overload private function encode(out : java.io.OutputStream, extensionId : sun.security.util.ObjectIdentifier, isCritical : Bool) : Void;
	
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
	* Return the extension as user readable string.
	*/
	@:overload override public function toString() : String;
	
	
}
