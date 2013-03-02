package sun.security.krb5.internal;
/*
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
extern class PAData
{
	@:overload public function new(new_pADataType : Int, new_pADataValue : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function clone() : Dynamic;
	
	/**
	* Constructs a PAData object.
	* @param encoding a Der-encoded data.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload public function new(encoding : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes this object to an OutputStream.
	*
	* @return byte array of the encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @exception Asn1Exception on encoding errors.
	*/
	@:overload public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getType() : Int;
	
	@:overload public function getValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the preferred etype from the PAData array.
	* 1. ETYPE-INFO2-ENTRY with unknown s2kparams ignored
	* 2. ETYPE-INFO2 preferred to ETYPE-INFO
	* 3. multiple entries for same etype in one PA-DATA, use the first one.
	* 4. Multiple PA-DATA with same type, choose the last one
	* (This is useful when PA-DATAs from KRB-ERROR and AS-REP are combined).
	* @return the etype, or defaultEType if not enough info
	* @throws Asn1Exception|IOException if there is an encoding error
	*/
	@:overload public static function getPreferredEType(pas : java.NativeArray<sun.security.krb5.internal.PAData>, defaultEType : Int) : Int;
	
	/**
	* Fetches salt and s2kparams value for eType in a series of PA-DATAs.
	* 1. ETYPE-INFO2-ENTRY with unknown s2kparams ignored
	* 2. PA-ETYPE-INFO2 preferred to PA-ETYPE-INFO preferred to PA-PW-SALT.
	* 3. multiple entries for same etype in one PA-DATA, use the first one.
	* 4. Multiple PA-DATA with same type, choose the last one
	* (This is useful when PA-DATAs from KRB-ERROR and AS-REP are combined).
	* @return salt and s2kparams. can be null if not found
	*/
	@:overload public static function getSaltAndParams(eType : Int, pas : java.NativeArray<sun.security.krb5.internal.PAData>) : sun.security.krb5.internal.PAData.PAData_SaltAndParams;
	
	@:overload public function toString() : String;
	
	
}
/**
* A place to store a pair of salt and s2kparams.
* An empty salt is changed to null, to be interoperable
* with Windows 2000 server. This is in fact not correct.
*/
@:native('sun$security$krb5$internal$PAData$SaltAndParams') extern class PAData_SaltAndParams
{
	public var salt(default, null) : String;
	
	public var params(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function new(s : String, p : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
