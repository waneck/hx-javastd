package com.sun.jmx.snmp;
/*
* Copyright (c) 1997, 2007, Oracle and/or its affiliates. All rights reserved.
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
* The <CODE>BerDecoder</CODE> class is used for decoding
* BER-encoded data.
*
* A <CODE>BerDecoder</CODE> needs to be set up with the byte string containing
* the encoding. It maintains a current position in the byte string.
*
* Methods allows to fetch integer, string, OID, etc., from the current
* position. After a fetch the current position is moved forward.
*
* A fetch throws a <CODE>BerException</CODE> if the encoding is not of the
* expected type.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*
* @since 1.5
*/
@:require(java5) extern class BerDecoder
{
	/**
	* Constructs a new decoder and attaches it to the specified byte string.
	*
	* @param b The byte string containing the encoded data.
	*/
	@:overload public function new(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function reset() : Void;
	
	/**
	* Fetch an integer.
	*
	* @return The decoded integer.
	*
	* @exception BerException Current position does not point to an integer.
	*/
	@:overload public function fetchInteger() : Int;
	
	/**
	* Fetch an integer with the specified tag.
	*
	* @param tag The expected tag.
	*
	* @return The decoded integer.
	*
	* @exception BerException Current position does not point to an integer
	*                         or the tag is not the expected one.
	*/
	@:overload public function fetchInteger(tag : Int) : Int;
	
	/**
	* Fetch an integer and return a long value.
	*
	* @return The decoded integer.
	*
	* @exception BerException Current position does not point to an integer.
	*/
	@:overload public function fetchIntegerAsLong() : haxe.Int64;
	
	/**
	* Fetch an integer with the specified tag and return a long value.
	*
	* @param tag The expected tag.
	*
	* @return The decoded integer.
	*
	* @exception BerException Current position does not point to an integer
	*                         or the tag is not the expected one.
	*/
	@:overload public function fetchIntegerAsLong(tag : Int) : haxe.Int64;
	
	/**
	* Fetch an octet string.
	*
	* @return The decoded string.
	*
	* @exception BerException Current position does not point to an octet string.
	*/
	@:overload public function fetchOctetString() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Fetch an octet string with a specified tag.
	*
	* @param tag The expected tag.
	*
	* @return The decoded string.
	*
	* @exception BerException Current position does not point to an octet string
	*                         or the tag is not the expected one.
	*/
	@:overload public function fetchOctetString(tag : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Fetch an object identifier.
	*
	* @return The decoded object identifier as an array of long.
	*/
	@:overload public function fetchOid() : java.NativeArray<haxe.Int64>;
	
	/**
	* Fetch an object identifier with a specified tag.
	*
	* @param tag The expected tag.
	*
	* @return The decoded object identifier as an array of long.
	*
	* @exception BerException Current position does not point to an oid
	*                         or the tag is not the expected one.
	*/
	@:overload public function fetchOid(tag : Int) : java.NativeArray<haxe.Int64>;
	
	/**
	* Fetch a <CODE>NULL</CODE> value.
	*
	* @exception BerException Current position does not point to <CODE>NULL</CODE> value.
	*/
	@:overload public function fetchNull() : Void;
	
	/**
	* Fetch a <CODE>NULL</CODE> value with a specified tag.
	*
	* @param tag The expected tag.
	*
	* @exception BerException Current position does not point to
	*            <CODE>NULL</CODE> value or the tag is not the expected one.
	*/
	@:overload public function fetchNull(tag : Int) : Void;
	
	/**
	* Fetch an <CODE>ANY</CODE> value. In fact, this method does not decode anything
	* it simply returns the next TLV as an array of bytes.
	*
	* @return The TLV as a byte array.
	*
	* @exception BerException The next TLV is really badly encoded...
	*/
	@:overload public function fetchAny() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Fetch an <CODE>ANY</CODE> value with a specific tag.
	*
	* @param tag The expected tag.
	*
	* @return The TLV as a byte array.
	*
	* @exception BerException The next TLV is really badly encoded...
	*/
	@:overload public function fetchAny(tag : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Fetch a sequence header.
	* The decoder computes the end position of the sequence and push it
	* on its stack.
	*
	* @exception BerException Current position does not point to a sequence header.
	*/
	@:overload public function openSequence() : Void;
	
	/**
	* Fetch a sequence header with a specific tag.
	*
	* @param tag The expected tag.
	*
	* @exception BerException Current position does not point to a sequence header
	*                         or the tag is not the expected one.
	*/
	@:overload public function openSequence(tag : Int) : Void;
	
	/**
	* Close a sequence.
	* The decode pull the stack and verifies that the current position
	* matches with the calculated end of the sequence. If not it throws
	* an exception.
	*
	* @exception BerException The sequence is not expected to finish here.
	*/
	@:overload public function closeSequence() : Void;
	
	/**
	* Return <CODE>true</CODE> if the end of the current sequence is not reached.
	* When this method returns <CODE>false</CODE>, <CODE>closeSequence</CODE> can (and must) be
	* invoked.
	*
	* @return <CODE>true</CODE> if there is still some data in the sequence.
	*/
	@:overload public function cannotCloseSequence() : Bool;
	
	/**
	* Get the tag of the data at the current position.
	* Current position is unchanged.
	*
	* @return The next tag.
	*/
	@:overload public function getTag() : Int;
	
	@:overload public function toString() : java.lang.String.String;
	
	public static var BooleanTag(default, null) : Int;
	
	public static var IntegerTag(default, null) : Int;
	
	public static var OctetStringTag(default, null) : Int;
	
	public static var NullTag(default, null) : Int;
	
	public static var OidTag(default, null) : Int;
	
	public static var SequenceTag(default, null) : Int;
	
	
}
