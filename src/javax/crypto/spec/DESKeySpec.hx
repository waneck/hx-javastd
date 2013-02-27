package javax.crypto.spec;
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
extern class DESKeySpec implements java.security.spec.KeySpec
{
	/**
	* The constant which defines the length of a DES key in bytes.
	*/
	public static var DES_KEY_LEN(default, null) : Int;
	
	/**
	* Creates a DESKeySpec object using the first 8 bytes in
	* <code>key</code> as the key material for the DES key.
	*
	* <p> The bytes that constitute the DES key are those between
	* <code>key[0]</code> and <code>key[7]</code> inclusive.
	*
	* @param key the buffer with the DES key material. The first 8 bytes
	* of the buffer are copied to protect against subsequent modification.
	*
	* @exception NullPointerException if the given key material is
	* <code>null</code>
	* @exception InvalidKeyException if the given key material is shorter
	* than 8 bytes.
	*/
	@:overload public function new(key : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Creates a DESKeySpec object using the first 8 bytes in
	* <code>key</code>, beginning at <code>offset</code> inclusive,
	* as the key material for the DES key.
	*
	* <p> The bytes that constitute the DES key are those between
	* <code>key[offset]</code> and <code>key[offset+7]</code> inclusive.
	*
	* @param key the buffer with the DES key material. The first 8 bytes
	* of the buffer beginning at <code>offset</code> inclusive are copied
	* to protect against subsequent modification.
	* @param offset the offset in <code>key</code>, where the DES key
	* material starts.
	*
	* @exception NullPointerException if the given key material is
	* <code>null</code>
	* @exception InvalidKeyException if the given key material, starting at
	* <code>offset</code> inclusive, is shorter than 8 bytes.
	*/
	@:overload public function new(key : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Void;
	
	/**
	* Returns the DES key material.
	*
	* @return the DES key material. Returns a new array
	* each time this method is called.
	*/
	@:overload public function getKey() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Checks if the given DES key material, starting at <code>offset</code>
	* inclusive, is parity-adjusted.
	*
	* @param key the buffer with the DES key material.
	* @param offset the offset in <code>key</code>, where the DES key
	* material starts.
	*
	* @return true if the given DES key material is parity-adjusted, false
	* otherwise.
	*
	* @exception InvalidKeyException if the given key material is
	* <code>null</code>, or starting at <code>offset</code> inclusive, is
	* shorter than 8 bytes.
	*/
	@:overload public static function isParityAdjusted(key : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Bool;
	
	/**
	* Checks if the given DES key material is weak or semi-weak.
	*
	* @param key the buffer with the DES key material.
	* @param offset the offset in <code>key</code>, where the DES key
	* material starts.
	*
	* @return true if the given DES key material is weak or semi-weak, false
	* otherwise.
	*
	* @exception InvalidKeyException if the given key material is
	* <code>null</code>, or starting at <code>offset</code> inclusive, is
	* shorter than 8 bytes.
	*/
	@:overload public static function isWeak(key : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Bool;
	
	
}
