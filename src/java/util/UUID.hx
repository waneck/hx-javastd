package java.util;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* A class that represents an immutable universally unique identifier (UUID).
* A UUID represents a 128-bit value.
*
* <p> There exist different variants of these global identifiers.  The methods
* of this class are for manipulating the Leach-Salz variant, although the
* constructors allow the creation of any variant of UUID (described below).
*
* <p> The layout of a variant 2 (Leach-Salz) UUID is as follows:
*
* The most significant long consists of the following unsigned fields:
* <pre>
* 0xFFFFFFFF00000000 time_low
* 0x00000000FFFF0000 time_mid
* 0x000000000000F000 version
* 0x0000000000000FFF time_hi
* </pre>
* The least significant long consists of the following unsigned fields:
* <pre>
* 0xC000000000000000 variant
* 0x3FFF000000000000 clock_seq
* 0x0000FFFFFFFFFFFF node
* </pre>
*
* <p> The variant field contains a value which identifies the layout of the
* {@code UUID}.  The bit layout described above is valid only for a {@code
* UUID} with a variant value of 2, which indicates the Leach-Salz variant.
*
* <p> The version field holds a value that describes the type of this {@code
* UUID}.  There are four different basic types of UUIDs: time-based, DCE
* security, name-based, and randomly generated UUIDs.  These types have a
* version value of 1, 2, 3 and 4, respectively.
*
* <p> For more information including algorithms used to create {@code UUID}s,
* see <a href="http://www.ietf.org/rfc/rfc4122.txt"> <i>RFC&nbsp;4122: A
* Universally Unique IDentifier (UUID) URN Namespace</i></a>, section 4.2
* &quot;Algorithms for Creating a Time-Based UUID&quot;.
*
* @since   1.5
*/
@:require(java5) extern class UUID implements java.io.Serializable implements java.lang.Comparable<UUID>
{
	/**
	* Constructs a new {@code UUID} using the specified data.  {@code
	* mostSigBits} is used for the most significant 64 bits of the {@code
	* UUID} and {@code leastSigBits} becomes the least significant 64 bits of
	* the {@code UUID}.
	*
	* @param  mostSigBits
	*         The most significant bits of the {@code UUID}
	*
	* @param  leastSigBits
	*         The least significant bits of the {@code UUID}
	*/
	@:overload public function new(mostSigBits : haxe.Int64, leastSigBits : haxe.Int64) : Void;
	
	/**
	* Static factory to retrieve a type 4 (pseudo randomly generated) UUID.
	*
	* The {@code UUID} is generated using a cryptographically strong pseudo
	* random number generator.
	*
	* @return  A randomly generated {@code UUID}
	*/
	@:overload public static function randomUUID() : UUID;
	
	/**
	* Static factory to retrieve a type 3 (name based) {@code UUID} based on
	* the specified byte array.
	*
	* @param  name
	*         A byte array to be used to construct a {@code UUID}
	*
	* @return  A {@code UUID} generated from the specified array
	*/
	@:overload public static function nameUUIDFromBytes(name : java.NativeArray<java.StdTypes.Int8>) : UUID;
	
	/**
	* Creates a {@code UUID} from the string standard representation as
	* described in the {@link #toString} method.
	*
	* @param  name
	*         A string that specifies a {@code UUID}
	*
	* @return  A {@code UUID} with the specified value
	*
	* @throws  IllegalArgumentException
	*          If name does not conform to the string representation as
	*          described in {@link #toString}
	*
	*/
	@:overload public static function fromString(name : String) : UUID;
	
	/**
	* Returns the least significant 64 bits of this UUID's 128 bit value.
	*
	* @return  The least significant 64 bits of this UUID's 128 bit value
	*/
	@:overload public function getLeastSignificantBits() : haxe.Int64;
	
	/**
	* Returns the most significant 64 bits of this UUID's 128 bit value.
	*
	* @return  The most significant 64 bits of this UUID's 128 bit value
	*/
	@:overload public function getMostSignificantBits() : haxe.Int64;
	
	/**
	* The version number associated with this {@code UUID}.  The version
	* number describes how this {@code UUID} was generated.
	*
	* The version number has the following meaning:
	* <p><ul>
	* <li>1    Time-based UUID
	* <li>2    DCE security UUID
	* <li>3    Name-based UUID
	* <li>4    Randomly generated UUID
	* </ul>
	*
	* @return  The version number of this {@code UUID}
	*/
	@:overload public function version() : Int;
	
	/**
	* The variant number associated with this {@code UUID}.  The variant
	* number describes the layout of the {@code UUID}.
	*
	* The variant number has the following meaning:
	* <p><ul>
	* <li>0    Reserved for NCS backward compatibility
	* <li>2    <a href="http://www.ietf.org/rfc/rfc4122.txt">IETF&nbsp;RFC&nbsp;4122</a>
	* (Leach-Salz), used by this class
	* <li>6    Reserved, Microsoft Corporation backward compatibility
	* <li>7    Reserved for future definition
	* </ul>
	*
	* @return  The variant number of this {@code UUID}
	*/
	@:overload public function variant() : Int;
	
	/**
	* The timestamp value associated with this UUID.
	*
	* <p> The 60 bit timestamp value is constructed from the time_low,
	* time_mid, and time_hi fields of this {@code UUID}.  The resulting
	* timestamp is measured in 100-nanosecond units since midnight,
	* October 15, 1582 UTC.
	*
	* <p> The timestamp value is only meaningful in a time-based UUID, which
	* has version type 1.  If this {@code UUID} is not a time-based UUID then
	* this method throws UnsupportedOperationException.
	*
	* @throws UnsupportedOperationException
	*         If this UUID is not a version 1 UUID
	*/
	@:overload public function timestamp() : haxe.Int64;
	
	/**
	* The clock sequence value associated with this UUID.
	*
	* <p> The 14 bit clock sequence value is constructed from the clock
	* sequence field of this UUID.  The clock sequence field is used to
	* guarantee temporal uniqueness in a time-based UUID.
	*
	* <p> The {@code clockSequence} value is only meaningful in a time-based
	* UUID, which has version type 1.  If this UUID is not a time-based UUID
	* then this method throws UnsupportedOperationException.
	*
	* @return  The clock sequence of this {@code UUID}
	*
	* @throws  UnsupportedOperationException
	*          If this UUID is not a version 1 UUID
	*/
	@:overload public function clockSequence() : Int;
	
	/**
	* The node value associated with this UUID.
	*
	* <p> The 48 bit node value is constructed from the node field of this
	* UUID.  This field is intended to hold the IEEE 802 address of the machine
	* that generated this UUID to guarantee spatial uniqueness.
	*
	* <p> The node value is only meaningful in a time-based UUID, which has
	* version type 1.  If this UUID is not a time-based UUID then this method
	* throws UnsupportedOperationException.
	*
	* @return  The node value of this {@code UUID}
	*
	* @throws  UnsupportedOperationException
	*          If this UUID is not a version 1 UUID
	*/
	@:overload public function node() : haxe.Int64;
	
	/**
	* Returns a {@code String} object representing this {@code UUID}.
	*
	* <p> The UUID string representation is as described by this BNF:
	* <blockquote><pre>
	* {@code
	* UUID                   = <time_low> "-" <time_mid> "-"
	*                          <time_high_and_version> "-"
	*                          <variant_and_sequence> "-"
	*                          <node>
	* time_low               = 4*<hexOctet>
	* time_mid               = 2*<hexOctet>
	* time_high_and_version  = 2*<hexOctet>
	* variant_and_sequence   = 2*<hexOctet>
	* node                   = 6*<hexOctet>
	* hexOctet               = <hexDigit><hexDigit>
	* hexDigit               =
	*       "0" | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9"
	*       | "a" | "b" | "c" | "d" | "e" | "f"
	*       | "A" | "B" | "C" | "D" | "E" | "F"
	* }</pre></blockquote>
	*
	* @return  A string representation of this {@code UUID}
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns a hash code for this {@code UUID}.
	*
	* @return  A hash code value for this {@code UUID}
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Compares this object to the specified object.  The result is {@code
	* true} if and only if the argument is not {@code null}, is a {@code UUID}
	* object, has the same variant, and contains the same value, bit for bit,
	* as this {@code UUID}.
	*
	* @param  obj
	*         The object to be compared
	*
	* @return  {@code true} if the objects are the same; {@code false}
	*          otherwise
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Compares this UUID with the specified UUID.
	*
	* <p> The first of two UUIDs is greater than the second if the most
	* significant field in which the UUIDs differ is greater for the first
	* UUID.
	*
	* @param  val
	*         {@code UUID} to which this {@code UUID} is to be compared
	*
	* @return  -1, 0 or 1 as this {@code UUID} is less than, equal to, or
	*          greater than {@code val}
	*
	*/
	@:overload public function compareTo(val : UUID) : Int;
	
	
}
/*
* The random number generator used by this class to create random
* based UUIDs. In a holder class to defer initialization until needed.
*/
@:native('java$util$UUID$Holder') @:internal extern class UUID_Holder
{
	
}
