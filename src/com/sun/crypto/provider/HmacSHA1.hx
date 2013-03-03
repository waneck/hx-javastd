package com.sun.crypto.provider;
/*
* Copyright (c) 1998, 2009, Oracle and/or its affiliates. All rights reserved.
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
* This is an implementation of the HMAC-SHA1 algorithm.
*
* @author Jan Luehe
*/
extern class HmacSHA1 extends javax.crypto.MacSpi implements java.lang.Cloneable
{
	/**
	* Standard constructor, creates a new HmacSHA1 instance.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Returns the length of the HMAC in bytes.
	*
	* @return the HMAC length in bytes.
	*/
	@:overload @:protected override private function engineGetMacLength() : Int;
	
	/**
	* Initializes the HMAC with the given secret key and algorithm parameters.
	*
	* @param key the secret key.
	* @param params the algorithm parameters.
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* initializing this MAC.
	* @exception InvalidAlgorithmParameterException if the given algorithm
	* parameters are inappropriate for this MAC.
	*/
	@:overload @:protected override private function engineInit(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec) : Void;
	
	/**
	* Processes the given byte.
	*
	* @param input the input byte to be processed.
	*/
	@:overload @:protected override private function engineUpdate(input : java.StdTypes.Int8) : Void;
	
	/**
	* Processes the first <code>len</code> bytes in <code>input</code>,
	* starting at <code>offset</code>.
	*
	* @param input the input buffer.
	* @param offset the offset in <code>input</code> where the input starts.
	* @param len the number of bytes to process.
	*/
	@:overload @:protected override private function engineUpdate(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Void;
	
	@:overload @:protected override private function engineUpdate(input : java.nio.ByteBuffer) : Void;
	
	/**
	* Completes the HMAC computation and resets the HMAC for further use,
	* maintaining the secret key that the HMAC was initialized with.
	*
	* @return the HMAC result.
	*/
	@:overload @:protected override private function engineDoFinal() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Resets the HMAC for further use, maintaining the secret key that the
	* HMAC was initialized with.
	*/
	@:overload @:protected override private function engineReset() : Void;
	
	/*
	* Clones this object.
	*/
	@:overload @:public override public function clone() : Dynamic;
	
	
}
