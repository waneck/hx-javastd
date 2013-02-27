package javax.crypto;
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
extern class SealedObject implements java.io.Serializable
{
	/**
	* The cryptographic parameters used by the sealing Cipher,
	* encoded in the default format.
	* <p>
	* That is, <code>cipher.getParameters().getEncoded()</code>.
	*
	* @serial
	*/
	private var encodedParams : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Constructs a SealedObject from any Serializable object.
	*
	* <p>The given object is serialized, and its serialized contents are
	* encrypted using the given Cipher, which must be fully initialized.
	*
	* <p>Any algorithm parameters that may be used in the encryption
	* operation are stored inside of the new <code>SealedObject</code>.
	*
	* @param object the object to be sealed; can be null.
	* @param c the cipher used to seal the object.
	*
	* @exception NullPointerException if the given cipher is null.
	* @exception IOException if an error occurs during serialization
	* @exception IllegalBlockSizeException if the given cipher is a block
	* cipher, no padding has been requested, and the total input length
	* (i.e., the length of the serialized object contents) is not a multiple
	* of the cipher's block size
	*/
	@:overload public function new(object : java.io.Serializable, c : javax.crypto.Cipher) : Void;
	
	/**
	* Constructs a SealedObject object from the passed-in SealedObject.
	*
	* @param so a SealedObject object
	* @exception NullPointerException if the given sealed object is null.
	*/
	@:overload private function new(so : SealedObject) : Void;
	
	/**
	* Returns the algorithm that was used to seal this object.
	*
	* @return the algorithm that was used to seal this object.
	*/
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* Retrieves the original (encapsulated) object.
	*
	* <p>This method creates a cipher for the algorithm that had been used in
	* the sealing operation.
	* If the default provider package provides an implementation of that
	* algorithm, an instance of Cipher containing that implementation is used.
	* If the algorithm is not available in the default package, other
	* packages are searched.
	* The Cipher object is initialized for decryption, using the given
	* <code>key</code> and the parameters (if any) that had been used in the
	* sealing operation.
	*
	* <p>The encapsulated object is unsealed and de-serialized, before it is
	* returned.
	*
	* @param key the key used to unseal the object.
	*
	* @return the original object.
	*
	* @exception IOException if an error occurs during de-serialiazation.
	* @exception ClassNotFoundException if an error occurs during
	* de-serialiazation.
	* @exception NoSuchAlgorithmException if the algorithm to unseal the
	* object is not available.
	* @exception InvalidKeyException if the given key cannot be used to unseal
	* the object (e.g., it has the wrong algorithm).
	* @exception NullPointerException if <code>key</code> is null.
	*/
	@:overload @:final public function getObject(key : java.security.Key) : Dynamic;
	
	/**
	* Retrieves the original (encapsulated) object.
	*
	* <p>The encapsulated object is unsealed (using the given Cipher,
	* assuming that the Cipher is already properly initialized) and
	* de-serialized, before it is returned.
	*
	* @param c the cipher used to unseal the object
	*
	* @return the original object.
	*
	* @exception NullPointerException if the given cipher is null.
	* @exception IOException if an error occurs during de-serialiazation
	* @exception ClassNotFoundException if an error occurs during
	* de-serialiazation
	* @exception IllegalBlockSizeException if the given cipher is a block
	* cipher, no padding has been requested, and the total input length is
	* not a multiple of the cipher's block size
	* @exception BadPaddingException if the given cipher has been
	* initialized for decryption, and padding has been specified, but
	* the input data does not have proper expected padding bytes
	*/
	@:overload @:final public function getObject(c : javax.crypto.Cipher) : Dynamic;
	
	/**
	* Retrieves the original (encapsulated) object.
	*
	* <p>This method creates a cipher for the algorithm that had been used in
	* the sealing operation, using an implementation of that algorithm from
	* the given <code>provider</code>.
	* The Cipher object is initialized for decryption, using the given
	* <code>key</code> and the parameters (if any) that had been used in the
	* sealing operation.
	*
	* <p>The encapsulated object is unsealed and de-serialized, before it is
	* returned.
	*
	* @param key the key used to unseal the object.
	* @param provider the name of the provider of the algorithm to unseal
	* the object.
	*
	* @return the original object.
	*
	* @exception IllegalArgumentException if the given provider is null
	* or empty.
	* @exception IOException if an error occurs during de-serialiazation.
	* @exception ClassNotFoundException if an error occurs during
	* de-serialiazation.
	* @exception NoSuchAlgorithmException if the algorithm to unseal the
	* object is not available.
	* @exception NoSuchProviderException if the given provider is not
	* configured.
	* @exception InvalidKeyException if the given key cannot be used to unseal
	* the object (e.g., it has the wrong algorithm).
	* @exception NullPointerException if <code>key</code> is null.
	*/
	@:overload @:final public function getObject(key : java.security.Key, provider : String) : Dynamic;
	
	
}
@:internal extern class extObjectInputStream extends java.io.ObjectInputStream
{
	@:overload override private function resolveClass(v : java.io.ObjectStreamClass) : Class<Dynamic>;
	
	
}
