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
/**
* A Smart Card's answer-to-reset bytes. A Card's ATR object can be obtained
* by calling {@linkplain Card#getATR}.
* This class does not attempt to verify that the ATR encodes a semantically
* valid structure.
*
* <p>Instances of this class are immutable. Where data is passed in or out
* via byte arrays, defensive cloning is performed.
*
* @see Card#getATR
*
* @since   1.6
* @author  Andreas Sterbenz
* @author  JSR 268 Expert Group
*/
@:require(java6) extern class ATR implements java.io.Serializable
{
	/**
	* Constructs an ATR from a byte array.
	*
	* @param atr the byte array containing the answer-to-reset bytes
	* @throws NullPointerException if <code>atr</code> is null
	*/
	@:overload public function new(atr : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns a copy of the bytes in this ATR.
	*
	* @return a copy of the bytes in this ATR.
	*/
	@:overload public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a copy of the historical bytes in this ATR.
	* If this ATR does not contain historical bytes, an array of length
	* zero is returned.
	*
	* @return a copy of the historical bytes in this ATR.
	*/
	@:overload public function getHistoricalBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns a string representation of this ATR.
	*
	* @return a String representation of this ATR.
	*/
	@:overload public function toString() : String;
	
	/**
	* Compares the specified object with this ATR for equality.
	* Returns true if the given object is also an ATR and its bytes are
	* identical to the bytes in this ATR.
	*
	* @param obj the object to be compared for equality with this ATR
	* @return true if the specified object is equal to this ATR
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns the hash code value for this ATR.
	*
	* @return the hash code value for this ATR.
	*/
	@:overload public function hashCode() : Int;
	
	
}
