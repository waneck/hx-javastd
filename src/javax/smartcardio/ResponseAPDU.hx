package javax.smartcardio;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ResponseAPDU implements java.io.Serializable
{
	/**
	* Constructs a ResponseAPDU from a byte array containing the complete
	* APDU contents (conditional body and trailed).
	*
	* <p>Note that the byte array is cloned to protect against subsequent
	* modification.
	*
	* @param apdu the complete response APDU
	*
	* @throws NullPointerException if apdu is null
	* @throws IllegalArgumentException if apdu.length is less than 2
	*/
	@:overload public function new(apdu : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the number of data bytes in the response body (Nr) or 0 if this
	* APDU has no body. This call is equivalent to
	* <code>getData().length</code>.
	*
	* @return the number of data bytes in the response body or 0 if this APDU
	* has no body.
	*/
	@:overload public function getNr() : Int;
	
	/**
	* Returns a copy of the data bytes in the response body. If this APDU as
	* no body, this method returns a byte array with a length of zero.
	*
	* @return a copy of the data bytes in the response body or the empty
	*    byte array if this APDU has no body.
	*/
	@:overload public function getData() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the value of the status byte SW1 as a value between 0 and 255.
	*
	* @return the value of the status byte SW1 as a value between 0 and 255.
	*/
	@:overload public function getSW1() : Int;
	
	/**
	* Returns the value of the status byte SW2 as a value between 0 and 255.
	*
	* @return the value of the status byte SW2 as a value between 0 and 255.
	*/
	@:overload public function getSW2() : Int;
	
	/**
	* Returns the value of the status bytes SW1 and SW2 as a single
	* status word SW.
	* It is defined as
	* <code>(getSW1() << 8) | getSW2()</code>.
	*
	* @return the value of the status word SW.
	*/
	@:overload public function getSW() : Int;
	
	/**
	* Returns a copy of the bytes in this APDU.
	*
	* @return a copy of the bytes in this APDU.
	*/
	@:overload public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a string representation of this response APDU.
	*
	* @return a String representation of this response APDU.
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares the specified object with this response APDU for equality.
	* Returns true if the given object is also a ResponseAPDU and its bytes are
	* identical to the bytes in this ResponseAPDU.
	*
	* @param obj the object to be compared for equality with this response APDU
	* @return true if the specified object is equal to this response APDU
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this response APDU.
	*
	* @return the hash code value for this response APDU.
	*/
	@:overload public function hashCode() : Int;
	
	
}
