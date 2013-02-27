package sun.security.provider;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class SecureRandom extends java.security.SecureRandomSpi implements java.io.Serializable
{
	/**
	* This empty constructor automatically seeds the generator.  We attempt
	* to provide sufficient seed bytes to completely randomize the internal
	* state of the generator (20 bytes).  Note, however, that our seed
	* generation algorithm has not been thoroughly studied or widely deployed.
	*
	* <p>The first time this constructor is called in a given Virtual Machine,
	* it may take several seconds of CPU time to seed the generator, depending
	* on the underlying hardware.  Successive calls run quickly because they
	* rely on the same (internal) pseudo-random number generator for their
	* seed bits.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the given number of seed bytes, computed using the seed
	* generation algorithm that this class uses to seed itself.  This
	* call may be used to seed other random number generators.  While
	* we attempt to return a "truly random" sequence of bytes, we do not
	* know exactly how random the bytes returned by this call are.  (See
	* the empty constructor <a href = "#SecureRandom">SecureRandom</a>
	* for a brief description of the underlying algorithm.)
	* The prudent user will err on the side of caution and get extra
	* seed bytes, although it should be noted that seed generation is
	* somewhat costly.
	*
	* @param numBytes the number of seed bytes to generate.
	*
	* @return the seed bytes.
	*/
	@:overload override public function engineGenerateSeed(numBytes : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Reseeds this random object. The given seed supplements, rather than
	* replaces, the existing seed. Thus, repeated calls are guaranteed
	* never to reduce randomness.
	*
	* @param seed the seed.
	*/
	@:overload @:synchronized override public function engineSetSeed(seed : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Generates a user-specified number of random bytes.
	*
	* @param bytes the array to be filled in with random bytes.
	*/
	@:overload @:synchronized override public function engineNextBytes(result : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
/**
* This static object will be seeded by SeedGenerator, and used
* to seed future instances of SHA1PRNG SecureRandoms.
*
* Bloch, Effective Java Second Edition: Item 71
*/
@:native('sun$security$provider$SecureRandom$SeederHolder') @:internal extern class SecureRandom_SeederHolder
{
	
}
