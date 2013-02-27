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
extern interface Reference
{
	/**
	* Returns a <code>URI</code> that points to an <code>Element</code> that
	* were encrypted using the key defined in the enclosing
	* <code>EncryptedKey</code> element.
	*
	* @return an Uniform Resource Identifier that qualifies an
	*   <code>EncryptedType</code>.
	*/
	@:overload public function getURI() : String;
	
	/**
	* Sets a <code>URI</code> that points to an <code>Element</code> that
	* were encrypted using the key defined in the enclosing
	* <code>EncryptedKey</code> element.
	*
	* @param uri the Uniform Resource Identifier that qualifies an
	*   <code>EncryptedType</code>.
	*/
	@:overload public function setURI(uri : String) : Void;
	
	/**
	* Returns an <code>Iterator</code> over all the child elements contained in
	* this <code>Reference</code> that will aid the recipient in retrieving the
	* <code>EncryptedKey</code> and/or <code>EncryptedData</code> elements.
	* These could include information such as XPath transforms, decompression
	* transforms, or information on how to retrieve the elements from a
	* document storage facility.
	*
	* @return child elements.
	*/
	@:overload public function getElementRetrievalInformation() : java.util.Iterator<Dynamic>;
	
	/**
	* Adds retrieval information.
	*
	* @param info.
	*/
	@:overload public function addElementRetrievalInformation(info : org.w3c.dom.Element) : Void;
	
	/**
	* Removes the specified retrieval information.
	*
	* @param info.
	*/
	@:overload public function removeElementRetrievalInformation(info : org.w3c.dom.Element) : Void;
	
	
}
