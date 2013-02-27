package com.sun.org.apache.xml.internal.security.encryption;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  2003-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class XMLCipherInput
{
	/**
	* Constructor for processing encrypted octets
	*
	* @param data The <code>CipherData</code> object to read the bytes from
	* @throws XMLEncryptionException {@link XMLEncryptionException}
	*/
	@:overload public function new(data : com.sun.org.apache.xml.internal.security.encryption.CipherData) : Void;
	
	/**
	* Constructor for processing encrypted octets
	*
	* @param input The <code>EncryptedType</code> object to read
	* the bytes from.
	* @throws XMLEncryptionException {@link XMLEncryptionException}
	*/
	@:overload public function new(input : com.sun.org.apache.xml.internal.security.encryption.EncryptedType) : Void;
	
	/**
	* Dereferences the input and returns it as a single byte array.
	*
	* @throws XMLEncryptionException
	* @return The decripted bytes.
	*/
	@:overload public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	
}
