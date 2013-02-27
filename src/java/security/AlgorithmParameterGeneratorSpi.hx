package java.security;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class AlgorithmParameterGeneratorSpi
{
	/**
	* Initializes this parameter generator for a certain size
	* and source of randomness.
	*
	* @param size the size (number of bits).
	* @param random the source of randomness.
	*/
	@:overload @:abstract private function engineInit(size : Int, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this parameter generator with a set of
	* algorithm-specific parameter generation values.
	*
	* @param genParamSpec the set of algorithm-specific parameter generation values.
	* @param random the source of randomness.
	*
	* @exception InvalidAlgorithmParameterException if the given parameter
	* generation values are inappropriate for this parameter generator.
	*/
	@:overload @:abstract private function engineInit(genParamSpec : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Generates the parameters.
	*
	* @return the new AlgorithmParameters object.
	*/
	@:overload @:abstract private function engineGenerateParameters() : java.security.AlgorithmParameters;
	
	
}