package javax.crypto.spec;
/*
* Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class GCMParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* Constructs a GCMParameterSpec using the specified authentication
	* tag bit-length and IV buffer.
	*
	* @param tLen the authentication tag length (in bits)
	* @param src the IV source buffer.  The contents of the buffer are
	* copied to protect against subsequent modification.
	*
	* @throws IllegalArgumentException if {@code tLen} is negative,
	* or {@code src} is null.
	*/
	@:overload public function new(tLen : Int, src : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a GCMParameterSpec object using the specified
	* authentication tag bit-length and a subset of the specified
	* buffer as the IV.
	*
	* @param tLen the authentication tag length (in bits)
	* @param src the IV source buffer.  The contents of the
	* buffer are copied to protect against subsequent modification.
	* @param offset the offset in {@code src} where the IV starts
	* @param len the number of IV bytes
	*
	* @throws IllegalArgumentException if {@code tLen} is negative,
	* {@code src} is null, {@code len} or {@code offset} is negative,
	* or the sum of {@code offset} and {@code len} is greater than the
	* length of the {@code src} byte array.
	*/
	@:overload public function new(tLen : Int, src : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Returns the authentication tag length.
	*
	* @return the authentication tag length (in bits)
	*/
	@:overload public function getTLen() : Int;
	
	/**
	* Returns the Initialization Vector (IV).
	*
	* @return the IV.  Creates a new array each time this method
	* is called.
	*/
	@:overload public function getIV() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
