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
extern interface EncryptedType
{
	/**
	* Returns a <code>String</code> providing for the standard method of
	* assigning an id to the element within the document context.
	*
	* @return the id for the <code>EncryptedType</code>.
	*/
	@:overload public function getId() : String;
	
	/**
	* Sets the id.
	*
	* @param id.
	*/
	@:overload public function setId(id : String) : Void;
	
	/**
	* Returns an <code>URI</code> identifying type information about the
	* plaintext form of the encrypted content. While optional, this
	* specification takes advantage of it for mandatory processing described in
	* Processing Rules: Decryption (section 4.2). If the
	* <code>EncryptedData</code> element contains data of Type 'element' or
	* element 'content', and replaces that data in an XML document context, it
	* is strongly recommended the Type attribute be provided. Without this
	* information, the decryptor will be unable to automatically restore the
	* XML document to its original cleartext form.
	*
	* @return the identifier for the type of information in plaintext form of
	*   encrypted content.
	*/
	@:overload public function getType() : String;
	
	/**
	* Sets the type.
	*
	* @param type an <code>URI</code> identifying type information about the
	*   plaintext form of the encrypted content.
	*/
	@:overload public function setType(type : String) : Void;
	
	/**
	* Returns a <code>String</code> which describes the media type of the data
	* which has been encrypted. The value of this attribute has values defined
	* by [MIME]. For example, if the data that is encrypted is a base64 encoded
	* PNG, the transfer Encoding may be specified as
	* 'http://www.w3.org/2000/09/xmldsig#base64' and the MimeType as
	* 'image/png'.
	* <br>
	* This attribute is purely advisory; no validation of the MimeType
	* information is required and it does not indicate the encryption
	* application must do any additional processing. Note, this information may
	* not be necessary if it is already bound to the identifier in the Type
	* attribute. For example, the Element and Content types defined in this
	* specification are always UTF-8 encoded text.
	*
	* @return the media type of the data which was encrypted.
	*/
	@:overload public function getMimeType() : String;
	
	/**
	* Sets the mime type.
	*
	* @param type a <code>String</code> which describes the media type of the
	*   data which has been encrypted.
	*/
	@:overload public function setMimeType(type : String) : Void;
	
	/**
	* Retusn an <code>URI</code> representing the encoding of the
	* <code>EncryptedType</code>.
	*
	* @return the encoding of this <code>EncryptedType</code>.
	*/
	@:overload public function getEncoding() : String;
	
	/**
	* Sets the <code>URI</code> representing the encoding of the
	* <code>EncryptedType</code>.
	*
	* @param encoding.
	*/
	@:overload public function setEncoding(encoding : String) : Void;
	
	/**
	* Returns an <code>EncryptionMethod</code> that describes the encryption
	* algorithm applied to the cipher data. If the element is absent, the
	* encryption algorithm must be known by the recipient or the decryption
	* will fail.
	*
	* @return the method used to encrypt the cipher data.
	*/
	@:overload public function getEncryptionMethod() : com.sun.org.apache.xml.internal.security.encryption.EncryptionMethod;
	
	/**
	* Sets the <code>EncryptionMethod</code> used to encrypt the cipher data.
	*
	* @param method the <code>EncryptionMethod</code>.
	*/
	@:overload public function setEncryptionMethod(method : com.sun.org.apache.xml.internal.security.encryption.EncryptionMethod) : Void;
	
	/**
	* Returns the <code>ds:KeyInfo</code>, that carries information about the
	* key used to encrypt the data. Subsequent sections of this specification
	* define new elements that may appear as children of
	* <code>ds:KeyInfo</code>.
	*
	* @return information about the key that encrypted the cipher data.
	*/
	@:overload public function getKeyInfo() : com.sun.org.apache.xml.internal.security.keys.KeyInfo;
	
	/**
	* Sets the encryption key information.
	*
	* @param info the <code>ds:KeyInfo</code>, that carries information about
	*   the key used to encrypt the data.
	*/
	@:overload public function setKeyInfo(info : com.sun.org.apache.xml.internal.security.keys.KeyInfo) : Void;
	
	/**
	* Returns the <code>CipherReference</code> that contains the
	* <code>CipherValue</code> or <code>CipherReference</code> with the
	* encrypted data.
	*
	* @return the cipher data for the encrypted type.
	*/
	@:overload public function getCipherData() : com.sun.org.apache.xml.internal.security.encryption.CipherData;
	
	/**
	* Returns additional information concerning the generation of the
	* <code>EncryptedType</code>.
	*
	* @return information relating to the generation of the
	*   <code>EncryptedType</code>.
	*/
	@:overload public function getEncryptionProperties() : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperties;
	
	/**
	* Sets the <code>EncryptionProperties</code> that supplies additional
	* information about the generation of the <code>EncryptedType</code>.
	*
	* @param properties.
	*/
	@:overload public function setEncryptionProperties(properties : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperties) : Void;
	
	
}
