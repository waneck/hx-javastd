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
extern interface EncryptionMethod
{
	/**
	* Returns the algorithm applied to the cipher data.
	*
	* @return the encryption algorithm.
	*/
	@:overload public function getAlgorithm() : String;
	
	/**
	* Returns the key size of the key of the algorithm applied to the cipher
	* data.
	*
	* @return the key size.
	*/
	@:overload public function getKeySize() : Int;
	
	/**
	* Sets the size of the key of the algorithm applied to the cipher data.
	*
	* @param size the key size.
	*/
	@:overload public function setKeySize(size : Int) : Void;
	
	/**
	* Returns the OAEP parameters of the algorithm applied applied to the
	* cipher data.
	*
	* @return the OAEP parameters.
	*/
	@:overload public function getOAEPparams() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Sets the OAEP parameters.
	*
	* @param parameters the OAEP parameters.
	*/
	@:overload public function setOAEPparams(parameters : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns an iterator over all the additional elements contained in the
	* <code>EncryptionMethod</code>.
	*
	* @return an <code>Iterator</code> over all the additional infomation
	*   about the <code>EncryptionMethod</code>.
	*/
	@:overload public function getEncryptionMethodInformation() : java.util.Iterator<Dynamic>;
	
	/**
	* Adds encryption method information.
	*
	* @param information additional encryption method information.
	*/
	@:overload public function addEncryptionMethodInformation(information : org.w3c.dom.Element) : Void;
	
	/**
	* Removes encryption method information.
	*
	* @param information the information to remove from the
	*   <code>EncryptionMethod</code>.
	*/
	@:overload public function removeEncryptionMethodInformation(information : org.w3c.dom.Element) : Void;
	
	
}
