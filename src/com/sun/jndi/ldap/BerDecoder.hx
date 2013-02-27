package com.sun.jndi.ldap;
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
extern class BerDecoder extends com.sun.jndi.ldap.Ber
{
	/**
	* Creates a BER decoder that reads bytes from the specified buffer.
	*/
	@:overload public function new(buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, bufsize : Int) : Void;
	
	/**
	* Resets this decode to start parsing from the initial offset
	* (ie., same state as after calling the constructor).
	*/
	@:overload public function reset() : Void;
	
	/**
	* Returns the current parse position.
	* It points to the byte that will be parsed next.
	* Useful for parsing sequences.
	*/
	@:overload public function getParsePosition() : Int;
	
	/**
	* Parses a possibly variable length field.
	*/
	@:overload public function parseLength() : Int;
	
	/**
	* Parses the next sequence in this BER buffer.
	* @param rlen An array for returning size of the sequence in bytes. If null,
	*          the size is not returned.
	* @return The sequence's tag.
	*/
	@:overload public function parseSeq(rlen : java.NativeArray<Int>) : Int;
	
	/**
	* Parses the next byte in this BER buffer.
	* @return The byte parsed.
	*/
	@:overload public function parseByte() : Int;
	
	/**
	* Returns the next byte in this BER buffer without consuming it.
	* @return The next byte.
	*/
	@:overload public function peekByte() : Int;
	
	/**
	* Parses an ASN_BOOLEAN tagged integer from this BER buffer.
	* @return true if the tagged integer is 0; false otherwise.
	*/
	@:overload public function parseBoolean() : Bool;
	
	/**
	* Parses an ASN_ENUMERATED tagged integer from this BER buffer.
	* @return The tag of enumeration.
	*/
	@:overload public function parseEnumeration() : Int;
	
	/**
	* Parses an ASN_INTEGER tagged integer from this BER buffer.
	* @return The value of the integer.
	*/
	@:overload public function parseInt() : Int;
	
	/**
	* Parses a string.
	*/
	@:overload public function parseString(decodeUTF8 : Bool) : String;
	
	/**
	* Parses a string of a given tag from this BER buffer.
	*<blockquote><pre>
	*BER simple string ::= tag length {byte}*
	*</pre></blockquote>
	* @param rlen An array for holding the relative parsed offset; if null
	*  offset not set.
	* @param decodeUTF8 If true, use UTF-8 when decoding the string; otherwise
	* use ISO-Latin-1 (8859_1). Use true for LDAPv3; false for LDAPv2.
	* @param tag The tag that precedes the string.
	* @return The non-null parsed string.
	*/
	@:overload public function parseStringWithTag(tag : Int, decodeUTF8 : Bool, rlen : java.NativeArray<Int>) : String;
	
	/**
	* Parses an octet string of a given type(tag) from this BER buffer.
	* <blockquote><pre>
	* BER Binary Data of type "tag" ::= tag length {byte}*
	*</pre></blockquote>
	*
	* @param tag The tag to look for.
	* @param rlen An array for returning the relative parsed position. If null,
	*          the relative parsed position is not returned.
	* @return A non-null array containing the octet string.
	* @throws DecodeException If the next byte in the BER buffer is not
	* <tt>tag</tt>, or if length specified in the BER buffer exceeds the
	* number of bytes left in the buffer.
	*/
	@:overload public function parseOctetString(tag : Int, rlen : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the number of unparsed bytes in this BER buffer.
	*/
	@:overload public function bytesLeft() : Int;
	
	
}
