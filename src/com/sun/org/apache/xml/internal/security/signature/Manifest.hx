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
extern class Manifest extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/**
	* Consturts {@link Manifest}
	*
	* @param doc the {@link Document} in which <code>XMLsignature</code> is placed
	*/
	@:overload public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructor Manifest
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* This <code>addDocument</code> method is used to add a new resource to the
	* signed info. A {@link com.sun.org.apache.xml.internal.security.signature.Reference} is built
	* from the supplied values.
	*
	* @param BaseURI the URI of the resource where the XML instance was stored
	* @param referenceURI <code>URI</code> attribute in <code>Reference</code> for specifing where data is
	* @param transforms com.sun.org.apache.xml.internal.security.signature.Transforms object with an ordered list of transformations to be performed.
	* @param digestURI The digest algorthim URI to be used.
	* @param ReferenceId
	* @param ReferenceType
	* @throws XMLSignatureException
	*/
	@:overload public function addDocument(BaseURI : String, referenceURI : String, transforms : com.sun.org.apache.xml.internal.security.transforms.Transforms, digestURI : String, ReferenceId : String, ReferenceType : String) : Void;
	
	/**
	* The calculation of the DigestValues in the References must be after the
	* References are already added to the document and during the signing
	* process. This ensures that all neccesary data is in place.
	*
	* @throws ReferenceNotInitializedException
	* @throws XMLSignatureException
	*/
	@:overload public function generateDigestValues() : Void;
	
	/**
	* Return the nonnegative number of added references.
	*
	* @return the number of references
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Return the <it>i</it><sup>th</sup> reference.  Valid <code>i</code>
	* values are 0 to <code>{link@ getSize}-1</code>.
	*
	* @param i Index of the requested {@link Reference}
	* @return the <it>i</it><sup>th</sup> reference
	* @throws XMLSecurityException
	*/
	@:overload public function item(i : Int) : com.sun.org.apache.xml.internal.security.signature.Reference;
	
	/**
	* Sets the <code>Id</code> attribute
	*
	* @param Id the <code>Id</code> attribute in <code>ds:Manifest</code>
	*/
	@:overload public function setId(Id : String) : Void;
	
	/**
	* Returns the <code>Id</code> attribute
	*
	* @return the <code>Id</code> attribute in <code>ds:Manifest</code>
	*/
	@:overload public function getId() : String;
	
	/**
	* Used to do a <A HREF="http://www.w3.org/TR/xmldsig-core/#def-ValidationReference">reference
	* validation</A> of all enclosed references using the {@link Reference#verify} method.
	*
	* <p>This step loops through all {@link Reference}s and does verify the hash
	* values. If one or more verifications fail, the method returns
	* <code>false</code>. If <i>all</i> verifications are successful,
	* it returns <code>true</code>. The results of the individual reference
	* validations are available by using the {@link #getVerificationResult(int)} method
	*
	* @return true if all References verify, false if one or more do not verify.
	* @throws MissingResourceFailureException if a {@link Reference} does not verify (throws a {@link com.sun.org.apache.xml.internal.security.signature.ReferenceNotInitializedException} because of an uninitialized {@link XMLSignatureInput}
	* @see com.sun.org.apache.xml.internal.security.signature.Reference#verify
	* @see com.sun.org.apache.xml.internal.security.signature.SignedInfo#verify()
	* @see com.sun.org.apache.xml.internal.security.signature.MissingResourceFailureException
	* @throws XMLSecurityException
	*/
	@:overload public function verifyReferences() : Bool;
	
	/**
	* Used to do a <A HREF="http://www.w3.org/TR/xmldsig-core/#def-ValidationReference">reference
	* validation</A> of all enclosed references using the {@link Reference#verify} method.
	*
	* <p>This step loops through all {@link Reference}s and does verify the hash
	* values. If one or more verifications fail, the method returns
	* <code>false</code>. If <i>all</i> verifications are successful,
	* it returns <code>true</code>. The results of the individual reference
	* validations are available by using the {@link #getVerificationResult(int)} method
	*
	* @param followManifests
	* @return true if all References verify, false if one or more do not verify.
	* @throws MissingResourceFailureException if a {@link Reference} does not verify (throws a {@link com.sun.org.apache.xml.internal.security.signature.ReferenceNotInitializedException} because of an uninitialized {@link XMLSignatureInput}
	* @see com.sun.org.apache.xml.internal.security.signature.Reference#verify
	* @see com.sun.org.apache.xml.internal.security.signature.SignedInfo#verify(boolean)
	* @see com.sun.org.apache.xml.internal.security.signature.MissingResourceFailureException
	* @throws XMLSecurityException
	*/
	@:overload public function verifyReferences(followManifests : Bool) : Bool;
	
	/**
	* After verifying a {@link Manifest} or a {@link SignedInfo} using the
	* {@link Manifest#verifyReferences()} or {@link SignedInfo#verify()} methods,
	* the individual results can be retrieved with this method.
	*
	* @param index an index of into a {@link Manifest} or a {@link SignedInfo}
	* @return the results of reference validation at the specified index
	* @throws XMLSecurityException
	*/
	@:overload public function getVerificationResult(index : Int) : Bool;
	
	/**
	* Adds Resource Resolver for retrieving resources at specified <code>URI</code> attribute in <code>reference</code> element
	*
	* @param resolver {@link ResourceResolver} can provide the implemenatin subclass of {@link ResourceResolverSpi} for retrieving resource.
	*/
	@:overload public function addResourceResolver(resolver : com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolver) : Void;
	
	/**
	* Adds Resource Resolver for retrieving resources at specified <code>URI</code> attribute in <code>reference</code> element
	*
	* @param resolverSpi the implemenatin subclass of {@link ResourceResolverSpi} for retrieving resource.
	*/
	@:overload public function addResourceResolver(resolverSpi : com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolverSpi) : Void;
	
	/**
	* Used to pass parameters like proxy servers etc to the ResourceResolver
	* implementation.
	*
	* @param key the key
	* @param value the value
	*/
	@:overload public function setResolverProperty(key : String, value : String) : Void;
	
	/**
	* Returns the value at specified key
	*
	* @param key the key
	* @return the value
	*/
	@:overload public function getResolverProperty(key : String) : String;
	
	/**
	* Method getSignedContentItem
	*
	* @param i
	* @return The signed content of the i reference.
	*
	* @throws XMLSignatureException
	*/
	@:overload public function getSignedContentItem(i : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method getReferencedContentPriorTransformsItem
	*
	* @param i
	* @return The contents before transformation of the reference i.
	* @throws XMLSecurityException
	*/
	@:overload public function getReferencedContentBeforeTransformsItem(i : Int) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Method getReferencedContentAfterTransformsItem
	*
	* @param i
	* @return The contents after transformation of the reference i.
	* @throws XMLSecurityException
	*/
	@:overload public function getReferencedContentAfterTransformsItem(i : Int) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Method getSignedContentLength
	*
	* @return The nu,ber of references contained in this reference.
	*/
	@:overload public function getSignedContentLength() : Int;
	
	/**
	* Method getBaseLocalName
	*
	* @inheritDoc
	*/
	@:overload public function getBaseLocalName() : String;
	
	
}
