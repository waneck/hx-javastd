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
extern class DHGenParameterSpec implements java.security.spec.AlgorithmParameterSpec
{
	/**
	* Constructs a parameter set for the generation of Diffie-Hellman
	* (system) parameters. The constructed parameter set can be used to
	* initialize an
	* {@link java.security.AlgorithmParameterGenerator AlgorithmParameterGenerator}
	* object for the generation of Diffie-Hellman parameters.
	*
	* @param primeSize the size (in bits) of the prime modulus.
	* @param exponentSize the size (in bits) of the random exponent.
	*/
	@:overload @:public public function new(primeSize : Int, exponentSize : Int) : Void;
	
	/**
	* Returns the size in bits of the prime modulus.
	*
	* @return the size in bits of the prime modulus
	*/
	@:overload @:public public function getPrimeSize() : Int;
	
	/**
	* Returns the size in bits of the random exponent (private value).
	*
	* @return the size in bits of the random exponent (private value)
	*/
	@:overload @:public public function getExponentSize() : Int;
	
	
}
