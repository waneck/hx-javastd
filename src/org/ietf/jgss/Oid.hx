package org.ietf.jgss;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Oid
{
	/**
	* Constructs an Oid object from a string representation of its
	* integer components.
	*
	* @param strOid the dot separated string representation of the oid.
	* For instance, "1.2.840.113554.1.2.2".
	* @exception GSSException may be thrown when the string is incorrectly
	*     formatted
	*/
	@:overload @:public public function new(strOid : String) : Void;
	
	/**
	* Creates an Oid object from its ASN.1 DER encoding.  This refers to
	* the full encoding including tag and length.  The structure and
	* encoding of Oids is defined in ISOIEC-8824 and ISOIEC-8825.  This
	* method is identical in functionality to its byte array counterpart.
	*
	* @param derOid stream containing the DER encoded oid
	* @exception GSSException may be thrown when the DER encoding does not
	*  follow the prescribed format.
	*/
	@:overload @:public public function new(derOid : java.io.InputStream) : Void;
	
	/**
	* Creates an Oid object from its ASN.1 DER encoding.  This refers to
	* the full encoding including tag and length.  The structure and
	* encoding of Oids is defined in ISOIEC-8824 and ISOIEC-8825.  This
	* method is identical in functionality to its InputStream conterpart.
	*
	* @param data byte array containing the DER encoded oid
	* @exception GSSException may be thrown when the DER encoding does not
	*     follow the prescribed format.
	*/
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns a string representation of the oid's integer components
	* in dot separated notation.
	*
	* @return string representation in the following format: "1.2.3.4.5"
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Tests if two Oid objects represent the same Object identifier
	* value.
	*
	* @return <code>true</code> if the two Oid objects represent the same
	* value, <code>false</code> otherwise.
	* @param other the Oid object that has to be compared to this one
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Returns the full ASN.1 DER encoding for this oid object, which
	* includes the tag and length.
	*
	* @return byte array containing the DER encoding of this oid object.
	* @exception GSSException may be thrown when the oid can't be encoded
	*/
	@:overload @:public public function getDER() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* A utility method to test if this Oid value is contained within the
	* supplied Oid array.
	*
	* @param oids the array of Oid's to search
	* @return true if the array contains this Oid value, false otherwise
	*/
	@:overload @:public public function containedIn(oids : java.NativeArray<org.ietf.jgss.Oid>) : Bool;
	
	/**
	* Returns a hashcode value for this Oid.
	*
	* @return a hashCode value
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
