package sun.security.krb5.internal;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class ETypeInfo2
{
	@:overload public function new(etype : Int, salt : String, s2kparams : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function clone() : Dynamic;
	
	/**
	* Constructs a ETypeInfo2 object.
	* @param encoding a DER-encoded data.
	* @exception Asn1Exception if an error occurs while decoding an
	*            ASN1 encoded data.
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
	
	@:overload public function getEType() : Int;
	
	@:overload public function getSalt() : String;
	
	@:overload public function getParams() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
