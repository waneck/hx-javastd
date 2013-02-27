package sun.security.x509;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Holds an X.509 key, for example a public key found in an X.509
* certificate.  Includes a description of the algorithm to be used
* with the key; these keys normally are used as
* "SubjectPublicKeyInfo".
*
* <P>While this class can represent any kind of X.509 key, it may be
* desirable to provide subclasses which understand how to parse keying
* data.   For example, RSA public keys have two members, one for the
* public modulus and one for the prime exponent.  If such a class is
* provided, it is used when parsing X.509 keys.  If one is not provided,
* the key still parses correctly.
*
* @author David Brownell
*/
extern class X509Key implements java.security.PublicKey
{
	/* The algorithm information (name, parameters, etc). */
	private var algid : sun.security.x509.AlgorithmId;
	
	/**
	* The key bytes, without the algorithm information.
	* @deprecated Use the BitArray form which does not require keys to
	* be byte aligned.
	* @see sun.security.x509.X509Key#setKey(BitArray)
	* @see sun.security.x509.X509Key#getKey()
	*/
	private var key : java.NativeArray<java.StdTypes.Int8>;
	
	/* The encoding for the key. */
	private var encodedKey : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Default constructor.  The key constructed must have its key
	* and algorithm initialized before it may be used, for example
	* by using <code>decode</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets the key in the BitArray form.
	*/
	@:overload private function setKey(key : sun.security.util.BitArray) : Void;
	
	/**
	* Gets the key. The key may or may not be byte aligned.
	* @return a BitArray containing the key.
	*/
	@:overload private function getKey() : sun.security.util.BitArray;
	
	/**
	* Construct X.509 subject public key from a DER value.  If
	* the runtime environment is configured with a specific class for
	* this kind of key, a subclass is returned.  Otherwise, a generic
	* X509Key object is returned.
	*
	* <P>This mechanism gurantees that keys (and algorithms) may be
	* freely manipulated and transferred, without risk of losing
	* information.  Also, when a key (or algorithm) needs some special
	* handling, that specific need can be accomodated.
	*
	* @param in the DER-encoded SubjectPublicKeyInfo value
	* @exception IOException on data format errors
	*/
	@:overload public static function parse(_in : sun.security.util.DerValue) : java.security.PublicKey;
	
	/**
	* Parse the key bits.  This may be redefined by subclasses to take
	* advantage of structure within the key.  For example, RSA public
	* keys encapsulate two unsigned integers (modulus and exponent) as
	* DER values within the <code>key</code> bits; Diffie-Hellman and
	* DSS/DSA keys encapsulate a single unsigned integer.
	*
	* <P>This function is called when creating X.509 SubjectPublicKeyInfo
	* values using the X509Key member functions, such as <code>parse</code>
	* and <code>decode</code>.
	*
	* @exception IOException on parsing errors.
	* @exception InvalidKeyException on invalid key encodings.
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
	* Encode SubjectPublicKeyInfo sequence on the DER output stream.
	*
	* @exception IOException on encoding errors.
	*/
	@:overload @:final public function encode(out : sun.security.util.DerOutputStream) : Void;
	
	/**
	* Returns the DER-encoded form of the key as a byte array.
	*/
	@:overload public function getEncoded() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getEncodedInternal() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the format for this key: "X.509"
	*/
	@:overload public function getFormat() : String;
	
	/**
	* Returns the DER-encoded form of the key as a byte array.
	*
	* @exception InvalidKeyException on encoding errors.
	*/
	@:overload public function encode() : java.NativeArray<java.StdTypes.Int8>;
	
	/*
	* Returns a printable representation of the key
	*/
	@:overload public function toString() : String;
	
	/**
	* Initialize an X509Key object from an input stream.  The data on that
	* input stream must be encoded using DER, obeying the X.509
	* <code>SubjectPublicKeyInfo</code> format.  That is, the data is a
	* sequence consisting of an algorithm ID and a bit string which holds
	* the key.  (That bit string is often used to encapsulate another DER
	* encoded sequence.)
	*
	* <P>Subclasses should not normally redefine this method; they should
	* instead provide a <code>parseKeyBits</code> method to parse any
	* fields inside the <code>key</code> member.
	*
	* <P>The exception to this rule is that since private keys need not
	* be encoded using the X.509 <code>SubjectPublicKeyInfo</code> format,
	* private keys may override this method, <code>encode</code>, and
	* of course <code>getFormat</code>.
	*
	* @param in an input stream with a DER-encoded X.509
	*          SubjectPublicKeyInfo value
	* @exception InvalidKeyException on parsing errors.
	*/
	@:overload public function decode(_in : java.io.InputStream) : Void;
	
	@:overload public function decode(encodedKey : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Calculates a hash code value for the object. Objects
	* which are equal will also have the same hashcode.
	*/
	@:overload public function hashCode() : Int;
	
	
}
