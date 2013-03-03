package javax.naming;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
* This class represents the binary form of the address of
* a communications end-point.
*<p>
* A BinaryRefAddr consists of a type that describes the communication mechanism
* and an opaque buffer containing the address description
* specific to that communication mechanism. The format and interpretation of
* the address type and the contents of the opaque buffer are based on
* the agreement of three parties: the client that uses the address,
* the object/server that can be reached using the address,
* and the administrator or program that creates the address.
*<p>
* An example of a binary reference address is an BER X.500 presentation address.
* Another example of a binary reference address is a serialized form of
* a service's object handle.
*<p>
* A binary reference address is immutable in the sense that its fields
* once created, cannot be replaced. However, it is possible to access
* the byte array used to hold the opaque buffer. Programs are strongly
* recommended against changing this byte array. Changes to this
* byte array need to be explicitly synchronized.
*
* @author Rosanna Lee
* @author Scott Seligman
*
* @see RefAddr
* @see StringRefAddr
* @since 1.3
*/
/*
* The serialized form of a BinaryRefAddr object consists of its type
* name String and a byte array containing its "contents".
*/
@:require(java3) extern class BinaryRefAddr extends javax.naming.RefAddr
{
	/**
	* Constructs a new instance of BinaryRefAddr using its address type and a byte
	* array for contents.
	*
	* @param addrType A non-null string describing the type of the address.
	* @param src      The non-null contents of the address as a byte array.
	*                 The contents of src is copied into the new BinaryRefAddr.
	*/
	@:overload @:public public function new(addrType : String, src : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a new instance of BinaryRefAddr using its address type and
	* a region of a byte array for contents.
	*
	* @param addrType A non-null string describing the type of the address.
	* @param src      The non-null contents of the address as a byte array.
	*                 The contents of src is copied into the new BinaryRefAddr.
	* @param offset   The starting index in src to get the bytes.
	*                 0 <= offset <= src.length.
	* @param count    The number of bytes to extract from src.
	*                 0 <= count <= src.length-offset.
	*/
	@:overload @:public public function new(addrType : String, src : java.NativeArray<java.StdTypes.Int8>, offset : Int, count : Int) : Void;
	
	/**
	* Retrieves the contents of this address as an Object.
	* The result is a byte array.
	* Changes to this array will affect this BinaryRefAddr's contents.
	* Programs are recommended against changing this array's contents
	* and to lock the buffer if they need to change it.
	*
	* @return The non-null buffer containing this address's contents.
	*/
	@:overload @:public override public function getContent() : Dynamic;
	
	/**
	* Determines whether obj is equal to this address.  It is equal if
	* it contains the same address type and their contents are byte-wise
	* equivalent.
	* @param obj      The possibly null object to check.
	* @return true if the object is equal; false otherwise.
	*/
	@:overload @:public override public function equals(obj : Dynamic) : Bool;
	
	/**
	* Computes the hash code of this address using its address type and contents.
	* Two BinaryRefAddrs have the same hash code if they have
	* the same address type and the same contents.
	* It is also possible for different BinaryRefAddrs to have
	* the same hash code.
	*
	* @return The hash code of this address as an int.
	*/
	@:overload @:public override public function hashCode() : Int;
	
	/**
	* Generates the string representation of this address.
	* The string consists of the address's type and contents with labels.
	* The first 32 bytes of contents are displayed (in hexadecimal).
	* If there are more than 32 bytes, "..." is used to indicate more.
	* This string is meant to used for debugging purposes and not
	* meant to be interpreted programmatically.
	* @return The non-null string representation of this address.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
