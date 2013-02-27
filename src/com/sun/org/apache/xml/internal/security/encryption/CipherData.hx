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
/**
* <code>CipherData</code> provides encrypted data. It must either contain the
* encrypted octet sequence as base64 encoded text of the
* <code>CipherValue</code> element, or provide a reference to an external
* location containing the encrypted octet sequence via the
* <code>CipherReference</code> element.
* <p>
* The schema definition is as follows:
* <xmp>
* <element name='CipherData' type='xenc:CipherDataType'/>
* <complexType name='CipherDataType'>
*     <choice>
*         <element name='CipherValue' type='base64Binary'/>
*         <element ref='xenc:CipherReference'/>
*     </choice>
* </complexType>
* </xmp>
*
* @author Axl Mattheus
*/
extern interface CipherData
{
	/**
	* Returns the type of encrypted data contained in the
	* <code>CipherData</code>.
	*
	* @return <code>VALUE_TYPE</code> if the encrypted data is contained as
	*   <code>CipherValue</code> or <code>REFERENCE_TYPE</code> if the
	*   encrypted data is contained as <code>CipherReference</code>.
	*/
	@:overload public function getDataType() : Int;
	
	/**
	* Returns the cipher value as a base64 encoded <code>byte</code> array.
	*
	* @return the <code>CipherData</code>'s value.
	*/
	@:overload public function getCipherValue() : com.sun.org.apache.xml.internal.security.encryption.CipherValue;
	
	/**
	* Sets the <code>CipherData</code>'s value.
	*
	* @param value the value of the <code>CipherData</code>.
	* @throws XMLEncryptionException
	*/
	@:overload public function setCipherValue(value : com.sun.org.apache.xml.internal.security.encryption.CipherValue) : Void;
	
	/**
	* Returns a reference to an external location containing the encrypted
	* octet sequence (<code>byte</code> array).
	*
	* @return the reference to an external location containing the enctrypted
	*   octet sequence.
	*/
	@:overload public function getCipherReference() : com.sun.org.apache.xml.internal.security.encryption.CipherReference;
	
	/**
	* Sets the <code>CipherData</code>'s reference.
	*
	* @param reference an external location containing the enctrypted octet
	*   sequence.
	* @throws XMLEncryptionException
	*/
	@:overload public function setCipherReference(reference : com.sun.org.apache.xml.internal.security.encryption.CipherReference) : Void;
	
	
}
