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
extern interface EncryptionProperties
{
	/**
	* Returns the <code>EncryptionProperties</code>' id.
	*
	* @return the id.
	*/
	@:overload public function getId() : String;
	
	/**
	* Sets the id.
	*
	* @param id the id.
	*/
	@:overload public function setId(id : String) : Void;
	
	/**
	* Returns an <code>Iterator</code> over all the
	* <code>EncryptionPropterty</code> elements contained in this
	* <code>EncryptionProperties</code>.
	*
	* @return an <code>Iterator</code> over all the encryption properties.
	*/
	@:overload public function getEncryptionProperties() : java.util.Iterator<Dynamic>;
	
	/**
	* Adds an <code>EncryptionProperty</code>.
	*
	* @param property.
	*/
	@:overload public function addEncryptionProperty(property : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperty) : Void;
	
	/**
	* Removes the specified <code>EncryptionProperty</code>.
	*
	* @param property.
	*/
	@:overload public function removeEncryptionProperty(property : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperty) : Void;
	
	
}
