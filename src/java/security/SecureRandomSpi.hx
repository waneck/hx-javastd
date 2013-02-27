package java.security;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
* This class defines the <i>Service Provider Interface</i> (<b>SPI</b>)
* for the <code>SecureRandom</code> class.
* All the abstract methods in this class must be implemented by each
* service provider who wishes to supply the implementation
* of a cryptographically strong pseudo-random number generator.
*
*
* @see SecureRandom
* @since 1.2
*/
@:require(java2) extern class SecureRandomSpi implements java.io.Serializable
{
	/**
	* Reseeds this random object. The given seed supplements, rather than
	* replaces, the existing seed. Thus, repeated calls are guaranteed
	* never to reduce randomness.
	*
	* @param seed the seed.
	*/
	@:overload @:abstract private function engineSetSeed(seed : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Generates a user-specified number of random bytes.
	*
	* <p> If a call to <code>engineSetSeed</code> had not occurred previously,
	* the first call to this method forces this SecureRandom implementation
	* to seed itself.  This self-seeding will not occur if
	* <code>engineSetSeed</code> was previously called.
	*
	* @param bytes the array to be filled in with random bytes.
	*/
	@:overload @:abstract private function engineNextBytes(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the given number of seed bytes.  This call may be used to
	* seed other random number generators.
	*
	* @param numBytes the number of seed bytes to generate.
	*
	* @return the seed bytes.
	*/
	@:overload @:abstract private function engineGenerateSeed(numBytes : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
