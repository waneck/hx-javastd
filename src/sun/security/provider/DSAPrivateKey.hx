package sun.security.provider;
/*
* Copyright (c) 1996, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class DSAPrivateKey extends sun.security.pkcs.PKCS8Key implements java.security.interfaces.DSAPrivateKey implements java.io.Serializable
{
	/*
	* Keep this constructor for backwards compatibility with JDK1.1.
	*/
	@:overload public function new() : Void;
	
	/**
	* Make a DSA private key out of a private key and three parameters.
	*/
	@:overload public function new(x : java.math.BigInteger, p : java.math.BigInteger, q : java.math.BigInteger, g : java.math.BigInteger) : Void;
	
	/**
	* Make a DSA private key from its DER encoding (PKCS #8).
	*/
	@:overload public function new(encoded : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the DSA parameters associated with this key, or null if the
	* parameters could not be parsed.
	*/
	@:overload public function getParams() : java.security.interfaces.DSAParams;
	
	/**
	* Get the raw private key, x, without the parameters.
	*
	* @see getParameters
	*/
	@:overload public function getX() : java.math.BigInteger;
	
	@:overload public function toString() : String;
	
	@:overload private function parseKeyBits() : Void;
	
	
}
