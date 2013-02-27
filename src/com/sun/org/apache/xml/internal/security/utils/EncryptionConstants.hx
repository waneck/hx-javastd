package com.sun.org.apache.xml.internal.security.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
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
extern class EncryptionConstants
{
	/** Tag of Attr Algorithm **/
	public static var _ATT_ALGORITHM(default, null) : String;
	
	/** Tag of Attr Id**/
	public static var _ATT_ID(default, null) : String;
	
	/** Tag of Attr Target **/
	public static var _ATT_TARGET(default, null) : String;
	
	/** Tag of Attr Type **/
	public static var _ATT_TYPE(default, null) : String;
	
	/** Tag of Attr URI **/
	public static var _ATT_URI(default, null) : String;
	
	/** Tag of Attr encoding **/
	public static var _ATT_ENCODING(default, null) : String;
	
	/** Tag of Attr recipient **/
	public static var _ATT_RECIPIENT(default, null) : String;
	
	/** Tag of Attr mimetype **/
	public static var _ATT_MIMETYPE(default, null) : String;
	
	/** Tag of Element CarriedKeyName **/
	public static var _TAG_CARRIEDKEYNAME(default, null) : String;
	
	/** Tag of Element CipherData **/
	public static var _TAG_CIPHERDATA(default, null) : String;
	
	/** Tag of Element CipherReference **/
	public static var _TAG_CIPHERREFERENCE(default, null) : String;
	
	/** Tag of Element CipherValue **/
	public static var _TAG_CIPHERVALUE(default, null) : String;
	
	/** Tag of Element DataReference **/
	public static var _TAG_DATAREFERENCE(default, null) : String;
	
	/** Tag of Element EncryptedData **/
	public static var _TAG_ENCRYPTEDDATA(default, null) : String;
	
	/** Tag of Element EncryptedKey **/
	public static var _TAG_ENCRYPTEDKEY(default, null) : String;
	
	/** Tag of Element EncryptionMethod **/
	public static var _TAG_ENCRYPTIONMETHOD(default, null) : String;
	
	/** Tag of Element EncryptionProperties **/
	public static var _TAG_ENCRYPTIONPROPERTIES(default, null) : String;
	
	/** Tag of Element EncryptionProperty **/
	public static var _TAG_ENCRYPTIONPROPERTY(default, null) : String;
	
	/** Tag of Element KeyReference **/
	public static var _TAG_KEYREFERENCE(default, null) : String;
	
	/** Tag of Element KeySize **/
	public static var _TAG_KEYSIZE(default, null) : String;
	
	/** Tag of Element OAEPparams **/
	public static var _TAG_OAEPPARAMS(default, null) : String;
	
	/** Tag of Element ReferenceList **/
	public static var _TAG_REFERENCELIST(default, null) : String;
	
	/** Tag of Element Transforms **/
	public static var _TAG_TRANSFORMS(default, null) : String;
	
	/** Tag of Element AgreementMethod **/
	public static var _TAG_AGREEMENTMETHOD(default, null) : String;
	
	/** Tag of Element KA-Nonce **/
	public static var _TAG_KA_NONCE(default, null) : String;
	
	/** Tag of Element OriginatorKeyInfo **/
	public static var _TAG_ORIGINATORKEYINFO(default, null) : String;
	
	/** Tag of Element RecipientKeyInfo **/
	public static var _TAG_RECIPIENTKEYINFO(default, null) : String;
	
	/** Field ENCRYPTIONSPECIFICATION_URL */
	public static var ENCRYPTIONSPECIFICATION_URL(default, null) : String;
	
	/** The namespace of the <A HREF="http://www.w3.org/TR/2001/WD-xmlenc-core-20010626/">XML Encryption Syntax and Processing</A> */
	public static var EncryptionSpecNS(default, null) : String;
	
	/** URI for content*/
	public static var TYPE_CONTENT(default, null) : String;
	
	/** URI for element*/
	public static var TYPE_ELEMENT(default, null) : String;
	
	/** URI for mediatype*/
	public static var TYPE_MEDIATYPE(default, null) : String;
	
	/** Block Encryption - REQUIRED TRIPLEDES */
	public static var ALGO_ID_BLOCKCIPHER_TRIPLEDES(default, null) : String;
	
	/** Block Encryption - REQUIRED AES-128 */
	public static var ALGO_ID_BLOCKCIPHER_AES128(default, null) : String;
	
	/** Block Encryption - REQUIRED AES-256 */
	public static var ALGO_ID_BLOCKCIPHER_AES256(default, null) : String;
	
	/** Block Encryption - OPTIONAL AES-192 */
	public static var ALGO_ID_BLOCKCIPHER_AES192(default, null) : String;
	
	/** Key Transport - REQUIRED RSA-v1.5*/
	public static var ALGO_ID_KEYTRANSPORT_RSA15(default, null) : String;
	
	/** Key Transport - REQUIRED RSA-OAEP */
	public static var ALGO_ID_KEYTRANSPORT_RSAOAEP(default, null) : String;
	
	/** Key Agreement - OPTIONAL Diffie-Hellman */
	public static var ALGO_ID_KEYAGREEMENT_DH(default, null) : String;
	
	/** Symmetric Key Wrap - REQUIRED TRIPLEDES KeyWrap */
	public static var ALGO_ID_KEYWRAP_TRIPLEDES(default, null) : String;
	
	/** Symmetric Key Wrap - REQUIRED AES-128 KeyWrap */
	public static var ALGO_ID_KEYWRAP_AES128(default, null) : String;
	
	/** Symmetric Key Wrap - REQUIRED AES-256 KeyWrap */
	public static var ALGO_ID_KEYWRAP_AES256(default, null) : String;
	
	/** Symmetric Key Wrap - OPTIONAL AES-192 KeyWrap */
	public static var ALGO_ID_KEYWRAP_AES192(default, null) : String;
	
	/** Message Authentication - RECOMMENDED XML Digital Signature */
	public static var ALGO_ID_AUTHENTICATION_XMLSIGNATURE(default, null) : String;
	
	/** Canonicalization - OPTIONAL Canonical XML with Comments */
	public static var ALGO_ID_C14N_WITHCOMMENTS(default, null) : String;
	
	/** Canonicalization - OPTIONAL Canonical XML (omits comments) */
	public static var ALGO_ID_C14N_OMITCOMMENTS(default, null) : String;
	
	/** Encoding - REQUIRED base64 */
	public static var ALGO_ID_ENCODING_BASE64(default, null) : String;
	
	/**
	* Method setEncryptionSpecNSprefix
	*
	* @param newPrefix
	* @throws XMLSecurityException
	*/
	@:overload public static function setEncryptionSpecNSprefix(newPrefix : String) : Void;
	
	/**
	* Method getEncryptionSpecNSprefix
	*
	* @return the prefix for this node.
	*/
	@:overload public static function getEncryptionSpecNSprefix() : String;
	
	
}
