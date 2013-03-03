package sun.security.provider;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class DSAKeyPairGenerator extends java.security.KeyPairGenerator implements java.security.interfaces.DSAKeyPairGenerator
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function initialize(modlen : Int, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes the DSA key pair generator. If <code>genParams</code>
	* is false, a set of pre-computed parameters is used.
	*/
	@:overload @:public public function initialize(modlen : Int, genParams : Bool, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes the DSA object using a DSA parameter object.
	*
	* @param params a fully initialized DSA parameter object.
	*/
	@:overload @:public public function initialize(params : java.security.interfaces.DSAParams, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes the DSA object using a parameter object.
	*
	* @param params the parameter set to be used to generate
	* the keys.
	* @param random the source of randomness for this generator.
	*
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key pair generator
	*/
	@:overload @:public override public function initialize(params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Generates a pair of keys usable by any JavaSecurity compliant
	* DSA implementation.
	*/
	@:overload @:public override public function generateKeyPair() : java.security.KeyPair;
	
	@:overload @:public public function generateKeyPair(p : java.math.BigInteger, q : java.math.BigInteger, g : java.math.BigInteger, random : java.security.SecureRandom) : java.security.KeyPair;
	
	
}
