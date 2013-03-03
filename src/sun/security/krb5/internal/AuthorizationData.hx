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
extern class AuthorizationData implements java.lang.Cloneable
{
	@:overload @:public public function new(new_entries : java.NativeArray<sun.security.krb5.internal.AuthorizationDataEntry>) : Void;
	
	@:overload @:public public function new(new_entry : sun.security.krb5.internal.AuthorizationDataEntry) : Void;
	
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Constructs a new <code>AuthorizationData,</code> instance.
	* @param der a single DER-encoded value.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function new(der : sun.security.util.DerValue) : Void;
	
	/**
	* Encodes an <code>AuthorizationData</code> object.
	* @return byte array of encoded <code>AuthorizationData</code> object.
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	*/
	@:overload @:public public function asn1Encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Parse (unmarshal) an <code>AuthorizationData</code> object from a DER input stream.
	* This form of parsing might be used when expanding a value which is part of
	* a constructed sequence and uses explicitly tagged type.
	*
	* @exception Asn1Exception if an error occurs while decoding an ASN1 encoded data.
	* @exception IOException if an I/O error occurs while reading encoded data.
	* @param data the Der input stream value, which contains one or more marshaled value.
	* @param explicitTag tag number.
	* @param optional indicates if this data field is optional
	* @return an instance of AuthorizationData.
	*
	*/
	@:overload @:public @:static public static function parse(data : sun.security.util.DerInputStream, explicitTag : java.StdTypes.Int8, optional : Bool) : sun.security.krb5.internal.AuthorizationData;
	
	/**
	* Writes <code>AuthorizationData</code> data fields to a output stream.
	*
	* @param cos a <code>CCacheOutputStream</code> to be written to.
	* @exception IOException if an I/O exception occurs.
	*/
	@:overload @:public public function writeAuth(cos : sun.security.krb5.internal.ccache.CCacheOutputStream) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function count() : Int;
	
	@:overload @:public public function item(i : Int) : sun.security.krb5.internal.AuthorizationDataEntry;
	
	
}
