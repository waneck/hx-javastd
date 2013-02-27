package com.sun.org.apache.xml.internal.security.keys;
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
extern class KeyInfo extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/**
	* Constructor KeyInfo
	* @param doc
	*/
	@:overload public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructor KeyInfo
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Sets the <code>Id</code> attribute
	*
	* @param Id ID
	*/
	@:overload public function setId(Id : String) : Void;
	
	/**
	* Returns the <code>Id</code> attribute
	*
	* @return the <code>Id</code> attribute
	*/
	@:overload public function getId() : String;
	
	/**
	* Method addKeyName
	*
	* @param keynameString
	*/
	@:overload public function addKeyName(keynameString : String) : Void;
	
	/**
	* Method add
	*
	* @param keyname
	*/
	@:overload public function add(keyname : com.sun.org.apache.xml.internal.security.keys.content.KeyName) : Void;
	
	/**
	* Method addKeyValue
	*
	* @param pk
	*/
	@:overload public function addKeyValue(pk : java.security.PublicKey) : Void;
	
	/**
	* Method addKeyValue
	*
	* @param unknownKeyValueElement
	*/
	@:overload public function addKeyValue(unknownKeyValueElement : org.w3c.dom.Element) : Void;
	
	/**
	* Method add
	*
	* @param dsakeyvalue
	*/
	@:overload public function add(dsakeyvalue : com.sun.org.apache.xml.internal.security.keys.content.keyvalues.DSAKeyValue) : Void;
	
	/**
	* Method add
	*
	* @param rsakeyvalue
	*/
	@:overload public function add(rsakeyvalue : com.sun.org.apache.xml.internal.security.keys.content.keyvalues.RSAKeyValue) : Void;
	
	/**
	* Method add
	*
	* @param pk
	*/
	@:overload public function add(pk : java.security.PublicKey) : Void;
	
	/**
	* Method add
	*
	* @param keyvalue
	*/
	@:overload public function add(keyvalue : com.sun.org.apache.xml.internal.security.keys.content.KeyValue) : Void;
	
	/**
	* Method addMgmtData
	*
	* @param mgmtdata
	*/
	@:overload public function addMgmtData(mgmtdata : String) : Void;
	
	/**
	* Method add
	*
	* @param mgmtdata
	*/
	@:overload public function add(mgmtdata : com.sun.org.apache.xml.internal.security.keys.content.MgmtData) : Void;
	
	/**
	* Method addPGPData
	*
	* @param pgpdata
	*/
	@:overload public function add(pgpdata : com.sun.org.apache.xml.internal.security.keys.content.PGPData) : Void;
	
	/**
	* Method addRetrievalMethod
	*
	* @param URI
	* @param transforms
	* @param Type
	*/
	@:overload public function addRetrievalMethod(URI : String, transforms : com.sun.org.apache.xml.internal.security.transforms.Transforms, Type : String) : Void;
	
	/**
	* Method add
	*
	* @param retrievalmethod
	*/
	@:overload public function add(retrievalmethod : com.sun.org.apache.xml.internal.security.keys.content.RetrievalMethod) : Void;
	
	/**
	* Method add
	*
	* @param spkidata
	*/
	@:overload public function add(spkidata : com.sun.org.apache.xml.internal.security.keys.content.SPKIData) : Void;
	
	/**
	* Method addX509Data
	*
	* @param x509data
	*/
	@:overload public function add(x509data : com.sun.org.apache.xml.internal.security.keys.content.X509Data) : Void;
	
	/**
	* Method addEncryptedKey
	*
	* @param encryptedKey
	* @throws XMLEncryptionException
	*/
	@:overload public function add(encryptedKey : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey) : Void;
	
	/**
	* Method addUnknownElement
	*
	* @param element
	*/
	@:overload public function addUnknownElement(element : org.w3c.dom.Element) : Void;
	
	/**
	* Method lengthKeyName
	*
	* @return the number of the KeyName tags
	*/
	@:overload public function lengthKeyName() : Int;
	
	/**
	* Method lengthKeyValue
	*
	*@return the number of the KeyValue tags
	*/
	@:overload public function lengthKeyValue() : Int;
	
	/**
	* Method lengthMgmtData
	*
	*@return the number of the MgmtData tags
	*/
	@:overload public function lengthMgmtData() : Int;
	
	/**
	* Method lengthPGPData
	*
	*@return the number of the PGPDat. tags
	*/
	@:overload public function lengthPGPData() : Int;
	
	/**
	* Method lengthRetrievalMethod
	*
	*@return the number of the RetrievalMethod tags
	*/
	@:overload public function lengthRetrievalMethod() : Int;
	
	/**
	* Method lengthSPKIData
	*
	*@return the number of the SPKIData tags
	*/
	@:overload public function lengthSPKIData() : Int;
	
	/**
	* Method lengthX509Data
	*
	*@return the number of the X509Data tags
	*/
	@:overload public function lengthX509Data() : Int;
	
	/**
	* Method lengthUnknownElement
	* NOTE posibly buggy.
	*@return the number of the UnknownElement tags
	*/
	@:overload public function lengthUnknownElement() : Int;
	
	/**
	* Method itemKeyName
	*
	* @param i
	* @return the asked KeyName element, null if the index is too big
	* @throws XMLSecurityException
	*/
	@:overload public function itemKeyName(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.KeyName;
	
	/**
	* Method itemKeyValue
	*
	* @param i
	* @return the asked KeyValue element, null if the index is too big
	* @throws XMLSecurityException
	*/
	@:overload public function itemKeyValue(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.KeyValue;
	
	/**
	* Method itemMgmtData
	*
	* @param i
	*@return the asked MgmtData element, null if the index is too big
	* @throws XMLSecurityException
	*/
	@:overload public function itemMgmtData(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.MgmtData;
	
	/**
	* Method itemPGPData
	*
	* @param i
	*@return the asked PGPData element, null if the index is too big
	* @throws XMLSecurityException
	*/
	@:overload public function itemPGPData(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.PGPData;
	
	/**
	* Method itemRetrievalMethod
	*
	* @param i
	*@return the asked RetrievalMethod element, null if the index is too big
	* @throws XMLSecurityException
	*/
	@:overload public function itemRetrievalMethod(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.RetrievalMethod;
	
	/**
	* Method itemSPKIData
	*
	* @param i
	*@return the asked SPKIData element, null if the index is too big
	* @throws XMLSecurityException
	*/
	@:overload public function itemSPKIData(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.SPKIData;
	
	/**
	* Method itemX509Data
	*@return the asked X509Data element, null if the index is too big
	* @param i
	*
	* @throws XMLSecurityException
	*/
	@:overload public function itemX509Data(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.X509Data;
	
	/**
	* Method itemEncryptedKey
	*
	* @param i
	* @return the asked EncryptedKey element, null if the index is too big
	* @throws XMLSecurityException
	*/
	@:overload public function itemEncryptedKey(i : Int) : com.sun.org.apache.xml.internal.security.encryption.EncryptedKey;
	
	/**
	* Method itemUnknownElement
	*
	* @param i index
	* @return the element number of the unknown elemens
	*/
	@:overload public function itemUnknownElement(i : Int) : org.w3c.dom.Element;
	
	/**
	* Method isEmpty
	*
	* @return true if the element has no descedants.
	*/
	@:overload public function isEmpty() : Bool;
	
	/**
	* Method containsKeyName
	*
	* @return If the KeyInfo contains a KeyName node
	*/
	@:overload public function containsKeyName() : Bool;
	
	/**
	* Method containsKeyValue
	*
	* @return If the KeyInfo contains a KeyValue node
	*/
	@:overload public function containsKeyValue() : Bool;
	
	/**
	* Method containsMgmtData
	*
	* @return If the KeyInfo contains a MgmtData node
	*/
	@:overload public function containsMgmtData() : Bool;
	
	/**
	* Method containsPGPData
	*
	* @return If the KeyInfo contains a PGPData node
	*/
	@:overload public function containsPGPData() : Bool;
	
	/**
	* Method containsRetrievalMethod
	*
	* @return If the KeyInfo contains a RetrievalMethod node
	*/
	@:overload public function containsRetrievalMethod() : Bool;
	
	/**
	* Method containsSPKIData
	*
	* @return If the KeyInfo contains a SPKIData node
	*/
	@:overload public function containsSPKIData() : Bool;
	
	/**
	* Method containsUnknownElement
	*
	* @return If the KeyInfo contains a UnknownElement node
	*/
	@:overload public function containsUnknownElement() : Bool;
	
	/**
	* Method containsX509Data
	*
	* @return If the KeyInfo contains a X509Data node
	*/
	@:overload public function containsX509Data() : Bool;
	
	/**
	* This method returns the public key.
	*
	* @return If the KeyInfo contains a PublicKey node
	* @throws KeyResolverException
	*/
	@:overload public function getPublicKey() : java.security.PublicKey;
	
	/**
	* Method getX509Certificate
	*
	* @return The certificate contined in this KeyInfo
	* @throws KeyResolverException
	*/
	@:overload public function getX509Certificate() : java.security.cert.X509Certificate;
	
	/**
	* This method returns a secret (symmetric) key. This is for XML Encryption.
	* @return the secret key contained in this KeyInfo
	* @throws KeyResolverException
	*/
	@:overload public function getSecretKey() : javax.crypto.SecretKey;
	
	/**
	* This method is used to add a custom {@link KeyResolverSpi} to a KeyInfo
	* object.
	*
	* @param realKeyResolver
	*/
	@:overload public function registerInternalKeyResolver(realKeyResolver : com.sun.org.apache.xml.internal.security.keys.keyresolver.KeyResolverSpi) : Void;
	
	/**
	* Method addStorageResolver
	*
	* @param storageResolver
	*/
	@:overload public function addStorageResolver(storageResolver : com.sun.org.apache.xml.internal.security.keys.storage.StorageResolver) : Void;
	
	/** init the keyinfo (Still needed?)*/
	@:overload public static function init() : Void;
	
	/** @inheritDoc */
	@:overload override public function getBaseLocalName() : String;
	
	
}
