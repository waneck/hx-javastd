package sun.security.util;
/*
* Copyright (c) 1996, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectIdentifier implements java.io.Serializable
{
	/**
	* Constructs, from a string.  This string should be of the form 1.23.56.
	* Validity check included.
	*/
	@:overload public function new(oid : String) : Void;
	
	/**
	* Constructor, from an array of integers.
	* Validity check included.
	*/
	@:overload public function new(values : java.NativeArray<Int>) : Void;
	
	/**
	* Constructor, from an ASN.1 encoded input stream.
	* Validity check NOT included.
	* The encoding of the ID in the stream uses "DER", a BER/1 subset.
	* In this case, that means a triple { typeId, length, data }.
	*
	* <P><STRONG>NOTE:</STRONG>  When an exception is thrown, the
	* input stream has not been returned to its "initial" state.
	*
	* @param in DER-encoded data holding an object ID
	* @exception IOException indicates a decoding error
	*/
	@:overload public function new(_in : sun.security.util.DerInputStream) : Void;
	
	/**
	* This method is kept for compatibility reasons. The new implementation
	* does the check and conversion. All around the JDK, the method is called
	* in static blocks to initialize pre-defined ObjectIdentifieies. No
	* obvious performance hurt will be made after this change.
	*
	* Old doc: Create a new ObjectIdentifier for internal use. The values are
	* neither checked nor cloned.
	*/
	@:overload public static function newInternal(values : java.NativeArray<Int>) : ObjectIdentifier;
	
	/**
	* @deprecated Use equals((Object)oid)
	*/
	@:overload public function equals(other : ObjectIdentifier) : Bool;
	
	/**
	* Compares this identifier with another, for equality.
	*
	* @return true iff the names are identical.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string form of the object ID.  The format is the
	* conventional "dot" notation for such IDs, without any
	* user-friendly descriptive strings, since those strings
	* will not be understood everywhere.
	*/
	@:overload public function toString() : String;
	
	
}
@:native('sun$security$util$ObjectIdentifier$HugeOidNotSupportedByOldJDK') @:internal extern class ObjectIdentifier_HugeOidNotSupportedByOldJDK implements java.io.Serializable
{
	
}
