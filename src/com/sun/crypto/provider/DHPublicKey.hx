package com.sun.crypto.provider;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* A public key in X.509 format for the Diffie-Hellman key agreement algorithm.
*
* @author Jan Luehe
*
*
* @see DHPrivateKey
* @see java.security.KeyAgreement
*/
@:internal extern class DHPublicKey implements java.security.PublicKey implements javax.crypto.interfaces.DHPublicKey implements java.io.Serializable
{
	/**
	* Returns the encoding format of this key: "X.509"
	*/
	@:overload @:public public function getFormat() : String;
	
	/**
	* Returns the name of the algorithm associated with this key: "DH"
	*/
	@:overload @:public public function getAlgorithm() : String;
	
	/**
	* Get the encoding of the key.
	*/
	@:overload @:public @:synchronized public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the public value, <code>y</code>.
	*
	* @return the public value, <code>y</code>
	*/
	@:overload @:public public function getY() : java.math.BigInteger;
	
	/**
	* Returns the key parameters.
	*
	* @return the key parameters
	*/
	@:overload @:public public function getParams() : javax.crypto.spec.DHParameterSpec;
	
	@:overload @:public public function toString() : String;
	
	/**
	* Calculates a hash code value for the object.
	* Objects that are equal will also have the same hashcode.
	*/
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	
}
