package java.security.cert;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class PolicyQualifierInfo
{
	/**
	* Creates an instance of <code>PolicyQualifierInfo</code> from the
	* encoded bytes. The encoded byte array is copied on construction.
	*
	* @param encoded a byte array containing the qualifier in DER encoding
	* @exception IOException thrown if the byte array does not represent a
	* valid and parsable policy qualifier
	*/
	@:overload @:public public function new(encoded : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the <code>policyQualifierId</code> field of this
	* <code>PolicyQualifierInfo</code>. The <code>policyQualifierId</code>
	* is an Object Identifier (OID) represented by a set of nonnegative
	* integers separated by periods.
	*
	* @return the OID (never <code>null</code>)
	*/
	@:overload @:public @:final public function getPolicyQualifierId() : String;
	
	/**
	* Returns the ASN.1 DER encoded form of this
	* <code>PolicyQualifierInfo</code>.
	*
	* @return the ASN.1 DER encoded bytes (never <code>null</code>).
	* Note that a copy is returned, so the data is cloned each time
	* this method is called.
	*/
	@:overload @:public @:final public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the ASN.1 DER encoded form of the <code>qualifier</code>
	* field of this <code>PolicyQualifierInfo</code>.
	*
	* @return the ASN.1 DER encoded bytes of the <code>qualifier</code>
	* field. Note that a copy is returned, so the data is cloned each
	* time this method is called.
	*/
	@:overload @:public @:final public function getPolicyQualifier() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Return a printable representation of this
	* <code>PolicyQualifierInfo</code>.
	*
	* @return a <code>String</code> describing the contents of this
	*         <code>PolicyQualifierInfo</code>
	*/
	@:overload @:public public function toString() : String;
	
	
}
