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
extern class BerEncoder extends com.sun.jndi.ldap.Ber
{
	/**
	* Creates a BER buffer for encoding.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a BER buffer of a specified size for encoding.
	* Specify the initial bufsize.  Buffer will be expanded as needed.
	* @param bufsize The number of bytes for the buffer.
	*/
	@:overload public function new(bufsize : Int) : Void;
	
	/**
	* Resets encoder to state when newly constructed.  Zeros out
	* internal data structures.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Gets the number of encoded bytes in this BER buffer.
	*/
	@:overload public function getDataLen() : Int;
	
	/**
	* Gets the buffer that contains the BER encoding. Throws an
	* exception if unmatched beginSeq() and endSeq() pairs were
	* encountered. Not entire buffer contains encoded bytes.
	* Use getDataLen() to determine number of encoded bytes.
	* Use getBuffer(true) to get rid of excess bytes in array.
	* @throws IllegalStateException If buffer contains unbalanced sequence.
	*/
	@:overload public function getBuf() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the buffer that contains the BER encoding, trimming unused bytes.
	*
	* @throws IllegalStateException If buffer contains unbalanced sequence.
	*/
	@:overload public function getTrimmedBuf() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Begin encoding a sequence with a tag.
	*/
	@:overload public function beginSeq(tag : Int) : Void;
	
	/**
	* Terminate a BER sequence.
	*/
	@:overload public function endSeq() : Void;
	
	/**
	* Encode a single byte.
	*/
	@:overload public function encodeByte(b : Int) : Void;
	
	/*
	* Encodes an int.
	*<blockquote><pre>
	* BER integer ::= 0x02 berlength byte {byte}*
	*</pre></blockquote>
	*/
	@:overload public function encodeInt(i : Int) : Void;
	
	/**
	* Encodes an int and a tag.
	*<blockquote><pre>
	* BER integer w tag ::= tag berlength byte {byte}*
	*</pre></blockquote>
	*/
	@:overload public function encodeInt(i : Int, tag : Int) : Void;
	
	/**
	* Encodes a boolean.
	*<blockquote><pre>
	* BER boolean ::= 0x01 0x01 {0xff|0x00}
	*</pre></blockquote>
	*/
	@:overload public function encodeBoolean(b : Bool) : Void;
	
	/**
	* Encodes a boolean and a tag
	*<blockquote><pre>
	* BER boolean w TAG ::= tag 0x01 {0xff|0x00}
	*</pre></blockquote>
	*/
	@:overload public function encodeBoolean(b : Bool, tag : Int) : Void;
	
	/**
	* Encodes a string.
	*<blockquote><pre>
	* BER string ::= 0x04 strlen byte1 byte2...
	*</pre></blockquote>
	* The string is converted into bytes using UTF-8 or ISO-Latin-1.
	*/
	@:overload public function encodeString(str : String, encodeUTF8 : Bool) : Void;
	
	/**
	* Encodes a string and a tag.
	*<blockquote><pre>
	* BER string w TAG ::= tag strlen byte1 byte2...
	*</pre></blockquote>
	*/
	@:overload public function encodeString(str : String, tag : Int, encodeUTF8 : Bool) : Void;
	
	/**
	* Encodes a portion of an octet string and a tag.
	*/
	@:overload public function encodeOctetString(tb : java.NativeArray<java.StdTypes.Int8>, tag : Int, tboffset : Int, length : Int) : Void;
	
	/**
	* Encodes an octet string and a tag.
	*/
	@:overload public function encodeOctetString(tb : java.NativeArray<java.StdTypes.Int8>, tag : Int) : Void;
	
	/**
	* Encodes an array of strings.
	*/
	@:overload public function encodeStringArray(strs : java.NativeArray<String>, encodeUTF8 : Bool) : Void;
	
	
}
