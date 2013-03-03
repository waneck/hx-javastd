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
extern class Realm implements java.lang.Cloneable
{
	@:overload @:public public function new(name : String) : Void;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Constructs a Realm object.
	* @param encoding a Der-encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @exception RealmException if an error occurs while parsing a Realm object.
	*/
	@:overload @:public public function new(encoding : sun.security.util.DerValue) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public @:static public static function parseRealmAtSeparator(name : String) : String;
	
	@:overload @:public @:static public static function parseRealmComponent(name : String) : String;
	
	@:overload @:protected @:static private static function parseRealm(name : String) : String;
	
	@:overload @:protected @:static private static function isValidRealmString(name : String) : Bool;
	
	/**
	* Encodes a Realm object.
	* @return the byte array of encoded KrbCredInfo object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parse (unmarshal) a realm from a DER input stream.  This form
	* parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception on error.
	* @param data the Der input stream value, which contains one or more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicate if this data field is optional
	* @return an instance of Realm.
	*
	*/
	@:overload @:public @:static public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.Realm;
	
	/**
	* Returns an array of realms that may be traversed to obtain
	* a TGT from the initiating realm cRealm to the target realm
	* sRealm.
	* <br>
	* There may be an arbitrary number of intermediate realms
	* between cRealm and sRealm. The realms may be organized
	* organized hierarchically, or the paths between them may be
	* specified in the [capaths] stanza of the caller's
	* Kerberos configuration file. The configuration file is consulted
	* first. Then a hirarchical organization is assumed if no realms
	* are found in the configuration file.
	* <br>
	* The returned list, if not null, contains cRealm as the first
	* entry. sRealm is not included unless it is mistakenly listed
	* in the configuration file as an intermediary realm.
	*
	* @param cRealm the initiating realm
	* @param sRealm the target realm
	* @returns array of realms
	* @thows KrbException
	*/
	@:overload @:public @:static public static function getRealmsList(cRealm : String, sRealm : String) : java.NativeArray<String>;
	
	
}
