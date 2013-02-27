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
* The <CODE>BerEncoder</CODE> class is used for encoding data using BER.
*
* A <CODE>BerEncoder</CODE> needs to be set up with a byte buffer. The encoded
* data are stored in this byte buffer.
* <P>
* NOTE : the buffer is filled from end to start. This means the caller
* needs to encode its data in the reverse order.
*
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*
* @since 1.5
*/
@:require(java5) extern class BerEncoder
{
	/**
	* Constructs a new encoder and attaches it to the specified byte string.
	*
	* @param b The byte string containing the encoded data.
	*/
	@:overload public function new(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Trim the encoding data and returns the length of the encoding.
	*
	* The encoder does backward encoding : so the bytes buffer is
	* filled from end to start. The encoded data must be shift before
	* the buffer can be used. This is the purpose of the <CODE>trim</CODE> method.
	*
	* After a call to the <CODE>trim</CODE> method, the encoder is reinitialized and <CODE>putXXX</CODE>
	* overwrite any existing encoded data.
	*
	* @return The length of the encoded data.
	*/
	@:overload public function trim() : Int;
	
	/**
	* Put an integer.
	*
	* @param v The integer to encode.
	*/
	@:overload public function putInteger(v : Int) : Void;
	
	/**
	* Put an integer with the specified tag.
	*
	* @param v The integer to encode.
	* @param tag The tag to encode.
	*/
	@:overload public function putInteger(v : Int, tag : Int) : Void;
	
	/**
	* Put an integer expressed as a long.
	*
	* @param v The long to encode.
	*/
	@:overload public function putInteger(v : haxe.Int64) : Void;
	
	/**
	* Put an integer expressed as a long with the specified tag.
	*
	* @param v The long to encode
	* @param tag The tag to encode.
	*/
	@:overload public function putInteger(v : haxe.Int64, tag : Int) : Void;
	
	/**
	* Put an octet string.
	*
	* @param s The bytes to encode
	*/
	@:overload public function putOctetString(s : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Put an octet string with a specified tag.
	*
	* @param s The bytes to encode
	* @param tag The tag to encode.
	*/
	@:overload public function putOctetString(s : java.NativeArray<java.StdTypes.Int8>, tag : Int) : Void;
	
	/**
	* Put an object identifier.
	*
	* @param s The oid to encode.
	*/
	@:overload public function putOid(s : java.NativeArray<haxe.Int64>) : Void;
	
	/**
	* Put an object identifier with a specified tag.
	*
	* @param s The integer to encode.
	* @param tag The tag to encode.
	*/
	@:overload public function putOid(s : java.NativeArray<haxe.Int64>, tag : Int) : Void;
	
	/**
	* Put a <CODE>NULL</CODE> value.
	*/
	@:overload public function putNull() : Void;
	
	/**
	* Put a <CODE>NULL</CODE> value with a specified tag.
	*
	* @param tag The tag to encode.
	*/
	@:overload public function putNull(tag : Int) : Void;
	
	/**
	* Put an <CODE>ANY</CODE> value. In fact, this method does not encode anything.
	* It simply copies the specified bytes into the encoding.
	*
	* @param s The encoding of the <CODE>ANY</CODE> value.
	*/
	@:overload public function putAny(s : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Put an <CODE>ANY</CODE> value. Only the first <CODE>byteCount</CODE> are considered.
	*
	* @param s The encoding of the <CODE>ANY</CODE> value.
	* @param byteCount The number of bytes of the encoding.
	*/
	@:overload public function putAny(s : java.NativeArray<java.StdTypes.Int8>, byteCount : Int) : Void;
	
	/**
	* Open a sequence.
	* The encoder push the current position on its stack.
	*/
	@:overload public function openSequence() : Void;
	
	/**
	* Close a sequence.
	* The decode pull the stack to know the end of the current sequence.
	*/
	@:overload public function closeSequence() : Void;
	
	/**
	* Close a sequence with the specified tag.
	*/
	@:overload public function closeSequence(tag : Int) : Void;
	
	public static var BooleanTag(default, null) : Int;
	
	public static var IntegerTag(default, null) : Int;
	
	public static var OctetStringTag(default, null) : Int;
	
	public static var NullTag(default, null) : Int;
	
	public static var OidTag(default, null) : Int;
	
	public static var SequenceTag(default, null) : Int;
	
	/**
	* Put a tag and move the current position backward.
	*
	* @param tag The tag to encode.
	*/
	@:overload @:final private function putTag(tag : Int) : Void;
	
	/**
	* Put a length and move the current position backward.
	*
	* @param length The length to encode.
	*/
	@:overload @:final private function putLength(length : Int) : Void;
	
	/**
	* Put an integer value and move the current position backward.
	*
	* @param v The integer to encode.
	*/
	@:overload @:final private function putIntegerValue(v : Int) : Void;
	
	/**
	* Put an integer value expressed as a long.
	*
	* @param v The integer to encode.
	*/
	@:overload @:final private function putIntegerValue(v : haxe.Int64) : Void;
	
	/**
	* Put a byte string and move the current position backward.
	*
	* @param s The byte string to encode.
	*/
	@:overload @:final private function putStringValue(s : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Put an oid and move the current position backward.
	*
	* @param s The oid to encode.
	*/
	@:overload @:final private function putOidValue(s : java.NativeArray<haxe.Int64>) : Void;
	
	private var bytes(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	private var start : Int;
	
	private var stackBuf(default, null) : java.NativeArray<Int>;
	
	private var stackTop : Int;
	
	
}
