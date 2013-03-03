package sun.security.ssl;
/*
* Copyright (c) 2002, 2013, Oracle and/or its affiliates. All rights reserved.
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
* An SSL/TLS CipherSuite. Constants for the standard key exchange, cipher,
* and mac algorithms are also defined in this class.
*
* The CipherSuite class and the inner classes defined in this file roughly
* follow the type safe enum pattern described in Effective Java. This means:
*
*  . instances are immutable, classes are final
*
*  . there is a unique instance of every value, i.e. there are never two
*    instances representing the same CipherSuite, etc. This means equality
*    tests can be performed using == instead of equals() (although that works
*    as well). [A minor exception are *unsupported* CipherSuites read from a
*    handshake message, but this is usually irrelevant]
*
*  . instances are obtained using the static valueOf() factory methods.
*
*  . properties are defined as final variables and made available as
*    package private variables without method accessors
*
*  . if the member variable allowed is false, the given algorithm is either
*    unavailable or disabled at compile time
*
*/
@:internal extern class CipherSuite implements java.lang.Comparable<Dynamic>
{
	/**
	* Compares CipherSuites based on their priority. Has the effect of
	* sorting CipherSuites when put in a sorted collection, which is
	* used by CipherSuiteList. Follows standard Comparable contract.
	*
	* Note that for unsupported CipherSuites parsed from a handshake
	* message we violate the equals() contract.
	*/
	@:overload @:public public function compareTo(o : Dynamic) : Int;
	
	/**
	* Returns this.name.
	*/
	@:overload @:public public function toString() : String;
	
	
}
/**
* An SSL/TLS key exchange algorithm.
*/
@:native('sun$security$ssl$CipherSuite$KeyExchange') extern enum CipherSuite_KeyExchange
{
	K_NULL;
	K_RSA;
	K_RSA_EXPORT;
	K_DH_RSA;
	K_DH_DSS;
	K_DHE_DSS;
	K_DHE_RSA;
	K_DH_ANON;
	K_ECDH_ECDSA;
	K_ECDH_RSA;
	K_ECDHE_ECDSA;
	K_ECDHE_RSA;
	K_ECDH_ANON;
	K_KRB5;
	K_KRB5_EXPORT;
	K_SCSV;
	
}

/**
* An SSL/TLS bulk cipher algorithm. One instance per combination of
* cipher and key length.
*
* Also contains a factory method to obtain in initialized CipherBox
* for this algorithm.
*/
@:native('sun$security$ssl$CipherSuite$BulkCipher') @:internal extern class CipherSuite_BulkCipher
{
	@:overload @:public public function toString() : String;
	
	
}
/**
* An SSL/TLS key MAC algorithm.
*
* Also contains a factory method to obtain an initialized MAC
* for this algorithm.
*/
@:native('sun$security$ssl$CipherSuite$MacAlg') @:internal extern class CipherSuite_MacAlg
{
	@:overload @:public public function toString() : String;
	
	
}
/**
* PRFs (PseudoRandom Function) from TLS specifications.
*
* TLS 1.1- uses a single MD5/SHA1-based PRF algorithm for generating
* the necessary material.
*
* In TLS 1.2+, all existing/known CipherSuites use SHA256, however
* new Ciphersuites (e.g. RFC 5288) can define specific PRF hash
* algorithms.
*/
@:native('sun$security$ssl$CipherSuite$PRF') extern enum CipherSuite_PRF
{
	P_NONE;
	P_SHA256;
	P_SHA384;
	P_SHA512;
	
}

