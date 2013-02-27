package com.sun.crypto.provider;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class DHKeyAgreement extends javax.crypto.KeyAgreementSpi
{
	/**
	* Empty constructor
	*/
	@:overload public function new() : Void;
	
	/**
	* Initializes this key agreement with the given key and source of
	* randomness. The given key is required to contain all the algorithm
	* parameters required for this key agreement.
	*
	* <p> If the key agreement algorithm requires random bytes, it gets them
	* from the given source of randomness, <code>random</code>.
	* However, if the underlying
	* algorithm implementation does not require any random bytes,
	* <code>random</code> is ignored.
	*
	* @param key the party's private information. For example, in the case
	* of the Diffie-Hellman key agreement, this would be the party's own
	* Diffie-Hellman private key.
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is
	* inappropriate for this key agreement, e.g., is of the wrong type or
	* has an incompatible algorithm type.
	*/
	@:overload override private function engineInit(key : java.security.Key, random : java.security.SecureRandom) : Void;
	
	/**
	* Initializes this key agreement with the given key, set of
	* algorithm parameters, and source of randomness.
	*
	* @param key the party's private information. For example, in the case
	* of the Diffie-Hellman key agreement, this would be the party's own
	* Diffie-Hellman private key.
	* @param params the key agreement parameters
	* @param random the source of randomness
	*
	* @exception InvalidKeyException if the given key is
	* inappropriate for this key agreement, e.g., is of the wrong type or
	* has an incompatible algorithm type.
	* @exception InvalidAlgorithmParameterException if the given parameters
	* are inappropriate for this key agreement.
	*/
	@:overload override private function engineInit(key : java.security.Key, params : java.security.spec.AlgorithmParameterSpec, random : java.security.SecureRandom) : Void;
	
	/**
	* Executes the next phase of this key agreement with the given
	* key that was received from one of the other parties involved in this key
	* agreement.
	*
	* @param key the key for this phase. For example, in the case of
	* Diffie-Hellman between 2 parties, this would be the other party's
	* Diffie-Hellman public key.
	* @param lastPhase flag which indicates whether or not this is the last
	* phase of this key agreement.
	*
	* @return the (intermediate) key resulting from this phase, or null if
	* this phase does not yield a key
	*
	* @exception InvalidKeyException if the given key is inappropriate for
	* this phase.
	* @exception IllegalStateException if this key agreement has not been
	* initialized.
	*/
	@:overload override private function engineDoPhase(key : java.security.Key, lastPhase : Bool) : java.security.Key;
	
	/**
	* Generates the shared secret and returns it in a new buffer.
	*
	* <p>This method resets this <code>KeyAgreementSpi</code> object,
	* so that it
	* can be reused for further key agreements. Unless this key agreement is
	* reinitialized with one of the <code>engineInit</code> methods, the same
	* private information and algorithm parameters will be used for
	* subsequent key agreements.
	*
	* @return the new buffer with the shared secret
	*
	* @exception IllegalStateException if this key agreement has not been
	* completed yet
	*/
	@:overload override private function engineGenerateSecret() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Generates the shared secret, and places it into the buffer
	* <code>sharedSecret</code>, beginning at <code>offset</code>.
	*
	* <p>If the <code>sharedSecret</code> buffer is too small to hold the
	* result, a <code>ShortBufferException</code> is thrown.
	* In this case, this call should be repeated with a larger output buffer.
	*
	* <p>This method resets this <code>KeyAgreementSpi</code> object,
	* so that it
	* can be reused for further key agreements. Unless this key agreement is
	* reinitialized with one of the <code>engineInit</code> methods, the same
	* private information and algorithm parameters will be used for
	* subsequent key agreements.
	*
	* @param sharedSecret the buffer for the shared secret
	* @param offset the offset in <code>sharedSecret</code> where the
	* shared secret will be stored
	*
	* @return the number of bytes placed into <code>sharedSecret</code>
	*
	* @exception IllegalStateException if this key agreement has not been
	* completed yet
	* @exception ShortBufferException if the given output buffer is too small
	* to hold the secret
	*/
	@:overload override private function engineGenerateSecret(sharedSecret : java.NativeArray<java.StdTypes.Int8>, offset : Int) : Int;
	
	/**
	* Creates the shared secret and returns it as a secret key object
	* of the requested algorithm type.
	*
	* <p>This method resets this <code>KeyAgreementSpi</code> object,
	* so that it
	* can be reused for further key agreements. Unless this key agreement is
	* reinitialized with one of the <code>engineInit</code> methods, the same
	* private information and algorithm parameters will be used for
	* subsequent key agreements.
	*
	* @param algorithm the requested secret key algorithm
	*
	* @return the shared secret key
	*
	* @exception IllegalStateException if this key agreement has not been
	* completed yet
	* @exception NoSuchAlgorithmException if the requested secret key
	* algorithm is not available
	* @exception InvalidKeyException if the shared secret key material cannot
	* be used to generate a secret key of the requested algorithm type (e.g.,
	* the key material is too short)
	*/
	@:overload override private function engineGenerateSecret(algorithm : String) : javax.crypto.SecretKey;
	
	
}
