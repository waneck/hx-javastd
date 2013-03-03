package java.security.spec;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class RSAKeyGenParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* The public-exponent value F0 = 3.
	*/
	@:public @:static @:final public static var F0(default, null) : java.math.BigInteger;
	
	/**
	* The public exponent-value F4 = 65537.
	*/
	@:public @:static @:final public static var F4(default, null) : java.math.BigInteger;
	
	/**
	* Constructs a new <code>RSAParameterSpec</code> object from the
	* given keysize and public-exponent value.
	*
	* @param keysize the modulus size (specified in number of bits)
	* @param publicExponent the public exponent
	*/
	@:overload @:public public function new(keysize : Int, publicExponent : java.math.BigInteger) : Void;
	
	/**
	* Returns the keysize.
	*
	* @return the keysize.
	*/
	@:overload @:public public function getKeysize() : Int;
	
	/**
	* Returns the public-exponent value.
	*
	* @return the public-exponent value.
	*/
	@:overload @:public public function getPublicExponent() : java.math.BigInteger;
	
	
}
