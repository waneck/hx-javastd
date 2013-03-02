package sun.security.provider;
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
@:internal extern class DSA extends java.security.SignatureSpi
{
	/**
	* Initialize the DSA object with a DSA private key.
	*
	* @param privateKey the DSA private key
	*
	* @exception InvalidKeyException if the key is not a valid DSA private
	* key.
	*/
	@:overload private function engineInitSign(privateKey : java.security.PrivateKey) : Void;
	
	/**
	* Initialize the DSA object with a DSA public key.
	*
	* @param publicKey the DSA public key.
	*
	* @exception InvalidKeyException if the key is not a valid DSA public
	* key.
	*/
	@:overload private function engineInitVerify(publicKey : java.security.PublicKey) : Void;
	
	/**
	* Sign all the data thus far updated. The signature is formatted
	* according to the Canonical Encoding Rules, returned as a DER
	* sequence of Integer, r and s.
	*
	* @return a signature block formatted according to the Canonical
	* Encoding Rules.
	*
	* @exception SignatureException if the signature object was not
	* properly initialized, or if another exception occurs.
	*
	* @see sun.security.DSA#engineUpdate
	* @see sun.security.DSA#engineVerify
	*/
	@:overload private function engineSign() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Verify all the data thus far updated.
	*
	* @param signature the alledged signature, encoded using the
	* Canonical Encoding Rules, as a sequence of integers, r and s.
	*
	* @exception SignatureException if the signature object was not
	* properly initialized, or if another exception occurs.
	*
	* @see sun.security.DSA#engineUpdate
	* @see sun.security.DSA#engineSign
	*/
	@:overload private function engineVerify(signature : java.NativeArray<java.StdTypes.Int8>) : Bool;
	
	/**
	* Verify all the data thus far updated.
	*
	* @param signature the alledged signature, encoded using the
	* Canonical Encoding Rules, as a sequence of integers, r and s.
	*
	* @param offset the offset to start from in the array of bytes.
	*
	* @param length the number of bytes to use, starting at offset.
	*
	* @exception SignatureException if the signature object was not
	* properly initialized, or if another exception occurs.
	*
	* @see sun.security.DSA#engineUpdate
	* @see sun.security.DSA#engineSign
	*/
	@:overload private function engineVerify(signature : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Bool;
	
	/**
	* This implementation recognizes the following parameter:<dl>
	*
	* <dt><tt>Kseed</tt>
	*
	* <dd>a byte array.
	*
	* </dl>
	*
	* @deprecated
	*/
	@:overload private function engineSetParameter(key : String, param : Dynamic) : Void;
	
	/**
	* Return the value of the requested parameter. Recognized
	* parameters are:
	*
	* <dl>
	*
	* <dt><tt>Kseed</tt>
	*
	* <dd>a byte array.
	*
	* </dl>
	*
	* @return the value of the requested parameter.
	*
	* @see java.security.SignatureEngine
	*
	* @deprecated
	*/
	@:overload private function engineGetParameter(key : String) : Dynamic;
	
	/**
	* Return a human readable rendition of the engine.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Standard SHA1withDSA implementation.
*/
@:native('sun$security$provider$DSA$SHA1withDSA') extern class DSA_SHA1withDSA extends sun.security.provider.DSA
{
	@:overload public function new() : Void;
	
	/**
	* Update a byte to be signed or verified.
	*/
	@:overload private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	/**
	* Update an array of bytes to be signed or verified.
	*/
	@:overload private function engineUpdate(data : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload private function engineUpdate(b : java.nio.ByteBuffer) : Void;
	
	
}
/**
* RawDSA implementation.
*
* RawDSA requires the data to be exactly 20 bytes long. If it is
* not, a SignatureException is thrown when sign()/verify() is called
* per JCA spec.
*/
@:native('sun$security$provider$DSA$RawDSA') extern class DSA_RawDSA extends sun.security.provider.DSA
{
	@:overload public function new() : Void;
	
	@:overload private function engineUpdate(b : java.StdTypes.Int8) : Void;
	
	@:overload private function engineUpdate(data : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	
}
