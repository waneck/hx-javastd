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
extern class XMLCipher
{
	/** Triple DES EDE (192 bit key) in CBC mode */
	public static var TRIPLEDES(default, null) : String;
	
	/** AES 128 Cipher */
	public static var AES_128(default, null) : String;
	
	/** AES 256 Cipher */
	public static var AES_256(default, null) : String;
	
	/** AES 192 Cipher */
	public static var AES_192(default, null) : String;
	
	/** RSA 1.5 Cipher */
	public static var RSA_v1dot5(default, null) : String;
	
	/** RSA OAEP Cipher */
	public static var RSA_OAEP(default, null) : String;
	
	/** DIFFIE_HELLMAN Cipher */
	public static var DIFFIE_HELLMAN(default, null) : String;
	
	/** Triple DES EDE (192 bit key) in CBC mode KEYWRAP*/
	public static var TRIPLEDES_KeyWrap(default, null) : String;
	
	/** AES 128 Cipher KeyWrap */
	public static var AES_128_KeyWrap(default, null) : String;
	
	/** AES 256 Cipher KeyWrap */
	public static var AES_256_KeyWrap(default, null) : String;
	
	/** AES 192 Cipher KeyWrap */
	public static var AES_192_KeyWrap(default, null) : String;
	
	/** SHA1 Cipher */
	public static var SHA1(default, null) : String;
	
	/** SHA256 Cipher */
	public static var SHA256(default, null) : String;
	
	/** SHA512 Cipher */
	public static var SHA512(default, null) : String;
	
	/** RIPEMD Cipher */
	public static var RIPEMD_160(default, null) : String;
	
	/** XML Signature NS */
	public static var XML_DSIG(default, null) : String;
	
	/** N14C_XML */
	public static var N14C_XML(default, null) : String;
	
	/** N14C_XML with comments*/
	public static var N14C_XML_WITH_COMMENTS(default, null) : String;
	
	/** N14C_XML excluisve */
	public static var EXCL_XML_N14C(default, null) : String;
	
	/** N14C_XML exclusive with commetns*/
	public static var EXCL_XML_N14C_WITH_COMMENTS(default, null) : String;
	
	/** Base64 encoding */
	public static var BASE64_ENCODING(default, null) : String;
	
	/** ENCRYPT Mode */
	public static var ENCRYPT_MODE(default, null) : Int;
	
	/** DECRYPT Mode */
	public static var DECRYPT_MODE(default, null) : Int;
	
	/** UNWRAP Mode */
	public static var UNWRAP_MODE(default, null) : Int;
	
	/** WRAP Mode */
	public static var WRAP_MODE(default, null) : Int;
	
	/**
	* Returns an <code>XMLCipher</code> that implements the specified
	* transformation and operates on the specified context document.
	* <p>
	* If the default provider package supplies an implementation of the
	* requested transformation, an instance of Cipher containing that
	* implementation is returned. If the transformation is not available in
	* the default provider package, other provider packages are searched.
	* <p>
	* <b>NOTE<sub>1</sub>:</b> The transformation name does not follow the same
	* pattern as that oulined in the Java Cryptography Extension Reference
	* Guide but rather that specified by the XML Encryption Syntax and
	* Processing document. The rational behind this is to make it easier for a
	* novice at writing Java Encryption software to use the library.
	* <p>
	* <b>NOTE<sub>2</sub>:</b> <code>getInstance()</code> does not follow the
	* same pattern regarding exceptional conditions as that used in
	* <code>javax.crypto.Cipher</code>. Instead, it only throws an
	* <code>XMLEncryptionException</code> which wraps an underlying exception.
	* The stack trace from the exception should be self explanitory.
	*
	* @param transformation the name of the transformation, e.g.,
	*   <code>XMLCipher.TRIPLEDES</code> which is shorthand for
	*   &quot;http://www.w3.org/2001/04/xmlenc#tripledes-cbc&quot;
	* @throws XMLEncryptionException
	* @return the XMLCipher
	* @see javax.crypto.Cipher#getInstance(java.lang.String)
	*/
	@:overload public static function getInstance(transformation : String) : XMLCipher;
	
	/**
	* Returns an <code>XMLCipher</code> that implements the specified
	* transformation, operates on the specified context document and serializes
	* the document with the specified canonicalization algorithm before it
	* encrypts the document.
	* <p>
	*
	* @param transformation        the name of the transformation, e.g.,
	*                                              <code>XMLCipher.TRIPLEDES</code> which is
	*                                                      shorthand for
	*                              &quot;http://www.w3.org/2001/04/xmlenc#tripledes-cbc&quot;
	* @param canon                         the name of the c14n algorithm, if
	*                                                      <code>null</code> use standard serializer
	* @return
	* @throws XMLEncryptionException
	*/
	@:overload public static function getInstance(transformation : String, canon : String) : XMLCipher;
	
	@:overload public static function getInstance(transformation : String, cipher : javax.crypto.Cipher) : XMLCipher;
	
	/**
	* Returns an <code>XMLCipher</code> that implements the specified
	* transformation and operates on the specified context document.
	*
	* @param transformation the name of the transformation, e.g.,
	*   <code>XMLCipher.TRIPLEDES</code> which is shorthand for
	*   &quot;http://www.w3.org/2001/04/xmlenc#tripledes-cbc&quot;
	* @param provider the JCE provider that supplies the transformation
	* @return the XMLCipher
	* @throws XMLEncryptionException
	*/
	@:overload public static function getProviderInstance(transformation : String, provider : String) : XMLCipher;
	
	/**
	* Returns an <code>XMLCipher</code> that implements the specified
	* transformation, operates on the specified context document and serializes
	* the document with the specified canonicalization algorithm before it
	* encrypts the document.
	* <p>
	*
	* @param transformation        the name of the transformation, e.g.,
	*                                                  <code>XMLCipher.TRIPLEDES</code> which is
	*                                                  shorthand for
	*                                  &quot;http://www.w3.org/2001/04/xmlenc#tripledes-cbc&quot;
	* @param provider              the JCE provider that supplies the transformation
	* @param canon                         the name of the c14n algorithm, if
	*                                                      <code>null</code> use standard serializer
	* @return
	* @throws XMLEncryptionException
	*/
	@:overload public static function getProviderInstance(transformation : String, provider : String, canon : String) : XMLCipher;
	
	/**
	* Returns an <code>XMLCipher</code> that implements no specific
	* transformation, and can therefore only be used for decrypt or
	* unwrap operations where the encryption method is defined in the
	* <code>EncryptionMethod</code> element.
	*
	* @return The XMLCipher
	* @throws XMLEncryptionException
	*/
	@:overload public static function getInstance() : XMLCipher;
	
	/**
	* Returns an <code>XMLCipher</code> that implements no specific
	* transformation, and can therefore only be used for decrypt or
	* unwrap operations where the encryption method is defined in the
	* <code>EncryptionMethod</code> element.
	*
	* Allows the caller to specify a provider that will be used for
	* cryptographic operations.
	*
	* @param provider the JCE provider that supplies the cryptographic
	* needs.
	* @return the XMLCipher
	* @throws XMLEncryptionException
	*/
	@:overload public static function getProviderInstance(provider : String) : XMLCipher;
	
	/**
	* Initializes this cipher with a key.
	* <p>
	* The cipher is initialized for one of the following four operations:
	* encryption, decryption, key wrapping or key unwrapping, depending on the
	* value of opmode.
	*
	* For WRAP and ENCRYPT modes, this also initialises the internal
	* EncryptedKey or EncryptedData (with a CipherValue)
	* structure that will be used during the ensuing operations.  This
	* can be obtained (in order to modify KeyInfo elements etc. prior to
	* finalising the encryption) by calling
	* {@link #getEncryptedData} or {@link #getEncryptedKey}.
	*
	* @param opmode the operation mode of this cipher (this is one of the
	*   following: ENCRYPT_MODE, DECRYPT_MODE, WRAP_MODE or UNWRAP_MODE)
	* @param key
	* @see javax.crypto.Cipher#init(int, java.security.Key)
	* @throws XMLEncryptionException
	*/
	@:overload public function init(opmode : Int, key : java.security.Key) : Void;
	
	/**
	* Get the EncryptedData being build
	*
	* Returns the EncryptedData being built during an ENCRYPT operation.
	* This can then be used by applications to add KeyInfo elements and
	* set other parameters.
	*
	* @return The EncryptedData being built
	*/
	@:overload public function getEncryptedData() : com.sun.org.apache.xml.internal.security.encryption.EncryptedData;
	
	/**
	* Get the EncryptedData being build
	*
	* Returns the EncryptedData being built during an ENCRYPT operation.
	* This can then be used by applications to add KeyInfo elements and
	* set other parameters.
	*
	* @return The EncryptedData being built
	*/
	@:overload public function getEncryptedKey() : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey;
	
	/**
	* Set a Key Encryption Key.
	* <p>
	* The Key Encryption Key (KEK) is used for encrypting/decrypting
	* EncryptedKey elements.  By setting this separately, the XMLCipher
	* class can know whether a key applies to the data part or wrapped key
	* part of an encrypted object.
	*
	* @param kek The key to use for de/encrypting key data
	*/
	@:overload public function setKEK(kek : java.security.Key) : Void;
	
	/**
	* Martial an EncryptedData
	*
	* Takes an EncryptedData object and returns a DOM Element that
	* represents the appropriate <code>EncryptedData</code>
	* <p>
	* <b>Note:</b> This should only be used in cases where the context
	* document has been passed in via a call to doFinal.
	*
	* @param encryptedData EncryptedData object to martial
	* @return the DOM <code>Element</code> representing the passed in
	* object
	*/
	@:overload public function martial(encryptedData : com.sun.org.apache.xml.internal.security.encryption.EncryptedData) : org.w3c.dom.Element;
	
	/**
	* Martial an EncryptedKey
	*
	* Takes an EncryptedKey object and returns a DOM Element that
	* represents the appropriate <code>EncryptedKey</code>
	*
	* <p>
	* <b>Note:</b> This should only be used in cases where the context
	* document has been passed in via a call to doFinal.
	*
	* @param encryptedKey EncryptedKey object to martial
	* @return the DOM <code>Element</code> representing the passed in
	* object */
	@:overload public function martial(encryptedKey : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey) : org.w3c.dom.Element;
	
	/**
	* Martial an EncryptedData
	*
	* Takes an EncryptedData object and returns a DOM Element that
	* represents the appropriate <code>EncryptedData</code>
	*
	* @param context The document that will own the returned nodes
	* @param encryptedData EncryptedData object to martial
	* @return the DOM <code>Element</code> representing the passed in
	* object */
	@:overload public function martial(context : org.w3c.dom.Document, encryptedData : com.sun.org.apache.xml.internal.security.encryption.EncryptedData) : org.w3c.dom.Element;
	
	/**
	* Martial an EncryptedKey
	*
	* Takes an EncryptedKey object and returns a DOM Element that
	* represents the appropriate <code>EncryptedKey</code>
	*
	* @param context The document that will own the created nodes
	* @param encryptedKey EncryptedKey object to martial
	* @return the DOM <code>Element</code> representing the passed in
	* object */
	@:overload public function martial(context : org.w3c.dom.Document, encryptedKey : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey) : org.w3c.dom.Element;
	
	/**
	* Process a DOM <code>Document</code> node. The processing depends on the
	* initialization parameters of {@link #init(int, Key) init()}.
	*
	* @param context the context <code>Document</code>.
	* @param source the <code>Document</code> to be encrypted or decrypted.
	* @return the processed <code>Document</code>.
	* @throws Exception to indicate any exceptional conditions.
	*/
	@:overload public function doFinal(context : org.w3c.dom.Document, source : org.w3c.dom.Document) : org.w3c.dom.Document;
	
	/**
	* Process a DOM <code>Element</code> node. The processing depends on the
	* initialization parameters of {@link #init(int, Key) init()}.
	*
	* @param context the context <code>Document</code>.
	* @param element the <code>Element</code> to be encrypted.
	* @return the processed <code>Document</code>.
	* @throws Exception to indicate any exceptional conditions.
	*/
	@:overload public function doFinal(context : org.w3c.dom.Document, element : org.w3c.dom.Element) : org.w3c.dom.Document;
	
	/**
	* Process the contents of a DOM <code>Element</code> node. The processing
	* depends on the initialization parameters of
	* {@link #init(int, Key) init()}.
	*
	* @param context the context <code>Document</code>.
	* @param element the <code>Element</code> which contents is to be
	*   encrypted.
	* @param content
	* @return the processed <code>Document</code>.
	* @throws Exception to indicate any exceptional conditions.
	*/
	@:overload public function doFinal(context : org.w3c.dom.Document, element : org.w3c.dom.Element, content : Bool) : org.w3c.dom.Document;
	
	/**
	* Returns an <code>EncryptedData</code> interface. Use this operation if
	* you want to have full control over the contents of the
	* <code>EncryptedData</code> structure.
	*
	* this does not change the source document in any way.
	*
	* @param context the context <code>Document</code>.
	* @param element the <code>Element</code> that will be encrypted.
	* @return the <code>EncryptedData</code>
	* @throws Exception
	*/
	@:overload public function encryptData(context : org.w3c.dom.Document, element : org.w3c.dom.Element) : com.sun.org.apache.xml.internal.security.encryption.EncryptedData;
	
	/**
	* Returns an <code>EncryptedData</code> interface. Use this operation if
	* you want to have full control over the serialization of the element
	* or element content.
	*
	* This does not change the source document in any way.
	*
	* @param context the context <code>Document</code>.
	* @param type a URI identifying type information about the plaintext form
	*    of the encrypted content (may be <code>null</code>)
	* @param serializedData the serialized data
	* @return the <code>EncryptedData</code>
	* @throws Exception
	*/
	@:overload public function encryptData(context : org.w3c.dom.Document, type : String, serializedData : java.io.InputStream) : com.sun.org.apache.xml.internal.security.encryption.EncryptedData;
	
	/**
	* Returns an <code>EncryptedData</code> interface. Use this operation if
	* you want to have full control over the contents of the
	* <code>EncryptedData</code> structure.
	*
	* this does not change the source document in any way.
	*
	* @param context the context <code>Document</code>.
	* @param element the <code>Element</code> that will be encrypted.
	* @param contentMode <code>true</code> to encrypt element's content only,
	*    <code>false</code> otherwise
	* @return the <code>EncryptedData</code>
	* @throws Exception
	*/
	@:overload public function encryptData(context : org.w3c.dom.Document, element : org.w3c.dom.Element, contentMode : Bool) : com.sun.org.apache.xml.internal.security.encryption.EncryptedData;
	
	/**
	* Returns an <code>EncryptedData</code> interface. Use this operation if
	* you want to load an <code>EncryptedData</code> structure from a DOM
	* structure and manipulate the contents
	*
	* @param context the context <code>Document</code>.
	* @param element the <code>Element</code> that will be loaded
	* @throws XMLEncryptionException
	* @return
	*/
	@:overload public function loadEncryptedData(context : org.w3c.dom.Document, element : org.w3c.dom.Element) : com.sun.org.apache.xml.internal.security.encryption.EncryptedData;
	
	/**
	* Returns an <code>EncryptedKey</code> interface. Use this operation if
	* you want to load an <code>EncryptedKey</code> structure from a DOM
	* structure and manipulate the contents.
	*
	* @param context the context <code>Document</code>.
	* @param element the <code>Element</code> that will be loaded
	* @return
	* @throws XMLEncryptionException
	*/
	@:overload public function loadEncryptedKey(context : org.w3c.dom.Document, element : org.w3c.dom.Element) : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey;
	
	/**
	* Returns an <code>EncryptedKey</code> interface. Use this operation if
	* you want to load an <code>EncryptedKey</code> structure from a DOM
	* structure and manipulate the contents.
	*
	* Assumes that the context document is the document that owns the element
	*
	* @param element the <code>Element</code> that will be loaded
	* @return
	* @throws XMLEncryptionException
	*/
	@:overload public function loadEncryptedKey(element : org.w3c.dom.Element) : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey;
	
	/**
	* Encrypts a key to an EncryptedKey structure
	*
	* @param doc the Context document that will be used to general DOM
	* @param key Key to encrypt (will use previously set KEK to
	* perform encryption
	* @return
	* @throws XMLEncryptionException
	*/
	@:overload public function encryptKey(doc : org.w3c.dom.Document, key : java.security.Key) : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey;
	
	/**
	* Decrypt a key from a passed in EncryptedKey structure
	*
	* @param encryptedKey Previously loaded EncryptedKey that needs
	* to be decrypted.
	* @param algorithm Algorithm for the decryption
	* @return a key corresponding to the give type
	* @throws XMLEncryptionException
	*/
	@:overload public function decryptKey(encryptedKey : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey, algorithm : String) : java.security.Key;
	
	/**
	* Decrypt a key from a passed in EncryptedKey structure.  This version
	* is used mainly internally, when  the cipher already has an
	* EncryptedData loaded.  The algorithm URI will be read from the
	* EncryptedData
	*
	* @param encryptedKey Previously loaded EncryptedKey that needs
	* to be decrypted.
	* @return a key corresponding to the give type
	* @throws XMLEncryptionException
	*/
	@:overload public function decryptKey(encryptedKey : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey) : java.security.Key;
	
	/**
	* Decrypt an EncryptedData element to a byte array
	*
	* When passed in an EncryptedData node, returns the decryption
	* as a byte array.
	*
	* Does not modify the source document
	* @param element
	* @return
	* @throws XMLEncryptionException
	*/
	@:overload public function decryptToByteArray(element : org.w3c.dom.Element) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates an <code>EncryptedData</code> <code>Element</code>.
	*
	* The newEncryptedData and newEncryptedKey methods create fairly complete
	* elements that are immediately useable.  All the other create* methods
	* return bare elements that still need to be built upon.
	*<p>
	* An EncryptionMethod will still need to be added however
	*
	* @param type Either REFERENCE_TYPE or VALUE_TYPE - defines what kind of
	* CipherData this EncryptedData will contain.
	* @param value the Base 64 encoded, encrypted text to wrap in the
	*   <code>EncryptedData</code> or the URI to set in the CipherReference
	* (usage will depend on the <code>type</code>
	* @return the <code>EncryptedData</code> <code>Element</code>.
	*
	* <!--
	* <EncryptedData Id[OPT] Type[OPT] MimeType[OPT] Encoding[OPT]>
	*     <EncryptionMethod/>[OPT]
	*     <ds:KeyInfo>[OPT]
	*         <EncryptedKey/>[OPT]
	*         <AgreementMethod/>[OPT]
	*         <ds:KeyName/>[OPT]
	*         <ds:RetrievalMethod/>[OPT]
	*         <ds:[MUL]/>[OPT]
	*     </ds:KeyInfo>
	*     <CipherData>[MAN]
	*         <CipherValue/> XOR <CipherReference/>
	*     </CipherData>
	*     <EncryptionProperties/>[OPT]
	* </EncryptedData>
	* -->
	* @throws XMLEncryptionException
	*/
	@:overload public function createEncryptedData(type : Int, value : String) : com.sun.org.apache.xml.internal.security.encryption.EncryptedData;
	
	/**
	* Creates an <code>EncryptedKey</code> <code>Element</code>.
	*
	* The newEncryptedData and newEncryptedKey methods create fairly complete
	* elements that are immediately useable.  All the other create* methods
	* return bare elements that still need to be built upon.
	*<p>
	* An EncryptionMethod will still need to be added however
	*
	* @param type Either REFERENCE_TYPE or VALUE_TYPE - defines what kind of
	* CipherData this EncryptedData will contain.
	* @param value the Base 64 encoded, encrypted text to wrap in the
	*   <code>EncryptedKey</code> or the URI to set in the CipherReference
	* (usage will depend on the <code>type</code>
	* @return the <code>EncryptedKey</code> <code>Element</code>.
	*
	* <!--
	* <EncryptedKey Id[OPT] Type[OPT] MimeType[OPT] Encoding[OPT]>
	*     <EncryptionMethod/>[OPT]
	*     <ds:KeyInfo>[OPT]
	*         <EncryptedKey/>[OPT]
	*         <AgreementMethod/>[OPT]
	*         <ds:KeyName/>[OPT]
	*         <ds:RetrievalMethod/>[OPT]
	*         <ds:[MUL]/>[OPT]
	*     </ds:KeyInfo>
	*     <CipherData>[MAN]
	*         <CipherValue/> XOR <CipherReference/>
	*     </CipherData>
	*     <EncryptionProperties/>[OPT]
	* </EncryptedData>
	* -->
	* @throws XMLEncryptionException
	*/
	@:overload public function createEncryptedKey(type : Int, value : String) : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey;
	
	/**
	* Create an AgreementMethod object
	*
	* @param algorithm Algorithm of the agreement method
	* @return
	*/
	@:overload public function createAgreementMethod(algorithm : String) : com.sun.org.apache.xml.internal.security.encryption.AgreementMethod;
	
	/**
	* Create a CipherData object
	*
	* @param type Type of this CipherData (either VALUE_TUPE or
	* REFERENCE_TYPE)
	* @return
	*/
	@:overload public function createCipherData(type : Int) : com.sun.org.apache.xml.internal.security.encryption.CipherData;
	
	/**
	* Create a CipherReference object
	*
	* @return
	* @param uri The URI that the reference will refer
	*/
	@:overload public function createCipherReference(uri : String) : com.sun.org.apache.xml.internal.security.encryption.CipherReference;
	
	/**
	* Create a CipherValue element
	*
	* @param value The value to set the ciphertext to
	* @return
	*/
	@:overload public function createCipherValue(value : String) : com.sun.org.apache.xml.internal.security.encryption.CipherValue;
	
	/**
	* Create an EncryptedMethod object
	*
	* @param algorithm Algorithm for the encryption
	* @return
	*/
	@:overload public function createEncryptionMethod(algorithm : String) : com.sun.org.apache.xml.internal.security.encryption.EncryptionMethod;
	
	/**
	* Create an EncryptedProperties element
	* @return
	*/
	@:overload public function createEncryptionProperties() : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperties;
	
	/**
	* Create a new EncryptionProperty element
	* @return
	*/
	@:overload public function createEncryptionProperty() : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperty;
	
	/**
	* Create a new ReferenceList object
	* @return
	* @param type
	*/
	@:overload public function createReferenceList(type : Int) : com.sun.org.apache.xml.internal.security.encryption.ReferenceList;
	
	/**
	* Create a new Transforms object
	* <p>
	* <b>Note</b>: A context document <i>must</i> have been set
	* elsewhere (possibly via a call to doFinal).  If not, use the
	* createTransforms(Document) method.
	* @return
	*/
	@:overload public function createTransforms() : com.sun.org.apache.xml.internal.security.encryption.Transforms;
	
	/**
	* Create a new Transforms object
	*
	* Because the handling of Transforms is currently done in the signature
	* code, the creation of a Transforms object <b>requires</b> a
	* context document.
	*
	* @param doc Document that will own the created Transforms node
	* @return
	*/
	@:overload public function createTransforms(doc : org.w3c.dom.Document) : com.sun.org.apache.xml.internal.security.encryption.Transforms;
	
	
}
/**
* Converts <code>String</code>s into <code>Node</code>s and visa versa.
* <p>
* <b>NOTE:</b> For internal use only.
*
* @author  Axl Mattheus
*/
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Serializer') @:internal extern class XMLCipher_Serializer
{
	
}
/**
*
* @author Axl Mattheus
*/
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory') @:internal extern class XMLCipher_Factory
{
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$AgreementMethodImpl') @:internal extern class XMLCipher_Factory_AgreementMethodImpl implements com.sun.org.apache.xml.internal.security.encryption.AgreementMethod
{
	/**
	* @param algorithm
	*/
	@:overload public function new(algorithm : String) : Void;
	
	/** @inheritDoc */
	@:overload public function getKANonce() : java.NativeArray<java.StdTypes.Int8>;
	
	/** @inheritDoc */
	@:overload public function setKANonce(kanonce : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** @inheritDoc */
	@:overload public function getAgreementMethodInformation() : java.util.Iterator<Dynamic>;
	
	/** @inheritDoc */
	@:overload public function addAgreementMethodInformation(info : org.w3c.dom.Element) : Void;
	
	/** @inheritDoc */
	@:overload public function revoveAgreementMethodInformation(info : org.w3c.dom.Element) : Void;
	
	/** @inheritDoc */
	@:overload public function getOriginatorKeyInfo() : com.sun.org.apache.xml.internal.security.keys.KeyInfo;
	
	/** @inheritDoc */
	@:overload public function setOriginatorKeyInfo(keyInfo : com.sun.org.apache.xml.internal.security.keys.KeyInfo) : Void;
	
	/** @inheritDoc */
	@:overload public function getRecipientKeyInfo() : com.sun.org.apache.xml.internal.security.keys.KeyInfo;
	
	/** @inheritDoc */
	@:overload public function setRecipientKeyInfo(keyInfo : com.sun.org.apache.xml.internal.security.keys.KeyInfo) : Void;
	
	/** @inheritDoc */
	@:overload public function getAlgorithm() : String;
	
	/** @param algorithm*/
	@:overload public function setAlgorithm(algorithm : String) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$CipherDataImpl') @:internal extern class XMLCipher_Factory_CipherDataImpl implements com.sun.org.apache.xml.internal.security.encryption.CipherData
{
	/**
	* @param type
	*/
	@:overload public function new(type : Int) : Void;
	
	/** @inheritDoc */
	@:overload public function getCipherValue() : com.sun.org.apache.xml.internal.security.encryption.CipherValue;
	
	/** @inheritDoc */
	@:overload public function setCipherValue(value : com.sun.org.apache.xml.internal.security.encryption.CipherValue) : Void;
	
	/** @inheritDoc */
	@:overload public function getCipherReference() : com.sun.org.apache.xml.internal.security.encryption.CipherReference;
	
	/** @inheritDoc */
	@:overload public function setCipherReference(reference : com.sun.org.apache.xml.internal.security.encryption.CipherReference) : Void;
	
	/** @inheritDoc */
	@:overload public function getDataType() : Int;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$CipherReferenceImpl') @:internal extern class XMLCipher_Factory_CipherReferenceImpl implements com.sun.org.apache.xml.internal.security.encryption.CipherReference
{
	/**
	* @param uri
	*/
	@:overload public function new(uri : String) : Void;
	
	/**
	* @param uri
	*/
	@:overload public function new(uri : org.w3c.dom.Attr) : Void;
	
	/** @inheritDoc */
	@:overload public function getURI() : String;
	
	/** @inheritDoc */
	@:overload public function getURIAsAttr() : org.w3c.dom.Attr;
	
	/** @inheritDoc */
	@:overload public function getTransforms() : com.sun.org.apache.xml.internal.security.encryption.Transforms;
	
	/** @inheritDoc */
	@:overload public function setTransforms(transforms : com.sun.org.apache.xml.internal.security.encryption.Transforms) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$CipherValueImpl') @:internal extern class XMLCipher_Factory_CipherValueImpl implements com.sun.org.apache.xml.internal.security.encryption.CipherValue
{
	/**
	* @param value
	*/
	@:overload public function new(value : String) : Void;
	
	/** @inheritDoc */
	@:overload public function getValue() : String;
	
	/** @inheritDoc */
	@:overload public function setValue(value : String) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$EncryptedDataImpl') @:internal extern class XMLCipher_Factory_EncryptedDataImpl extends XMLCipher_Factory_EncryptedTypeImpl implements com.sun.org.apache.xml.internal.security.encryption.EncryptedData
{
	/**
	* @param data
	*/
	@:overload public function new(data : com.sun.org.apache.xml.internal.security.encryption.CipherData) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$EncryptedKeyImpl') @:internal extern class XMLCipher_Factory_EncryptedKeyImpl extends XMLCipher_Factory_EncryptedTypeImpl implements com.sun.org.apache.xml.internal.security.encryption.EncryptedKey
{
	/**
	* @param data
	*/
	@:overload public function new(data : com.sun.org.apache.xml.internal.security.encryption.CipherData) : Void;
	
	/** @inheritDoc */
	@:overload public function getRecipient() : String;
	
	/** @inheritDoc */
	@:overload public function setRecipient(recipient : String) : Void;
	
	/** @inheritDoc */
	@:overload public function getReferenceList() : com.sun.org.apache.xml.internal.security.encryption.ReferenceList;
	
	/** @inheritDoc */
	@:overload public function setReferenceList(list : com.sun.org.apache.xml.internal.security.encryption.ReferenceList) : Void;
	
	/** @inheritDoc */
	@:overload public function getCarriedName() : String;
	
	/** @inheritDoc */
	@:overload public function setCarriedName(name : String) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$EncryptedTypeImpl') @:internal extern class XMLCipher_Factory_EncryptedTypeImpl
{
	@:overload private function new(data : com.sun.org.apache.xml.internal.security.encryption.CipherData) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getId() : String;
	
	/**
	*
	* @param id
	*/
	@:overload public function setId(id : String) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getType() : String;
	
	/**
	*
	* @param type
	*/
	@:overload public function setType(type : String) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getMimeType() : String;
	
	/**
	*
	* @param type
	*/
	@:overload public function setMimeType(type : String) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getEncoding() : String;
	
	/**
	*
	* @param encoding
	*/
	@:overload public function setEncoding(encoding : String) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getEncryptionMethod() : com.sun.org.apache.xml.internal.security.encryption.EncryptionMethod;
	
	/**
	*
	* @param method
	*/
	@:overload public function setEncryptionMethod(method : com.sun.org.apache.xml.internal.security.encryption.EncryptionMethod) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getKeyInfo() : com.sun.org.apache.xml.internal.security.keys.KeyInfo;
	
	/**
	*
	* @param info
	*/
	@:overload public function setKeyInfo(info : com.sun.org.apache.xml.internal.security.keys.KeyInfo) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function getCipherData() : com.sun.org.apache.xml.internal.security.encryption.CipherData;
	
	/**
	*
	* @return
	*/
	@:overload public function getEncryptionProperties() : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperties;
	
	/**
	*
	* @param properties
	*/
	@:overload public function setEncryptionProperties(properties : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperties) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$EncryptionMethodImpl') @:internal extern class XMLCipher_Factory_EncryptionMethodImpl implements com.sun.org.apache.xml.internal.security.encryption.EncryptionMethod
{
	/**
	*
	* @param algorithm
	*/
	@:overload public function new(algorithm : String) : Void;
	
	/** @inheritDoc */
	@:overload public function getAlgorithm() : String;
	
	/** @inheritDoc */
	@:overload public function getKeySize() : Int;
	
	/** @inheritDoc */
	@:overload public function setKeySize(size : Int) : Void;
	
	/** @inheritDoc */
	@:overload public function getOAEPparams() : java.NativeArray<java.StdTypes.Int8>;
	
	/** @inheritDoc */
	@:overload public function setOAEPparams(params : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** @inheritDoc */
	@:overload public function getEncryptionMethodInformation() : java.util.Iterator<Dynamic>;
	
	/** @inheritDoc */
	@:overload public function addEncryptionMethodInformation(info : org.w3c.dom.Element) : Void;
	
	/** @inheritDoc */
	@:overload public function removeEncryptionMethodInformation(info : org.w3c.dom.Element) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$EncryptionPropertiesImpl') @:internal extern class XMLCipher_Factory_EncryptionPropertiesImpl implements com.sun.org.apache.xml.internal.security.encryption.EncryptionProperties
{
	/**
	*
	*
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload public function getId() : String;
	
	/** @inheritDoc */
	@:overload public function setId(id : String) : Void;
	
	/** @inheritDoc */
	@:overload public function getEncryptionProperties() : java.util.Iterator<Dynamic>;
	
	/** @inheritDoc */
	@:overload public function addEncryptionProperty(property : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperty) : Void;
	
	/** @inheritDoc */
	@:overload public function removeEncryptionProperty(property : com.sun.org.apache.xml.internal.security.encryption.EncryptionProperty) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$EncryptionPropertyImpl') @:internal extern class XMLCipher_Factory_EncryptionPropertyImpl implements com.sun.org.apache.xml.internal.security.encryption.EncryptionProperty
{
	/**
	*
	*
	*/
	@:overload public function new() : Void;
	
	/** @inheritDoc */
	@:overload public function getTarget() : String;
	
	/** @inheritDoc */
	@:overload public function setTarget(target : String) : Void;
	
	/** @inheritDoc */
	@:overload public function getId() : String;
	
	/** @inheritDoc */
	@:overload public function setId(id : String) : Void;
	
	/** @inheritDoc */
	@:overload public function getAttribute(attribute : String) : String;
	
	/** @inheritDoc */
	@:overload public function setAttribute(attribute : String, value : String) : Void;
	
	/** @inheritDoc */
	@:overload public function getEncryptionInformation() : java.util.Iterator<Dynamic>;
	
	/** @inheritDoc */
	@:overload public function addEncryptionInformation(info : org.w3c.dom.Element) : Void;
	
	/** @inheritDoc */
	@:overload public function removeEncryptionInformation(info : org.w3c.dom.Element) : Void;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$TransformsImpl') @:internal extern class XMLCipher_Factory_TransformsImpl extends com.sun.org.apache.xml.internal.security.transforms.Transforms implements com.sun.org.apache.xml.internal.security.transforms.Transforms
{
	/**
	* Construct Transforms
	*/
	@:overload public function new() : Void;
	
	/**
	*
	* @param doc
	*/
	@:overload public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	*
	* @param element
	* @throws XMLSignatureException
	* @throws InvalidTransformException
	* @throws XMLSecurityException
	* @throws TransformationException
	*/
	@:overload public function new(element : org.w3c.dom.Element) : Void;
	
	/**
	*
	* @return
	*/
	@:overload public function toElement() : org.w3c.dom.Element;
	
	/** @inheritDoc */
	@:overload public function getDSTransforms() : com.sun.org.apache.xml.internal.security.transforms.Transforms;
	
	/** @inheritDoc */
	@:overload override public function getBaseNamespace() : String;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl') @:internal extern class XMLCipher_Factory_ReferenceListImpl implements com.sun.org.apache.xml.internal.security.encryption.ReferenceList
{
	/**
	*
	* @param type
	*/
	@:overload public function new(type : Int) : Void;
	
	/** @inheritDoc */
	@:overload public function add(reference : com.sun.org.apache.xml.internal.security.encryption.Reference) : Void;
	
	/** @inheritDoc */
	@:overload public function remove(reference : com.sun.org.apache.xml.internal.security.encryption.Reference) : Void;
	
	/** @inheritDoc */
	@:overload public function size() : Int;
	
	/** @inheritDoc */
	@:overload public function isEmpty() : Bool;
	
	/** @inheritDoc */
	@:overload public function getReferences() : java.util.Iterator<Dynamic>;
	
	/** @inheritDoc */
	@:overload public function newDataReference(uri : String) : com.sun.org.apache.xml.internal.security.encryption.Reference;
	
	/** @inheritDoc */
	@:overload public function newKeyReference(uri : String) : com.sun.org.apache.xml.internal.security.encryption.Reference;
	
	
}
/**
* <code>ReferenceImpl</code> is an implementation of
* <code>Reference</code>.
*
* @see Reference
*/
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$ReferenceImpl') @:internal extern class XMLCipher_Factory_ReferenceListImpl_ReferenceImpl implements com.sun.org.apache.xml.internal.security.encryption.Reference
{
	/** @inheritDoc */
	@:overload public function getURI() : String;
	
	/** @inheritDoc */
	@:overload public function getElementRetrievalInformation() : java.util.Iterator<Dynamic>;
	
	/** @inheritDoc */
	@:overload public function setURI(_uri : String) : Void;
	
	/** @inheritDoc */
	@:overload public function removeElementRetrievalInformation(node : org.w3c.dom.Element) : Void;
	
	/** @inheritDoc */
	@:overload public function addElementRetrievalInformation(node : org.w3c.dom.Element) : Void;
	
	/**
	*
	* @return
	*/
	@:overload @:abstract public function toElement() : org.w3c.dom.Element;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$DataReference') @:internal extern class XMLCipher_Factory_ReferenceListImpl_DataReference extends XMLCipher_Factory_ReferenceListImpl_ReferenceImpl
{
	/** @inheritDoc */
	@:overload override public function toElement() : org.w3c.dom.Element;
	
	
}
@:native('com$sun$org$apache$xml$internal$security$encryption$XMLCipher$Factory$ReferenceListImpl$KeyReference') @:internal extern class XMLCipher_Factory_ReferenceListImpl_KeyReference extends XMLCipher_Factory_ReferenceListImpl_ReferenceImpl
{
	/** @inheritDoc */
	@:overload override public function toElement() : org.w3c.dom.Element;
	
	
}
