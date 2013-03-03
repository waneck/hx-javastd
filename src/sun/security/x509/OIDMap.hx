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
* This class defines the mapping from OID & name to classes and vice
* versa.  Used by CertificateExtensions & PKCS10 to get the java
* classes associated with a particular OID/name.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
* @author Andreas Sterbenz
*
*/
extern class OIDMap
{
	/**
	* Add a name to lookup table.
	*
	* @param name the name of the attr
	* @param oid the string representation of the object identifier for
	*         the class.
	* @param clazz the Class object associated with this attribute
	* @exception CertificateException on errors.
	*/
	@:overload @:public @:static public static function addAttribute(name : String, oid : String, clazz : Class<Dynamic>) : Void;
	
	/**
	* Return user friendly name associated with the OID.
	*
	* @param oid the name of the object identifier to be returned.
	* @return the user friendly name or null if no name
	* is registered for this oid.
	*/
	@:overload @:public @:static public static function getName(oid : sun.security.util.ObjectIdentifier) : String;
	
	/**
	* Return Object identifier for user friendly name.
	*
	* @param name the user friendly name.
	* @return the Object Identifier or null if no oid
	* is registered for this name.
	*/
	@:overload @:public @:static public static function getOID(name : String) : sun.security.util.ObjectIdentifier;
	
	/**
	* Return the java class object associated with the user friendly name.
	*
	* @param name the user friendly name.
	* @exception CertificateException if class cannot be instantiated.
	*/
	@:overload @:public @:static public static function getClass(name : String) : Class<Dynamic>;
	
	/**
	* Return the java class object associated with the object identifier.
	*
	* @param oid the name of the object identifier to be returned.
	* @exception CertificateException if class cannot be instatiated.
	*/
	@:overload @:public @:static public static function getClass(oid : sun.security.util.ObjectIdentifier) : Class<Dynamic>;
	
	
}
/**
* Inner class encapsulating the mapping info and Class loading.
*/
@:native('sun$security$x509$OIDMap$OIDInfo') @:internal extern class OIDMap_OIDInfo
{
	
}
