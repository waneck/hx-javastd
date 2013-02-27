package com.sun.org.apache.xml.internal.security.signature;
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
extern class XMLSignature extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/** MAC - Required HMAC-SHA1 */
	public static var ALGO_ID_MAC_HMAC_SHA1(default, null) : String;
	
	/** Signature - Required DSAwithSHA1 (DSS) */
	public static var ALGO_ID_SIGNATURE_DSA(default, null) : String;
	
	/** Signature - Recommended RSAwithSHA1 */
	public static var ALGO_ID_SIGNATURE_RSA(default, null) : String;
	
	/** Signature - Recommended RSAwithSHA1 */
	public static var ALGO_ID_SIGNATURE_RSA_SHA1(default, null) : String;
	
	/** Signature - NOT Recommended RSAwithMD5 */
	public static var ALGO_ID_SIGNATURE_NOT_RECOMMENDED_RSA_MD5(default, null) : String;
	
	/** Signature - Optional RSAwithRIPEMD160 */
	public static var ALGO_ID_SIGNATURE_RSA_RIPEMD160(default, null) : String;
	
	/** Signature - Optional RSAwithSHA256 */
	public static var ALGO_ID_SIGNATURE_RSA_SHA256(default, null) : String;
	
	/** Signature - Optional RSAwithSHA384 */
	public static var ALGO_ID_SIGNATURE_RSA_SHA384(default, null) : String;
	
	/** Signature - Optional RSAwithSHA512 */
	public static var ALGO_ID_SIGNATURE_RSA_SHA512(default, null) : String;
	
	/** HMAC - NOT Recommended HMAC-MD5 */
	public static var ALGO_ID_MAC_HMAC_NOT_RECOMMENDED_MD5(default, null) : String;
	
	/** HMAC - Optional HMAC-RIPEMD160 */
	public static var ALGO_ID_MAC_HMAC_RIPEMD160(default, null) : String;
	
	/** HMAC - Optional HMAC-SHA256 */
	public static var ALGO_ID_MAC_HMAC_SHA256(default, null) : String;
	
	/** HMAC - Optional HMAC-SHA284 */
	public static var ALGO_ID_MAC_HMAC_SHA384(default, null) : String;
	
	/** HMAC - Optional HMAC-SHA512 */
	public static var ALGO_ID_MAC_HMAC_SHA512(default, null) : String;
	
	/**Signature - Optional ECDSAwithSHA1 */
	public static var ALGO_ID_SIGNATURE_ECDSA_SHA1(default, null) : String;
	
	/**
	* This creates a new <CODE>ds:Signature</CODE> Element and adds an empty
	* <CODE>ds:SignedInfo</CODE>.
	* The <code>ds:SignedInfo</code> is initialized with the specified Signature
	* algorithm and Canonicalizer.ALGO_ID_C14N_OMIT_COMMENTS which is REQUIRED
	* by the spec. This method's main use is for creating a new signature.
	*
	* @param doc Document in which the signature will be appended after creation.
	* @param BaseURI URI to be used as context for all relative URIs.
	* @param SignatureMethodURI signature algorithm to use.
	* @throws XMLSecurityException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, BaseURI : String, SignatureMethodURI : String) : Void;
	
	/**
	* Constructor XMLSignature
	*
	* @param doc
	* @param BaseURI
	* @param SignatureMethodURI the Signature method to be used.
	* @param HMACOutputLength
	* @throws XMLSecurityException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, BaseURI : String, SignatureMethodURI : String, HMACOutputLength : Int) : Void;
	
	/**
	* Constructor XMLSignature
	*
	* @param doc
	* @param BaseURI
	* @param SignatureMethodURI the Signature method to be used.
	* @param CanonicalizationMethodURI the canonicalization algorithm to be used to c14nize the SignedInfo element.
	* @throws XMLSecurityException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, BaseURI : String, SignatureMethodURI : String, CanonicalizationMethodURI : String) : Void;
	
	/**
	* Constructor XMLSignature
	*
	* @param doc
	* @param BaseURI
	* @param SignatureMethodURI
	* @param HMACOutputLength
	* @param CanonicalizationMethodURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, BaseURI : String, SignatureMethodURI : String, HMACOutputLength : Int, CanonicalizationMethodURI : String) : Void;
	
	/**
	*  Creates a XMLSignature in a Document
	* @param doc
	* @param BaseURI
	* @param SignatureMethodElem
	* @param CanonicalizationMethodElem
	* @throws XMLSecurityException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, BaseURI : String, SignatureMethodElem : org.w3c.dom.Element, CanonicalizationMethodElem : org.w3c.dom.Element) : Void;
	
	/**
	* This will parse the element and construct the Java Objects.
	* That will allow a user to validate the signature.
	*
	* @param element ds:Signature element that contains the whole signature
	* @param BaseURI URI to be prepended to all relative URIs
	* @throws XMLSecurityException
	* @throws XMLSignatureException if the signature is badly formatted
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Sets the <code>Id</code> attribute
	*
	* @param Id Id value to be used by the id attribute on the Signature Element
	*/
	@:overload public function setId(Id : String) : Void;
	
	/**
	* Returns the <code>Id</code> attribute
	*
	* @return the <code>Id</code> attribute
	*/
	@:overload public function getId() : String;
	
	/**
	* Returns the completely parsed <code>SignedInfo</code> object.
	*
	* @return the completely parsed <code>SignedInfo</code> object.
	*/
	@:overload public function getSignedInfo() : com.sun.org.apache.xml.internal.security.signature.SignedInfo;
	
	/**
	* Returns the octet value of the SignatureValue element.
	* Throws an XMLSignatureException if it has no or wrong content.
	*
	* @return the value of the SignatureValue element.
	* @throws XMLSignatureException If there is no content
	*/
	@:overload public function getSignatureValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the KeyInfo child. If we are in signing mode and the KeyInfo
	* does not exist yet, it is created on demand and added to the Signature.
	* <br>
	* This allows to add arbitrary content to the KeyInfo during signing.
	*
	* @return the KeyInfo object
	*/
	@:overload public function getKeyInfo() : com.sun.org.apache.xml.internal.security.keys.KeyInfo;
	
	/**
	* Appends an Object (not a <code>java.lang.Object</code> but an Object
	* element) to the Signature. Please note that this is only possible
	* when signing.
	*
	* @param object ds:Object to be appended.
	* @throws XMLSignatureException When this object is used to verify.
	*/
	@:overload public function appendObject(object : com.sun.org.apache.xml.internal.security.signature.ObjectContainer) : Void;
	
	/**
	* Returns the <code>i<code>th <code>ds:Object</code> child of the signature
	* or null if no such <code>ds:Object</code> element exists.
	*
	* @param i
	* @return the <code>i<code>th <code>ds:Object</code> child of the signature or null if no such <code>ds:Object</code> element exists.
	*/
	@:overload public function getObjectItem(i : Int) : com.sun.org.apache.xml.internal.security.signature.ObjectContainer;
	
	/**
	* Returns the number of all <code>ds:Object</code> elements.
	*
	* @return the number of all <code>ds:Object</code> elements.
	*/
	@:overload public function getObjectLength() : Int;
	
	/**
	* Digests all References in the SignedInfo, calculates the signature value and
	* sets it in the SignatureValue Element.
	*
	* @param signingKey the {@link java.security.PrivateKey} or {@link javax.crypto.SecretKey} that is used to sign.
	* @throws XMLSignatureException
	*/
	@:overload public function sign(signingKey : java.security.Key) : Void;
	
	/**
	* Adds a {@link ResourceResolver} to enable the retrieval of resources.
	*
	* @param resolver
	*/
	@:overload public function addResourceResolver(resolver : com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolver) : Void;
	
	/**
	* Adds a {@link ResourceResolverSpi} to enable the retrieval of resources.
	*
	* @param resolver
	*/
	@:overload public function addResourceResolver(resolver : com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolverSpi) : Void;
	
	/**
	* Extracts the public key from the certificate and verifies if the signature
	* is valid by re-digesting all References, comparing those against the
	* stored DigestValues and then checking to see if the Signatures match on
	* the SignedInfo.
	*
	* @param cert Certificate that contains the public key part of the keypair that was used to sign.
	* @return true if the signature is valid, false otherwise
	* @throws XMLSignatureException
	*/
	@:overload public function checkSignatureValue(cert : java.security.cert.X509Certificate) : Bool;
	
	/**
	* Verifies if the signature is valid by redigesting all References,
	* comparing those against the stored DigestValues and then checking to see
	* if the Signatures match on the SignedInfo.
	*
	* @param pk {@link java.security.PublicKey} part of the keypair or {@link javax.crypto.SecretKey} that was used to sign
	* @return true if the signature is valid, false otherwise
	* @throws XMLSignatureException
	*/
	@:overload public function checkSignatureValue(pk : java.security.Key) : Bool;
	
	/**
	* Add a Reference with full parameters to this Signature
	*
	* @param referenceURI URI of the resource to be signed. Can be null in which
	* case the dereferencing is application specific. Can be "" in which it's
	* the parent node (or parent document?). There can only be one "" in each
	* signature.
	* @param trans Optional list of transformations to be done before digesting
	* @param digestURI Mandatory URI of the digesting algorithm to use.
	* @param ReferenceId Optional id attribute for this Reference
	* @param ReferenceType Optional mimetype for the URI
	* @throws XMLSignatureException
	*/
	@:overload public function addDocument(referenceURI : String, trans : com.sun.org.apache.xml.internal.security.transforms.Transforms, digestURI : String, ReferenceId : String, ReferenceType : String) : Void;
	
	/**
	* This method is a proxy method for the {@link Manifest#addDocument} method.
	*
	* @param referenceURI URI according to the XML Signature specification.
	* @param trans List of transformations to be applied.
	* @param digestURI URI of the digest algorithm to be used.
	* @see Manifest#addDocument
	* @throws XMLSignatureException
	*/
	@:overload public function addDocument(referenceURI : String, trans : com.sun.org.apache.xml.internal.security.transforms.Transforms, digestURI : String) : Void;
	
	/**
	* Adds a Reference with just the URI and the transforms. This used the
	* SHA1 algorithm as a default digest algorithm.
	*
	* @param referenceURI URI according to the XML Signature specification.
	* @param trans List of transformations to be applied.
	* @throws XMLSignatureException
	*/
	@:overload public function addDocument(referenceURI : String, trans : com.sun.org.apache.xml.internal.security.transforms.Transforms) : Void;
	
	/**
	* Add a Reference with just this URI. It uses SHA1 by default as the digest
	* algorithm
	*
	* @param referenceURI URI according to the XML Signature specification.
	* @throws XMLSignatureException
	*/
	@:overload public function addDocument(referenceURI : String) : Void;
	
	/**
	* Add an X509 Certificate to the KeyInfo. This will include the whole cert
	* inside X509Data/X509Certificate tags.
	*
	* @param cert Certificate to be included. This should be the certificate of the key that was used to sign.
	* @throws XMLSecurityException
	*/
	@:overload public function addKeyInfo(cert : java.security.cert.X509Certificate) : Void;
	
	/**
	* Add this public key to the KeyInfo. This will include the complete key in
	* the KeyInfo structure.
	*
	* @param pk
	*/
	@:overload public function addKeyInfo(pk : java.security.PublicKey) : Void;
	
	/**
	* Proxy method for {@link SignedInfo#createSecretKey(byte[])}. If you want to
	* create a MAC, this method helps you to obtain the {@link javax.crypto.SecretKey}
	* from octets.
	*
	* @param secretKeyBytes
	* @return the secret key created.
	* @see SignedInfo#createSecretKey(byte[])
	*/
	@:overload public function createSecretKey(secretKeyBytes : java.NativeArray<java.StdTypes.Int8>) : javax.crypto.SecretKey;
	
	/**
	* Signal wether Manifest should be automatically validated.
	* Checking the digests in References in a Signature are mandatory, but for
	* References inside a Manifest it is application specific. This boolean is
	* to indicate that the References inside Manifests should be validated.
	*
	* @param followManifests
	* @see <a href="http://www.w3.org/TR/xmldsig-core/#sec-CoreValidation">Core validation section in the XML Signature Rec.</a>
	*/
	@:overload public function setFollowNestedManifests(followManifests : Bool) : Void;
	
	/**
	* Get the local name of this element
	*
	* @return Constant._TAG_SIGNATURE
	*/
	@:overload override public function getBaseLocalName() : String;
	
	
}
