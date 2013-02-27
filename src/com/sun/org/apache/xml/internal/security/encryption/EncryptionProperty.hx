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
extern interface EncryptionProperty
{
	/**
	* Returns the <code>EncryptedType</code> being described.
	*
	* @return the <code>EncryptedType</code> being described by this
	*   <code>EncryptionProperty</code>.
	*/
	@:overload public function getTarget() : String;
	
	/**
	* Sets the target.
	*
	* @param target.
	*/
	@:overload public function setTarget(target : String) : Void;
	
	/**
	* Returns the id of the <CODE>EncryptionProperty</CODE>.
	*
	* @return the id.
	*/
	@:overload public function getId() : String;
	
	/**
	* Sets the id.
	*
	* @param id.
	*/
	@:overload public function setId(id : String) : Void;
	
	/**
	* Returns the attribute's value in the <code>xml</code> namespace.
	*
	* @param attribute
	* @return the attribute's value.
	*/
	@:overload public function getAttribute(attribute : String) : String;
	
	/**
	* Set the attribute value.
	*
	* @param attribute the attribute's name.
	* @param value the attribute's value.
	*/
	@:overload public function setAttribute(attribute : String, value : String) : Void;
	
	/**
	* Returns the properties of the <CODE>EncryptionProperty</CODE>.
	*
	* @return an <code>Iterator</code> over all the addiitonal encryption
	*   information contained in this class.
	*/
	@:overload public function getEncryptionInformation() : java.util.Iterator<Dynamic>;
	
	/**
	* Adds encryption information.
	*
	* @param information the additional encryption information.
	*/
	@:overload public function addEncryptionInformation(information : org.w3c.dom.Element) : Void;
	
	/**
	* Removes encryption information.
	*
	* @param information the information to remove.
	*/
	@:overload public function removeEncryptionInformation(information : org.w3c.dom.Element) : Void;
	
	
}
