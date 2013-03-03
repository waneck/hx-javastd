package java.security;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface AlgorithmConstraints
{
	/**
	* Determines whether an algorithm is granted permission for the
	* specified cryptographic primitives.
	*
	* @param primitives a set of cryptographic primitives
	* @param algorithm the algorithm name
	* @param parameters the algorithm parameters, or null if no additional
	*     parameters
	*
	* @return true if the algorithm is permitted and can be used for all
	*     of the specified cryptographic primitives
	*
	* @throws IllegalArgumentException if primitives or algorithm is null
	*     or empty
	*/
	@:overload @:public public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, algorithm : String, parameters : java.security.AlgorithmParameters) : Bool;
	
	/**
	* Determines whether a key is granted permission for the specified
	* cryptographic primitives.
	* <p>
	* This method is usually used to check key size and key usage.
	*
	* @param primitives a set of cryptographic primitives
	* @param key the key
	*
	* @return true if the key can be used for all of the specified
	*     cryptographic primitives
	*
	* @throws IllegalArgumentException if primitives is null or empty,
	*     or the key is null
	*/
	@:overload @:public public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, key : java.security.Key) : Bool;
	
	/**
	* Determines whether an algorithm and the corresponding key are granted
	* permission for the specified cryptographic primitives.
	*
	* @param primitives a set of cryptographic primitives
	* @param algorithm the algorithm name
	* @param key the key
	* @param parameters the algorithm parameters, or null if no additional
	*     parameters
	*
	* @return true if the key and the algorithm can be used for all of the
	*     specified cryptographic primitives
	*
	* @throws IllegalArgumentException if primitives or algorithm is null
	*     or empty, or the key is null
	*/
	@:overload @:public public function permits(primitives : java.util.Set<java.security.CryptoPrimitive>, algorithm : String, key : java.security.Key, parameters : java.security.AlgorithmParameters) : Bool;
	
	
}
