package sun.security.x509;
/*
* Copyright (c) 1997, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class IPAddressName implements sun.security.x509.GeneralNameInterface
{
	/**
	* Create the IPAddressName object from the passed encoded Der value.
	*
	* @params derValue the encoded DER IPAddressName.
	* @exception IOException on error.
	*/
	@:overload @:public public function new(derValue : sun.security.util.DerValue) : Void;
	
	/**
	* Create the IPAddressName object with the specified octets.
	*
	* @params address the IP address
	* @throws IOException if address is not a valid IPv4 or IPv6 address
	*/
	@:overload @:public public function new(address : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create an IPAddressName from a String.
	* [IETF RFC1338 Supernetting & IETF RFC1519 Classless Inter-Domain
	* Routing (CIDR)] For IPv4 addresses, the forms are
	* "b1.b2.b3.b4" or "b1.b2.b3.b4/m1.m2.m3.m4", where b1 - b4 are decimal
	* byte values 0-255 and m1 - m4 are decimal mask values
	* 0 - 255.
	* <p>
	* [IETF RFC2373 IP Version 6 Addressing Architecture]
	* For IPv6 addresses, the forms are "a1:a2:...:a8" or "a1:a2:...:a8/n",
	* where a1-a8 are hexadecimal values representing the eight 16-bit pieces
	* of the address. If /n is used, n is a decimal number indicating how many
	* of the leftmost contiguous bits of the address comprise the prefix for
	* this subnet. Internally, a mask value is created using the prefix length.
	* <p>
	* @param name String form of IPAddressName
	* @throws IOException if name can not be converted to a valid IPv4 or IPv6
	*     address
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Return the type of the GeneralName.
	*/
	@:overload @:public public function getType() : Int;
	
	/**
	* Encode the IPAddress name into the DerOutputStream.
	*
	* @params out the DER stream to encode the IPAddressName to.
	* @exception IOException on encoding errors.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Return a printable string of IPaddress
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Return a standard String representation of IPAddress.
	* See IPAddressName(String) for the formats used for IPv4
	* and IPv6 addresses.
	*
	* @throws IOException if the IPAddress cannot be converted to a String
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns this IPAddress name as a byte array.
	*/
	@:overload @:public public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Compares this name with another, for equality.
	*
	* @return true iff the names are identical.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this object.
	*
	* @return a hash code value for this object.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Return type of constraint inputName places on this name:<ul>
	*   <li>NAME_DIFF_TYPE = -1: input name is different type from name
	*       (i.e. does not constrain).
	*   <li>NAME_MATCH = 0: input name matches name.
	*   <li>NAME_NARROWS = 1: input name narrows name (is lower in the naming
	*       subtree)
	*   <li>NAME_WIDENS = 2: input name widens name (is higher in the naming
	*       subtree)
	*   <li>NAME_SAME_TYPE = 3: input name does not match or narrow name, but
	*       is same type.
	* </ul>.  These results are used in checking NameConstraints during
	* certification path verification.
	* <p>
	* [RFC2459] The syntax of iPAddress MUST be as described in section
	* 4.2.1.7 with the following additions specifically for Name Constraints.
	* For IPv4 addresses, the ipAddress field of generalName MUST contain
	* eight (8) octets, encoded in the style of RFC 1519 (CIDR) to represent an
	* address range.[RFC 1519]  For IPv6 addresses, the ipAddress field
	* MUST contain 32 octets similarly encoded.  For example, a name
	* constraint for "class C" subnet 10.9.8.0 shall be represented as the
	* octets 0A 09 08 00 FF FF FF 00, representing the CIDR notation
	* 10.9.8.0/255.255.255.0.
	* <p>
	* @param inputName to be checked for being constrained
	* @returns constraint type above
	* @throws UnsupportedOperationException if name is not exact match, but
	* narrowing and widening are not supported for this name type.
	*/
	@:overload @:public public function constrains(inputName : sun.security.x509.GeneralNameInterface) : Int;
	
	/**
	* Return subtree depth of this name for purposes of determining
	* NameConstraints minimum and maximum bounds and for calculating
	* path lengths in name subtrees.
	*
	* @returns distance of name from root
	* @throws UnsupportedOperationException if not supported for this name type
	*/
	@:overload @:public public function subtreeDepth() : Int;
	
	
}
