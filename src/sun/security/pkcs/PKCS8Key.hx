package sun.security.pkcs;
/*
* Copyright (c) 1996, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Holds a PKCS#8 key, for example a private key
*
* @author Dave Brownell
* @author Benjamin Renaud
*/
extern class PKCS8Key implements java.security.PrivateKey
{
	/* The algorithm information (name, parameters, etc). */
	private var algid : sun.security.x509.AlgorithmId;
	
	/* The key bytes, without the algorithm information */
	private var key : java.NativeArray<java.StdTypes.Int8>;
	
	/* The encoded for the key. */
	private var encodedKey : java.NativeArray<java.StdTypes.Int8>;
	
	/* The version for this key */
	public static var version(default, null) : java.math.BigInteger;
	
	/**
	* Default constructor.  The key constructed must have its key
	* and algorithm initialized before it may be used, for example
	* by using <code>decode</code>.
	*/
	@:overload public function new() : Void;
	
	/*
	* Binary backwards compatibility. New uses should call parseKey().
	*/
	@:overload public static function parse(_in : sun.security.util.DerValue) : PKCS8Key;
	
	/**
	* Construct PKCS#8 subject public key from a DER value.  If
	* the runtime environment is configured with a specific class for
	* this kind of key, a subclass is returned.  Otherwise, a generic
	* PKCS8Key object is returned.
	*
	* <P>This mechanism gurantees that keys (and algorithms) may be
	* freely manipulated and transferred, without risk of losing
	* information.  Also, when a key (or algorithm) needs some special
	* handling, that specific need can be accomodated.
	*
	* @param in the DER-encoded SubjectPublicKeyInfo value
	* @exception IOException on data format errors
	*/
	@:overload public static function parseKey(_in : sun.security.util.DerValue) : java.security.PrivateKey;
	
	/**
	* Parse the key bits.  This may be redefined by subclasses to take
	* advantage of structure within the key.  For example, RSA public
	* keys encapsulate two unsigned integers (modulus and exponent) as
	* DER values within the <code>key</code> bits; Diffie-Hellman and
	* DSS/DSA keys encapsulate a single unsigned integer.
	*
	* <P>This function is called when creating PKCS#8 SubjectPublicKeyInfo
	* values using the PKCS8Key member functions, such as <code>parse</code>
	* and <code>decode</code>.
	*
	* @exception IOException if a parsing error occurs.
	* @exception InvalidKeyException if the key encoding is invalid.
	*/
	@:overload private function parseKeyBits() : Void;
	
	/**
	* Returns the algorithm to be used with this key.
	*/
	@:overload public function getAlgorithm() : String;
	
	/**
	* Returns the algorithm ID to be used with this key.
	*/
	@:overload public function getAlgorithmId() : sun.security.x509.AlgorithmId;
	
	/**
	* PKCS#8 sequence on the DER output stream.
	*/
	@:overload @:final public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Returns the DER-encoded form of the key as a byte array.
	*/
	@:overload @:synchronized public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the format for this key: "PKCS#8"
	*/
	@:overload public function getFormat() : String;
	
	/**
	* Returns the DER-encoded form of the key as a byte array.
	*
	* @exception InvalidKeyException if an encoding error occurs.
	*/
	@:overload public function encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/*
	* Returns a printable representation of the key
	*/
	@:overload public function toString() : String;
	
	/**
	* Initialize an PKCS8Key object from an input stream.  The data
	* on that input stream must be encoded using DER, obeying the
	* PKCS#8 format: a sequence consisting of a version, an algorithm
	* ID and a bit string which holds the key.  (That bit string is
	* often used to encapsulate another DER encoded sequence.)
	*
	* <P>Subclasses should not normally redefine this method; they should
	* instead provide a <code>parseKeyBits</code> method to parse any
	* fields inside the <code>key</code> member.
	*
	* @param in an input stream with a DER-encoded PKCS#8
	* SubjectPublicKeyInfo value
	*
	* @exception InvalidKeyException if a parsing error occurs.
	*/
	@:overload public function decode(_in : java.io.InputStream) : Void;
	
	@:overload public function decode(encodedKey : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload private function writeReplace() : Dynamic;
	
	/**
	* Compares two private keys. This returns false if the object with which
	* to compare is not of type <code>Key</code>.
	* Otherwise, the encoding of this key object is compared with the
	* encoding of the given key object.
	*
	* @param object the object with which to compare
	* @return <code>true</code> if this key has the same encoding as the
	* object argument; <code>false</code> otherwise.
	*/
	@:overload public function equals(object : Dynamic) : Bool;
	
	/**
	* Calculates a hash code value for this object. Objects
	* which are equal will also have the same hashcode.
	*/
	@:overload public function hashCode() : Int;
	
	
}
