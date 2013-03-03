package sun.security.x509;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
* Represent the Key Identifier ASN.1 object.
*
* @author Amit Kapoor
* @author Hemma Prafullchandra
*/
extern class KeyIdentifier
{
	/**
	* Create a KeyIdentifier with the passed bit settings.
	*
	* @param octetString the octet string identifying the key identifier.
	*/
	@:overload @:public public function new(octetString : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create a KeyIdentifier from the DER encoded value.
	*
	* @param val the DerValue
	*/
	@:overload @:public public function new(val : sun.security.util.DerValue) : Void;
	
	/**
	* Creates a KeyIdentifier from a public-key value.
	*
	* <p>From RFC2459: Two common methods for generating key identifiers from
	* the public key are:
	* <ol>
	* <li>The keyIdentifier is composed of the 160-bit SHA-1 hash of the
	* value of the BIT STRING subjectPublicKey (excluding the tag,
	* length, and number of unused bits).
	* <p>
	* <li>The keyIdentifier is composed of a four bit type field with
	* the value 0100 followed by the least significant 60 bits of the
	* SHA-1 hash of the value of the BIT STRING subjectPublicKey.
	* </ol>
	* <p>This method supports method 1.
	*
	* @param pubKey the public key from which to construct this KeyIdentifier
	* @throws IOException on parsing errors
	*/
	@:overload @:public public function new(pubKey : java.security.PublicKey) : Void;
	
	/**
	* Return the value of the KeyIdentifier as byte array.
	*/
	@:overload @:public public function getIdentifier() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a printable representation of the KeyUsage.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a hash code value for this object.
	* Objects that are equal will also have the same hashcode.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Indicates whether some other object is "equal to" this one.
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	
}
