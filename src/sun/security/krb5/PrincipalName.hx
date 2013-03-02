package sun.security.krb5;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
/*
*
*  (C) Copyright IBM Corp. 1999 All Rights Reserved.
*  Copyright 1997 The Open Group Research Institute.  All rights reserved.
*/
extern class PrincipalName implements java.lang.Cloneable
{
	/**
	* Name type not known
	*/
	public static var KRB_NT_UNKNOWN(default, null) : Int;
	
	/**
	* Just the name of the principal as in DCE, or for users
	*/
	public static var KRB_NT_PRINCIPAL(default, null) : Int;
	
	/**
	* Service and other unique instance (krbtgt)
	*/
	public static var KRB_NT_SRV_INST(default, null) : Int;
	
	/**
	* Service with host name as instance (telnet, rcommands)
	*/
	public static var KRB_NT_SRV_HST(default, null) : Int;
	
	/**
	* Service with host as remaining components
	*/
	public static var KRB_NT_SRV_XHST(default, null) : Int;
	
	/**
	* Unique ID
	*/
	public static var KRB_NT_UID(default, null) : Int;
	
	/**
	* TGS Name
	*/
	public static var TGS_DEFAULT_SRV_NAME(default, null) : String;
	
	public static var TGS_DEFAULT_NT(default, null) : Int;
	
	public static var NAME_COMPONENT_SEPARATOR(default, null) : java.StdTypes.Char16;
	
	public static var NAME_REALM_SEPARATOR(default, null) : java.StdTypes.Char16;
	
	public static var REALM_COMPONENT_SEPARATOR(default, null) : java.StdTypes.Char16;
	
	public static var NAME_COMPONENT_SEPARATOR_STR(default, null) : String;
	
	public static var NAME_REALM_SEPARATOR_STR(default, null) : String;
	
	public static var REALM_COMPONENT_SEPARATOR_STR(default, null) : String;
	
	@:overload private function new() : Void;
	
	@:overload public function new(nameParts : java.NativeArray<String>, type : Int) : Void;
	
	@:overload public function new(nameParts : java.NativeArray<String>) : Void;
	
	@:overload public function clone() : Dynamic;
	
	/*
	* Added to workaround a bug where the equals method that takes a
	* PrincipalName is not being called but Object.equals(Object) is
	* being called.
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function equals(other : sun.security.krb5.PrincipalName) : Bool;
	
	/**
	* Returns the ASN.1 encoding of the
	* <xmp>
	* PrincipalName    ::= SEQUENCE {
	*          name-type       [0] Int32,
	*          name-string     [1] SEQUENCE OF KerberosString
	* }
	*
	* KerberosString   ::= GeneralString (IA5String)
	* </xmp>
	*
	* <p>
	* This definition reflects the Network Working Group RFC 4120
	* specification available at
	* <a href="http://www.ietf.org/rfc/rfc4120.txt">
	* http://www.ietf.org/rfc/rfc4120.txt</a>.
	*
	* @param encoding a Der-encoded data.
	* @exception Asn1Exception if an error occurs while decoding
	* an ASN1 encoded data.
	* @exception Asn1Exception if there is an ASN1 encoding error
	* @exception IOException if an I/O error occurs
	* @exception IllegalArgumentException if encoding is null
	* reading encoded data.
	*
	*/
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Parse (unmarshal) a <code>PrincipalName</code> from a DER
	* input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception on error.
	* @param data the Der input stream value, which contains one or
	* more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicate if this data field is optional
	* @return an instance of <code>PrincipalName</code>.
	*
	*/
	@:overload public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.PrincipalName;
	
	@:overload private static function parseName(name : String) : java.NativeArray<String>;
	
	@:overload public function new(name : String, type : Int) : Void;
	
	@:overload public function new(name : String) : Void;
	
	@:overload public function new(name : String, realm : String) : Void;
	
	@:overload public function getRealmAsString() : String;
	
	@:overload public function getPrincipalNameAsString() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function getName() : String;
	
	@:overload public function getNameType() : Int;
	
	@:overload public function getNameStrings() : java.NativeArray<String>;
	
	@:overload public function toByteArray() : java.NativeArray<java.NativeArray<java.StdTypes.Int8>>;
	
	@:overload public function getRealmString() : String;
	
	@:overload public function getRealm() : sun.security.krb5.Realm;
	
	@:overload public function setRealm(new_nameRealm : sun.security.krb5.Realm) : Void;
	
	@:overload public function setRealm(realmsString : String) : Void;
	
	@:overload public function getSalt() : String;
	
	@:overload public function toString() : String;
	
	@:overload public function getNameString() : String;
	
	/**
	* Encodes a <code>PrincipalName</code> object.
	* @return the byte array of the encoded PrncipalName object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Checks if two <code>PrincipalName</code> objects have identical values in their corresponding data fields.
	*
	* @param pname the other <code>PrincipalName</code> object.
	* @return true if two have identical values, otherwise, return false.
	*/
	@:overload public function match(pname : sun.security.krb5.PrincipalName) : Bool;
	
	/**
	* Writes data field values of <code>PrincipalName</code> in FCC format to an output stream.
	*
	* @param cos a <code>CCacheOutputStream</code> for writing data.
	* @exception IOException if an I/O exception occurs.
	* @see sun.security.krb5.internal.ccache.CCacheOutputStream
	*/
	@:overload public function writePrincipal(cos : sun.security.krb5.internal.ccache.CCacheOutputStream) : Void;
	
	/**
	* Creates a KRB_NT_SRV_INST name from the supplied
	* name components and realm.
	* @param primary the primary component of the name
	* @param instance the instance component of the name
	* @param realm the realm
	* @throws KrbException
	*/
	@:overload private function new(primary : String, instance : String, realm : String, type : Int) : Void;
	
	/**
	* Returns the instance component of a name.
	* In a multi-component name such as a KRB_NT_SRV_INST
	* name, the second component is returned.
	* Null is returned if there are not two or more
	* components in the name.
	* @returns instance component of a multi-component name.
	*/
	@:overload public function getInstanceComponent() : String;
	
	
}
