package javax.crypto;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class MacSpi
{
	/**
	* Returns the length of the MAC in bytes.
	*
	* @return the MAC length in bytes.
	*/
	@:overload @:abstract private function engineGetMacLength() : Int;
	
	/**
	* Initializes the MAC with the given (secret) key and algorithm
	* parameters.
	*
	* @param key the (secret) key.
	* @param params the algorithm parameters.
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this MAC.
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this MAC.
	*/
	@:overload @:abstract private function engineInit(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Processes the given byte.
	*
	* @param input the input byte to be processed.
	*/
	@:overload @:abstract private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	/**
	* Processes the first <code>len</code> bytes in <code>input</code>,
	* starting at <code>offset</code> inclusive.
	*
	* @param input the input buffer.
	* @param offset the offset in <code>input</code> where the input starts.
	* @param len the number of bytes to process.
	*/
	@:overload @:abstract private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	/**
	* Processes <code>input.remaining()</code> bytes in the ByteBuffer
	* <code>input</code>, starting at <code>input.position()</code>.
	* Upon return, the buffer's position will be equal to its limit;
	* its limit will not have changed.
	*
	* <p>Subclasses should consider overriding this method if they can
	* process ByteBuffers more efficiently than byte arrays.
	*
	* @param input the ByteBuffer
	* @since 1.5
	*/
	@:require(java5) @:overload private function engineUpdate(input : java.nio.ByteBuffer) : Void;
	
	/**
	* Completes the MAC computation and resets the MAC for further use,
	* maintaining the secret key that the MAC was initialized with.
	*
	* @return the MAC result.
	*/
	@:overload @:abstract private function engineDoFinal() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Resets the MAC for further use, maintaining the secret key that the
	* MAC was initialized with.
	*/
	@:overload @:abstract private function engineReset() : Void;
	
	/**
	* Returns a clone if the implementation is cloneable.
	*
	* @return a clone if the implementation is cloneable.
	*
	* @exception CloneNotSupportedException if this is called
	* on an implementation that does not support <code>Cloneable</code>.
	*/
	@:overload public function clone() : Dynamic;
	
	
}
