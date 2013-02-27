package sun.security.util;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DerInputStream
{
	/** The DER tag of the value; one of the tag_ constants. */
	public var tag : java.StdTypes.Int8;
	
	/**
	* Create a DER input stream from a data buffer.  The buffer is not
	* copied, it is shared.  Accordingly, the buffer should be treated
	* as read-only.
	*
	* @param data the buffer from which to create the string (CONSUMED)
	*/
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Create a DER input stream from part of a data buffer.
	* The buffer is not copied, it is shared.  Accordingly, the
	* buffer should be treated as read-only.
	*
	* @param data the buffer from which to create the string (CONSUMED)
	* @param offset the first index of <em>data</em> which will
	*          be read as DER input in the new stream
	* @param len how long a chunk of the buffer to use,
	*          starting at "offset"
	*/
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Creates a new DER input stream from part of this input stream.
	*
	* @param len how long a chunk of the current input stream to use,
	*          starting at the current position.
	* @param do_skip true if the existing data in the input stream should
	*          be skipped.  If this value is false, the next data read
	*          on this stream and the newly created stream will be the
	*          same.
	*/
	@:overload public function subStream(len : Int, do_skip : Bool) : DerInputStream;
	
	/**
	* Return what has been written to this DerInputStream
	* as a byte array. Useful for debugging.
	*/
	@:overload public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get an integer from the input stream as an integer.
	*
	* @return the integer held in this DER input stream.
	*/
	@:overload public function getInteger() : Int;
	
	/**
	* Get a integer from the input stream as a BigInteger object.
	*
	* @return the integer held in this DER input stream.
	*/
	@:overload public function getBigInteger() : java.math.BigInteger;
	
	/**
	* Returns an ASN.1 INTEGER value as a positive BigInteger.
	* This is just to deal with implementations that incorrectly encode
	* some values as negative.
	*
	* @return the integer held in this DER value as a BigInteger.
	*/
	@:overload public function getPositiveBigInteger() : java.math.BigInteger;
	
	/**
	* Get an enumerated from the input stream.
	*
	* @return the integer held in this DER input stream.
	*/
	@:overload public function getEnumerated() : Int;
	
	/**
	* Get a bit string from the input stream. Padded bits (if any)
	* will be stripped off before the bit string is returned.
	*/
	@:overload public function getBitString() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Get a bit string from the input stream.  The bit string need
	* not be byte-aligned.
	*/
	@:overload public function getUnalignedBitString() : sun.security.util.BitArray;
	
	/**
	* Returns an ASN.1 OCTET STRING from the input stream.
	*/
	@:overload public function getOctetString() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the asked number of bytes from the input stream.
	*/
	@:overload public function getBytes(val : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Reads an encoded null value from the input stream.
	*/
	@:overload public function getNull() : Void;
	
	/**
	* Reads an X.200 style Object Identifier from the stream.
	*/
	@:overload public function getOID() : sun.security.util.ObjectIdentifier;
	
	/**
	* Return a sequence of encoded entities.  ASN.1 sequences are
	* ordered, and they are often used, like a "struct" in C or C++,
	* to group data values.  They may have optional or context
	* specific values.
	*
	* @param startLen guess about how long the sequence will be
	*          (used to initialize an auto-growing data structure)
	* @return array of the values in the sequence
	*/
	@:overload public function getSequence(startLen : Int) : java.NativeArray<sun.security.util.DerValue>;
	
	/**
	* Return a set of encoded entities.  ASN.1 sets are unordered,
	* though DER may specify an order for some kinds of sets (such
	* as the attributes in an X.500 relative distinguished name)
	* to facilitate binary comparisons of encoded values.
	*
	* @param startLen guess about how large the set will be
	*          (used to initialize an auto-growing data structure)
	* @return array of the values in the sequence
	*/
	@:overload public function getSet(startLen : Int) : java.NativeArray<sun.security.util.DerValue>;
	
	/**
	* Return a set of encoded entities.  ASN.1 sets are unordered,
	* though DER may specify an order for some kinds of sets (such
	* as the attributes in an X.500 relative distinguished name)
	* to facilitate binary comparisons of encoded values.
	*
	* @param startLen guess about how large the set will be
	*          (used to initialize an auto-growing data structure)
	* @param implicit if true tag is assumed implicit.
	* @return array of the values in the sequence
	*/
	@:overload public function getSet(startLen : Int, implicit : Bool) : java.NativeArray<sun.security.util.DerValue>;
	
	/*
	* Read a "vector" of values ... set or sequence have the
	* same encoding, except for the initial tag, so both use
	* this same helper routine.
	*/
	@:overload private function readVector(startLen : Int) : java.NativeArray<sun.security.util.DerValue>;
	
	/**
	* Get a single DER-encoded value from the input stream.
	* It can often be useful to pull a value from the stream
	* and defer parsing it.  For example, you can pull a nested
	* sequence out with one call, and only examine its elements
	* later when you really need to.
	*/
	@:overload public function getDerValue() : sun.security.util.DerValue;
	
	/**
	* Read a string that was encoded as a UTF8String DER value.
	*/
	@:overload public function getUTF8String() : String;
	
	/**
	* Read a string that was encoded as a PrintableString DER value.
	*/
	@:overload public function getPrintableString() : String;
	
	/**
	* Read a string that was encoded as a T61String DER value.
	*/
	@:overload public function getT61String() : String;
	
	/**
	* Read a string that was encoded as a IA5tring DER value.
	*/
	@:overload public function getIA5String() : String;
	
	/**
	* Read a string that was encoded as a BMPString DER value.
	*/
	@:overload public function getBMPString() : String;
	
	/**
	* Read a string that was encoded as a GeneralString DER value.
	*/
	@:overload public function getGeneralString() : String;
	
	/**
	* Get a UTC encoded time value from the input stream.
	*/
	@:overload public function getUTCTime() : java.util.Date;
	
	/**
	* Get a Generalized encoded time value from the input stream.
	*/
	@:overload public function getGeneralizedTime() : java.util.Date;
	
	@:overload public function peekByte() : Int;
	
	/**
	* Mark the current position in the buffer, so that
	* a later call to <code>reset</code> will return here.
	*/
	@:overload public function mark(value : Int) : Void;
	
	/**
	* Return to the position of the last <code>mark</code>
	* call.  A mark is implicitly set at the beginning of
	* the stream when it is created.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Returns the number of bytes available for reading.
	* This is most useful for testing whether the stream is
	* empty.
	*/
	@:overload public function available() : Int;
	
	
}
