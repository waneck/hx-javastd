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
extern interface AgreementMethod
{
	/**
	* Returns an <code>byte</code> array.
	* @return
	*/
	@:overload public function getKANonce() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Sets the KANonce.jj
	* @param kanonce
	*/
	@:overload public function setKANonce(kanonce : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns aditional information regarding the <code>AgreementMethod</code>.
	* @return
	*/
	@:overload public function getAgreementMethodInformation() : java.util.Iterator<Dynamic>;
	
	/**
	* Adds additional <code>AgreementMethod</code> information.
	*
	* @param info a <code>Element</code> that represents additional information
	* specified by
	*   <xmp>
	*     <any namespace="##other" minOccurs="0" maxOccurs="unbounded"/>
	*   </xmp>
	*/
	@:overload public function addAgreementMethodInformation(info : org.w3c.dom.Element) : Void;
	
	/**
	* Removes additional <code>AgreementMethod</code> information.
	*
	* @param info a <code>Element</code> that represents additional information
	* specified by
	*   <xmp>
	*     <any namespace="##other" minOccurs="0" maxOccurs="unbounded"/>
	*   </xmp>
	*/
	@:overload public function revoveAgreementMethodInformation(info : org.w3c.dom.Element) : Void;
	
	/**
	* Returns information relating to the originator's shared secret.
	*
	* @return information relating to the originator's shared secret.
	*/
	@:overload public function getOriginatorKeyInfo() : com.sun.org.apache.xml.internal.security.keys.KeyInfo;
	
	/**
	* Sets the information relating to the originator's shared secret.
	*
	* @param keyInfo information relating to the originator's shared secret.
	*/
	@:overload public function setOriginatorKeyInfo(keyInfo : com.sun.org.apache.xml.internal.security.keys.KeyInfo) : Void;
	
	/**
	* Retruns information relating to the recipient's shared secret.
	*
	* @return information relating to the recipient's shared secret.
	*/
	@:overload public function getRecipientKeyInfo() : com.sun.org.apache.xml.internal.security.keys.KeyInfo;
	
	/**
	* Sets the information relating to the recipient's shared secret.
	*
	* @param keyInfo information relating to the recipient's shared secret.
	*/
	@:overload public function setRecipientKeyInfo(keyInfo : com.sun.org.apache.xml.internal.security.keys.KeyInfo) : Void;
	
	/**
	* Returns the algorithm URI of this <code>CryptographicMethod</code>.
	*
	* @return the algorithm URI of this <code>CryptographicMethod</code>
	*/
	@:overload public function getAlgorithm() : String;
	
	
}
