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
extern class DerValue
{
	/** The tag class types */
	@:public @:static @:final public static var TAG_UNIVERSAL(default, null) : java.StdTypes.Int8;
	
	@:public @:static @:final public static var TAG_APPLICATION(default, null) : java.StdTypes.Int8;
	
	@:public @:static @:final public static var TAG_CONTEXT(default, null) : java.StdTypes.Int8;
	
	@:public @:static @:final public static var TAG_PRIVATE(default, null) : java.StdTypes.Int8;
	
	/** The DER tag of the value; one of the tag_ constants. */
	@:public public var tag : java.StdTypes.Int8;
	
	@:protected private var buffer : sun.security.util.DerInputBuffer;
	
	/**
	* The DER-encoded data of the value, never null
	*/
	@:public @:final public var data(default, null) : sun.security.util.DerInputStream;
	
	/** Tag value indicating an ASN.1 "BOOLEAN" value. */
	@:public @:final @:static public static var tag_Boolean(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "INTEGER" value. */
	@:public @:final @:static public static var tag_Integer(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "BIT STRING" value. */
	@:public @:final @:static public static var tag_BitString(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "OCTET STRING" value. */
	@:public @:final @:static public static var tag_OctetString(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "NULL" value. */
	@:public @:final @:static public static var tag_Null(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "OBJECT IDENTIFIER" value. */
	@:public @:final @:static public static var tag_ObjectId(default, null) : java.StdTypes.Int8;
	
	/** Tag value including an ASN.1 "ENUMERATED" value */
	@:public @:final @:static public static var tag_Enumerated(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "UTF8String" value. */
	@:public @:final @:static public static var tag_UTF8String(default, null) : java.StdTypes.Int8;
	
	/** Tag value including a "printable" string */
	@:public @:final @:static public static var tag_PrintableString(default, null) : java.StdTypes.Int8;
	
	/** Tag value including a "teletype" string */
	@:public @:final @:static public static var tag_T61String(default, null) : java.StdTypes.Int8;
	
	/** Tag value including an ASCII string */
	@:public @:final @:static public static var tag_IA5String(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "UTCTime" value. */
	@:public @:final @:static public static var tag_UtcTime(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "GeneralizedTime" value. */
	@:public @:final @:static public static var tag_GeneralizedTime(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "GenerallString" value. */
	@:public @:final @:static public static var tag_GeneralString(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "UniversalString" value. */
	@:public @:final @:static public static var tag_UniversalString(default, null) : java.StdTypes.Int8;
	
	/** Tag value indicating an ASN.1 "BMPString" value. */
	@:public @:final @:static public static var tag_BMPString(default, null) : java.StdTypes.Int8;
	
	/**
	* Tag value indicating an ASN.1
	* "SEQUENCE" (zero to N elements, order is significant).
	*/
	@:public @:final @:static public static var tag_Sequence(default, null) : java.StdTypes.Int8;
	
	/**
	* Tag value indicating an ASN.1
	* "SEQUENCE OF" (one to N elements, order is significant).
	*/
	@:public @:final @:static public static var tag_SequenceOf(default, null) : java.StdTypes.Int8;
	
	/**
	* Tag value indicating an ASN.1
	* "SET" (zero to N members, order does not matter).
	*/
	@:public @:final @:static public static var tag_Set(default, null) : java.StdTypes.Int8;
	
	/**
	* Tag value indicating an ASN.1
	* "SET OF" (one to N members, order does not matter).
	*/
	@:public @:final @:static public static var tag_SetOf(default, null) : java.StdTypes.Int8;
	
	/**
	* Returns true if the tag class is UNIVERSAL.
	*/
	@:overload @:public public function isUniversal() : Bool;
	
	/**
	* Returns true if the tag class is APPLICATION.
	*/
	@:overload @:public public function isApplication() : Bool;
	
	/**
	* Returns true iff the CONTEXT SPECIFIC bit is set in the type tag.
	* This is associated with the ASN.1 "DEFINED BY" syntax.
	*/
	@:overload @:public public function isContextSpecific() : Bool;
	
	/**
	* Returns true iff the CONTEXT SPECIFIC TAG matches the passed tag.
	*/
	@:overload @:public public function isContextSpecific(cntxtTag : java.StdTypes.Int8) : Bool;
	
	/** Returns true iff the CONSTRUCTED bit is set in the type tag. */
	@:overload @:public public function isConstructed() : Bool;
	
	/**
	* Returns true iff the CONSTRUCTED TAG matches the passed tag.
	*/
	@:overload @:public public function isConstructed(constructedTag : java.StdTypes.Int8) : Bool;
	
	/**
	* Creates a PrintableString or UTF8string DER value from a string
	*/
	@:overload @:public public function new(value : String) : Void;
	
	/**
	* Creates a string type DER value from a String object
	* @param stringTag the tag for the DER value to create
	* @param value the String object to use for the DER value
	*/
	@:overload @:public public function new(stringTag : java.StdTypes.Int8, value : String) : Void;
	
	/**
	* Creates a DerValue from a tag and some DER-encoded data.
	*
	* @param tag the DER type tag
	* @param data the DER-encoded data
	*/
	@:overload @:public public function new(tag : java.StdTypes.Int8, data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Get an ASN.1/DER encoded datum from a buffer.  The
	* entire buffer must hold exactly one datum, including
	* its tag and length.
	*
	* @param buf buffer holding a single DER-encoded datum.
	*/
	@:overload @:public public function new(buf : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Get an ASN.1/DER encoded datum from part of a buffer.
	* That part of the buffer must hold exactly one datum, including
	* its tag and length.
	*
	* @param buf the buffer
	* @param offset start point of the single DER-encoded dataum
	* @param length how many bytes are in the encoded datum
	*/
	@:overload @:public public function new(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Get an ASN1/DER encoded datum from an input stream.  The
	* stream may have additional data following the encoded datum.
	* In case of indefinite length encoded datum, the input stream
	* must hold only one datum.
	*
	* @param in the input stream holding a single DER datum,
	*  which may be followed by additional data
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Encode an ASN1/DER encoded datum onto a DER output stream.
	*/
	@:overload @:public public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	@:overload @:public @:final public function getData() : sun.security.util.DerInputStream;
	
	@:overload @:public @:final public function getTag() : java.StdTypes.Int8;
	
	/**
	* Returns an ASN.1 BOOLEAN
	*
	* @return the boolean held in this DER value
	*/
	@:overload @:public public function getBoolean() : Bool;
	
	/**
	* Returns an ASN.1 OBJECT IDENTIFIER.
	*
	* @return the OID held in this DER value
	*/
	@:overload @:public public function getOID() : sun.security.util.ObjectIdentifier;
	
	/**
	* Returns an ASN.1 OCTET STRING
	*
	* @return the octet string held in this DER value
	*/
	@:overload @:public public function getOctetString() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns an ASN.1 INTEGER value as an integer.
	*
	* @return the integer held in this DER value.
	*/
	@:overload @:public public function getInteger() : Int;
	
	/**
	* Returns an ASN.1 INTEGER value as a BigInteger.
	*
	* @return the integer held in this DER value as a BigInteger.
	*/
	@:overload @:public public function getBigInteger() : java.math.BigInteger;
	
	/**
	* Returns an ASN.1 INTEGER value as a positive BigInteger.
	* This is just to deal with implementations that incorrectly encode
	* some values as negative.
	*
	* @return the integer held in this DER value as a BigInteger.
	*/
	@:overload @:public public function getPositiveBigInteger() : java.math.BigInteger;
	
	/**
	* Returns an ASN.1 ENUMERATED value.
	*
	* @return the integer held in this DER value.
	*/
	@:overload @:public public function getEnumerated() : Int;
	
	/**
	* Returns an ASN.1 BIT STRING value.  The bit string must be byte-aligned.
	*
	* @return the bit string held in this value
	*/
	@:overload @:public public function getBitString() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns an ASN.1 BIT STRING value that need not be byte-aligned.
	*
	* @return a BitArray representing the bit string held in this value
	*/
	@:overload @:public public function getUnalignedBitString() : sun.security.util.BitArray;
	
	/**
	* Returns the name component as a Java string, regardless of its
	* encoding restrictions (ASCII, T61, Printable, IA5, BMP, UTF8).
	*/
	@:overload @:public public function getAsString() : String;
	
	/**
	* Returns an ASN.1 BIT STRING value, with the tag assumed implicit
	* based on the parameter.  The bit string must be byte-aligned.
	*
	* @params tagImplicit if true, the tag is assumed implicit.
	* @return the bit string held in this value
	*/
	@:overload @:public public function getBitString(tagImplicit : Bool) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns an ASN.1 BIT STRING value, with the tag assumed implicit
	* based on the parameter.  The bit string need not be byte-aligned.
	*
	* @params tagImplicit if true, the tag is assumed implicit.
	* @return the bit string held in this value
	*/
	@:overload @:public public function getUnalignedBitString(tagImplicit : Bool) : sun.security.util.BitArray;
	
	/**
	* Helper routine to return all the bytes contained in the
	* DerInputStream associated with this object.
	*/
	@:overload @:public public function getDataBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns an ASN.1 STRING value
	*
	* @return the printable string held in this value
	*/
	@:overload @:public public function getPrintableString() : String;
	
	/**
	* Returns an ASN.1 T61 (Teletype) STRING value
	*
	* @return the teletype string held in this value
	*/
	@:overload @:public public function getT61String() : String;
	
	/**
	* Returns an ASN.1 IA5 (ASCII) STRING value
	*
	* @return the ASCII string held in this value
	*/
	@:overload @:public public function getIA5String() : String;
	
	/**
	* Returns the ASN.1 BMP (Unicode) STRING value as a Java string.
	*
	* @return a string corresponding to the encoded BMPString held in
	* this value
	*/
	@:overload @:public public function getBMPString() : String;
	
	/**
	* Returns the ASN.1 UTF-8 STRING value as a Java String.
	*
	* @return a string corresponding to the encoded UTF8String held in
	* this value
	*/
	@:overload @:public public function getUTF8String() : String;
	
	/**
	* Returns the ASN.1 GENERAL STRING value as a Java String.
	*
	* @return a string corresponding to the encoded GeneralString held in
	* this value
	*/
	@:overload @:public public function getGeneralString() : String;
	
	/**
	* Returns a Date if the DerValue is UtcTime.
	*
	* @return the Date held in this DER value
	*/
	@:overload @:public public function getUTCTime() : java.util.Date;
	
	/**
	* Returns a Date if the DerValue is GeneralizedTime.
	*
	* @return the Date held in this DER value
	*/
	@:overload @:public public function getGeneralizedTime() : java.util.Date;
	
	/**
	* Returns true iff the other object is a DER value which
	* is bitwise equal to this one.
	*
	* @param other the object being compared with this one
	*/
	@:overload @:public public function equals(other : Dynamic) : Bool;
	
	/**
	* Bitwise equality comparison.  DER encoded values have a single
	* encoding, so that bitwise equality of the encoded values is an
	* efficient way to establish equivalence of the unencoded values.
	*
	* @param other the object being compared with this one
	*/
	@:overload @:public public function equals(other : sun.security.util.DerValue) : Bool;
	
	/**
	* Returns a printable representation of the value.
	*
	* @return printable representation of the value
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns a DER-encoded value, such that if it's passed to the
	* DerValue constructor, a value equivalent to "this" is returned.
	*
	* @return DER-encoded value, including tag and length.
	*/
	@:overload @:public public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* For "set" and "sequence" types, this function may be used
	* to return a DER stream of the members of the set or sequence.
	* This operation is not supported for primitive types such as
	* integers or bit strings.
	*/
	@:overload @:public public function toDerInputStream() : sun.security.util.DerInputStream;
	
	/**
	* Get the length of the encoded value.
	*/
	@:overload @:public public function length() : Int;
	
	/**
	* Determine if a character is one of the permissible characters for
	* PrintableString:
	* A-Z, a-z, 0-9, space, apostrophe (39), left and right parentheses,
	* plus sign, comma, hyphen, period, slash, colon, equals sign,
	* and question mark.
	*
	* Characters that are *not* allowed in PrintableString include
	* exclamation point, quotation mark, number sign, dollar sign,
	* percent sign, ampersand, asterisk, semicolon, less than sign,
	* greater than sign, at sign, left and right square brackets,
	* backslash, circumflex (94), underscore, back quote (96),
	* left and right curly brackets, vertical line, tilde,
	* and the control codes (0-31 and 127).
	*
	* This list is based on X.680 (the ASN.1 spec).
	*/
	@:overload @:public @:static public static function isPrintableStringChar(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Create the tag of the attribute.
	*
	* @params class the tag class type, one of UNIVERSAL, CONTEXT,
	*               APPLICATION or PRIVATE
	* @params form if true, the value is constructed, otherwise it
	* is primitive.
	* @params val the tag value
	*/
	@:overload @:public @:static public static function createTag(tagClass : java.StdTypes.Int8, form : Bool, val : java.StdTypes.Int8) : java.StdTypes.Int8;
	
	/**
	* Set the tag of the attribute. Commonly used to reset the
	* tag value used for IMPLICIT encodings.
	*
	* @params tag the tag value
	*/
	@:overload @:public public function resetTag(tag : java.StdTypes.Int8) : Void;
	
	/**
	* Returns a hashcode for this DerValue.
	*
	* @return a hashcode for this DerValue.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
