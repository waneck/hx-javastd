package sun.security.util;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DerOutputStream extends java.io.ByteArrayOutputStream implements sun.security.util.DerEncoder
{
	/**
	* Construct an DER output stream.
	*
	* @param size how large a buffer to preallocate.
	*/
	@:overload @:public public function new(size : Int) : Void;
	
	/**
	* Construct an DER output stream.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Writes tagged, pre-marshaled data.  This calcuates and encodes
	* the length, so that the output data is the standard triple of
	* { tag, length, data } used by all DER values.
	*
	* @param tag the DER value tag for the data, such as
	*          <em>DerValue.tag_Sequence</em>
	* @param buf buffered data, which must be DER-encoded
	*/
	@:overload @:public public function write(tag : java.StdTypes.Int8, buf : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes tagged data using buffer-to-buffer copy.  As above,
	* this writes a standard DER record.  This is often used when
	* efficiently encapsulating values in sequences.
	*
	* @param tag the DER value tag for the data, such as
	*          <em>DerValue.tag_Sequence</em>
	* @param out buffered data
	*/
	@:overload @:public public function write(tag : java.StdTypes.Int8, out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Writes implicitly tagged data using buffer-to-buffer copy.  As above,
	* this writes a standard DER record.  This is often used when
	* efficiently encapsulating implicitly tagged values.
	*
	* @param tag the DER value of the context-specific tag that replaces
	* original tag of the value in the output, such as in
	* <pre>
	*          <em> <field> [N] IMPLICIT <type></em>
	* </pre>
	* For example, <em>FooLength [1] IMPLICIT INTEGER</em>, with value=4;
	* would be encoded as "81 01 04"  whereas in explicit
	* tagging it would be encoded as "A1 03 02 01 04".
	* Notice that the tag is A1 and not 81, this is because with
	* explicit tagging the form is always constructed.
	* @param value original value being implicitly tagged
	*/
	@:overload @:public public function writeImplicit(tag : java.StdTypes.Int8, value : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Marshals pre-encoded DER value onto the output stream.
	*/
	@:overload @:public public function putDerValue(val : sun.security.util.DerValue) : Void;
	
	/**
	* Marshals a DER boolean on the output stream.
	*/
	@:overload @:public public function putBoolean(val : Bool) : Void;
	
	/**
	* Marshals a DER enumerated on the output stream.
	* @param i the enumerated value.
	*/
	@:overload @:public public function putEnumerated(i : Int) : Void;
	
	/**
	* Marshals a DER integer on the output stream.
	*
	* @param i the integer in the form of a BigInteger.
	*/
	@:overload @:public public function putInteger(i : java.math.BigInteger) : Void;
	
	/**
	* Marshals a DER integer on the output stream.
	* @param i the integer in the form of an Integer.
	*/
	@:overload @:public public function putInteger(i : Null<Int>) : Void;
	
	/**
	* Marshals a DER integer on the output stream.
	* @param i the integer.
	*/
	@:overload @:public public function putInteger(i : Int) : Void;
	
	/**
	* Marshals a DER bit string on the output stream. The bit
	* string must be byte-aligned.
	*
	* @param bits the bit string, MSB first
	*/
	@:overload @:public public function putBitString(bits : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Marshals a DER bit string on the output stream.
	* The bit strings need not be byte-aligned.
	*
	* @param bits the bit string, MSB first
	*/
	@:overload @:public public function putUnalignedBitString(ba : sun.security.util.BitArray) : Void;
	
	/**
	* Marshals a truncated DER bit string on the output stream.
	* The bit strings need not be byte-aligned.
	*
	* @param bits the bit string, MSB first
	*/
	@:overload @:public public function putTruncatedUnalignedBitString(ba : sun.security.util.BitArray) : Void;
	
	/**
	* DER-encodes an ASN.1 OCTET STRING value on the output stream.
	*
	* @param octets the octet string
	*/
	@:overload @:public public function putOctetString(octets : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Marshals a DER "null" value on the output stream.  These are
	* often used to indicate optional values which have been omitted.
	*/
	@:overload @:public public function putNull() : Void;
	
	/**
	* Marshals an object identifier (OID) on the output stream.
	* Corresponds to the ASN.1 "OBJECT IDENTIFIER" construct.
	*/
	@:overload @:public public function putOID(oid : sun.security.util.ObjectIdentifier) : Void;
	
	/**
	* Marshals a sequence on the output stream.  This supports both
	* the ASN.1 "SEQUENCE" (zero to N values) and "SEQUENCE OF"
	* (one to N values) constructs.
	*/
	@:overload @:public public function putSequence(seq : java.NativeArray<sun.security.util.DerValue>) : Void;
	
	/**
	* Marshals the contents of a set on the output stream without
	* ordering the elements.  Ok for BER encoding, but not for DER
	* encoding.
	*
	* For DER encoding, use orderedPutSet() or orderedPutSetOf().
	*/
	@:overload @:public public function putSet(set : java.NativeArray<sun.security.util.DerValue>) : Void;
	
	/**
	* Marshals the contents of a set on the output stream.  Sets
	* are semantically unordered, but DER requires that encodings of
	* set elements be sorted into ascending lexicographical order
	* before being output.  Hence sets with the same tags and
	* elements have the same DER encoding.
	*
	* This method supports the ASN.1 "SET OF" construct, but not
	* "SET", which uses a different order.
	*/
	@:overload @:public public function putOrderedSetOf(tag : java.StdTypes.Int8, set : java.NativeArray<sun.security.util.DerEncoder>) : Void;
	
	/**
	* Marshals the contents of a set on the output stream.  Sets
	* are semantically unordered, but DER requires that encodings of
	* set elements be sorted into ascending tag order
	* before being output.  Hence sets with the same tags and
	* elements have the same DER encoding.
	*
	* This method supports the ASN.1 "SET" construct, but not
	* "SET OF", which uses a different order.
	*/
	@:overload @:public public function putOrderedSet(tag : java.StdTypes.Int8, set : java.NativeArray<sun.security.util.DerEncoder>) : Void;
	
	/**
	* Marshals a string as a DER encoded UTF8String.
	*/
	@:overload @:public public function putUTF8String(s : String) : Void;
	
	/**
	* Marshals a string as a DER encoded PrintableString.
	*/
	@:overload @:public public function putPrintableString(s : String) : Void;
	
	/**
	* Marshals a string as a DER encoded T61String.
	*/
	@:overload @:public public function putT61String(s : String) : Void;
	
	/**
	* Marshals a string as a DER encoded IA5String.
	*/
	@:overload @:public public function putIA5String(s : String) : Void;
	
	/**
	* Marshals a string as a DER encoded BMPString.
	*/
	@:overload @:public public function putBMPString(s : String) : Void;
	
	/**
	* Marshals a string as a DER encoded GeneralString.
	*/
	@:overload @:public public function putGeneralString(s : String) : Void;
	
	/**
	* Marshals a DER UTC time/date value.
	*
	* <P>YYMMDDhhmmss{Z|+hhmm|-hhmm} ... emits only using Zulu time
	* and with seconds (even if seconds=0) as per RFC 3280.
	*/
	@:overload @:public public function putUTCTime(d : java.util.Date) : Void;
	
	/**
	* Marshals a DER Generalized Time/date value.
	*
	* <P>YYYYMMDDhhmmss{Z|+hhmm|-hhmm} ... emits only using Zulu time
	* and with seconds (even if seconds=0) as per RFC 3280.
	*/
	@:overload @:public public function putGeneralizedTime(d : java.util.Date) : Void;
	
	/**
	* Put the encoding of the length in the stream.
	*
	* @params len the length of the attribute.
	* @exception IOException on writing errors.
	*/
	@:overload @:public public function putLength(len : Int) : Void;
	
	/**
	* Put the tag of the attribute in the stream.
	*
	* @params class the tag class type, one of UNIVERSAL, CONTEXT,
	*                            APPLICATION or PRIVATE
	* @params form if true, the value is constructed, otherwise it is
	* primitive.
	* @params val the tag value
	*/
	@:overload @:public public function putTag(tagClass : java.StdTypes.Int8, form : Bool, val : java.StdTypes.Int8) : Void;
	
	/**
	*  Write the current contents of this <code>DerOutputStream</code>
	*  to an <code>OutputStream</code>.
	*
	*  @exception IOException on output error.
	*/
	@:overload @:public public function derEncode(out : java.io.OutputStream) : Void;
	
	
}
