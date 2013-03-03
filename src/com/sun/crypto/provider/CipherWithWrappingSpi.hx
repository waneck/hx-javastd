package com.sun.crypto.provider;
/*
* Copyright (c) 1999, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class CipherWithWrappingSpi extends javax.crypto.CipherSpi
{
	/**
	* Wrap a key.
	*
	* @param key the key to be wrapped.
	*
	* @return the wrapped key.
	*
	* @exception IllegalBlockSizeException if this cipher is a block
	* cipher, no padding has been requested, and the length of the
	* encoding of the key to be wrapped is not a
	* multiple of the block size.
	*
	* @exception InvalidKeyException if it is impossible or unsafe to
	* wrap the key with this cipher (e.g., a hardware protected key is
	* being passed to a software only cipher).
	*/
	@:overload @:protected @:final override private function engineWrap(key : java.security.Key) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Unwrap a previously wrapped key.
	*
	* @param wrappedKey the key to be unwrapped.
	*
	* @param wrappedKeyAlgorithm the algorithm the wrapped key is for.
	*
	* @param wrappedKeyType the type of the wrapped key.
	* This is one of <code>Cipher.SECRET_KEY</code>,
	* <code>Cipher.PRIVATE_KEY</code>, or <code>Cipher.PUBLIC_KEY</code>.
	*
	* @return the unwrapped key.
	*
	* @exception InvalidKeyException if <code>wrappedKey</code> does not
	* represent a wrapped key, or if the algorithm associated with the
	* wrapped key is different from <code>wrappedKeyAlgorithm</code>
	* and/or its key type is different from <code>wrappedKeyType</code>.
	*
	* @exception NoSuchAlgorithmException if no installed providers
	* can create keys for the <code>wrappedKeyAlgorithm</code>.
	*/
	@:overload @:protected @:final override private function engineUnwrap(wrappedKey : java.NativeArray<java.StdTypes.Int8>, wrappedKeyAlgorithm : String, wrappedKeyType : Int) : java.security.Key;
	
	
}
