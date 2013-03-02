package java.util.concurrent;
/*
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
/*
* This file is available under and governed by the GNU General Public
* License version 2 only, as published by the Free Software Foundation.
* However, the following notice accompanied the original version of this
* file:
*
* Written by Doug Lea with assistance from members of JCP JSR-166
* Expert Group and released to the public domain, as explained at
* http://creativecommons.org/publicdomain/zero/1.0/
*/
extern class ThreadLocalRandom extends java.util.Random
{
	/**
	* Returns the current thread's {@code ThreadLocalRandom}.
	*
	* @return the current thread's {@code ThreadLocalRandom}
	*/
	@:overload public static function current() : java.util.concurrent.ThreadLocalRandom;
	
	/**
	* Throws {@code UnsupportedOperationException}.  Setting seeds in
	* this generator is not supported.
	*
	* @throws UnsupportedOperationException always
	*/
	@:overload public function setSeed(seed : haxe.Int64) : Void;
	
	@:overload private function next(bits : Int) : Int;
	
	/**
	* Returns a pseudorandom, uniformly distributed value between the
	* given least value (inclusive) and bound (exclusive).
	*
	* @param least the least value returned
	* @param bound the upper bound (exclusive)
	* @throws IllegalArgumentException if least greater than or equal
	* to bound
	* @return the next value
	*/
	@:overload public function nextInt(least : Int, bound : Int) : Int;
	
	/**
	* Returns a pseudorandom, uniformly distributed value
	* between 0 (inclusive) and the specified value (exclusive).
	*
	* @param n the bound on the random number to be returned.  Must be
	*        positive.
	* @return the next value
	* @throws IllegalArgumentException if n is not positive
	*/
	@:overload public function nextLong(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns a pseudorandom, uniformly distributed value between the
	* given least value (inclusive) and bound (exclusive).
	*
	* @param least the least value returned
	* @param bound the upper bound (exclusive)
	* @return the next value
	* @throws IllegalArgumentException if least greater than or equal
	* to bound
	*/
	@:overload public function nextLong(least : haxe.Int64, bound : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns a pseudorandom, uniformly distributed {@code double} value
	* between 0 (inclusive) and the specified value (exclusive).
	*
	* @param n the bound on the random number to be returned.  Must be
	*        positive.
	* @return the next value
	* @throws IllegalArgumentException if n is not positive
	*/
	@:overload public function nextDouble(n : Float) : Float;
	
	/**
	* Returns a pseudorandom, uniformly distributed value between the
	* given least value (inclusive) and bound (exclusive).
	*
	* @param least the least value returned
	* @param bound the upper bound (exclusive)
	* @return the next value
	* @throws IllegalArgumentException if least greater than or equal
	* to bound
	*/
	@:overload public function nextDouble(least : Float, bound : Float) : Float;
	
	
}
